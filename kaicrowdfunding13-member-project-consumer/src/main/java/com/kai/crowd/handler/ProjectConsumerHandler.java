package com.kai.crowd.handler;

import com.kai.crowd.api.MySQLRemoteService;
import com.kai.crowd.config.OSSProperties;
import com.kai.crowd.constant.CrowdConstant;
import com.kai.crowd.entity.vo.*;
import com.kai.crowd.util.CrowdUtil;
import com.kai.crowd.util.ResultEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ProjectConsumerHandler {

    @Autowired
    private OSSProperties ossProperties;

    @Autowired
    public MySQLRemoteService mySQLRemoteService;

    @RequestMapping("/get/project/detail/{projectId}")
    public String getProjectDetail(@PathVariable("projectId") Integer projectId, Model model) {
        ResultEntity<DetailProjectVO> resultEntity =mySQLRemoteService.getDetailProjectVORemote(projectId);
        if(ResultEntity.SUCCESS.equals(resultEntity.getResult())) {
            DetailProjectVO detailProjectVO = resultEntity.getData();
            model.addAttribute("detailProjectVO", detailProjectVO);
        }
        return "project-show-detail";
    }

    @RequestMapping("/create/confirm")
    public String savaConfirm(ModelMap modelMap, HttpSession session, MemberConfirmInfoVO memberConfirmInfoVO) {
        // 1.从session域读取之前临时存储的ProjectVO对象
        ProjectVO projectVO = (ProjectVO)session.getAttribute(CrowdConstant.ATTR_NAME_TEMPLE_PROJECT);
        // 2.判断projectVO是否为null
        if (projectVO == null) {
            throw new RuntimeException(CrowdConstant.MESSAGE_TEMPLE_PROJECT_MESSING);
        }
        // 3.将确认信息数据设置到projectVO对象中
        projectVO.setMemberConfirmInfoVO(memberConfirmInfoVO);
        // 4.从session域读取当前登录的用户
        MemberLoginVO memberLoginVO = (MemberLoginVO) session.getAttribute(CrowdConstant.ATTR_NAME_LOGIN_MEMBER);
        Integer memberId = memberLoginVO.getId();
        // 5.调用远程方法保存projectVO到MySQL数据库
        ResultEntity<String> saveResultEntity = mySQLRemoteService.saveProjectVORemote(projectVO, memberId);
        // 6.判断远程的保存操作是否成功
        String result = saveResultEntity.getResult();
        if (saveResultEntity.FAILED.equals(result)) {
            modelMap.addAttribute(CrowdConstant.ATTR_NAME_MESSAGE, saveResultEntity.getMessage());
            return "project-confirm";
        }
        // 7.将临时的ProjectVO对象从session域移除
        session.removeAttribute(CrowdConstant.ATTR_NAME_TEMPLE_PROJECT);

        // 8.如果远程保存成功跳转到最终完成页面
        return "redirect:http://www.crowd.com/project/create/success";
    }

    @ResponseBody
    @RequestMapping("/create/save/return.json")
    public ResultEntity<String> saveReturn(ReturnVO returnVO, HttpSession session) {
        try {
            // 1.从session域中读取之前缓存的ProjectVO对象
            ProjectVO projectVO = (ProjectVO) session.getAttribute(CrowdConstant.ATTR_NAME_TEMPLE_PROJECT);
            // 2.判断projectVO是否为null
            if (projectVO == null) {
                return ResultEntity.failed(CrowdConstant.MESSAGE_TEMPLE_PROJECT_MESSING);
            }
            // 3.从projectVO对象中获取存储回报信息的集合
            List<ReturnVO> returnVOList = projectVO.getReturnVOList();
            // 4.判断returnVOList集合是否有效
            if (returnVOList == null || returnVOList.size() == 0) {
                // 5.创建集合对象returnVOList进行初始化
                returnVOList = new ArrayList<>();
                // 6.为了让以后能够正常使用这个集合，设置到projectVO对象中
                projectVO.setReturnVOList(returnVOList);
            }
            // 7.将手机了表单数据的returnVO对象存入集合
            returnVOList.add(returnVO);
            // 8.把数据有变化的ProjectVO对象重新存入session域，以确保新的数据最终能够存入Redis
            session.setAttribute(CrowdConstant.ATTR_NAME_TEMPLE_PROJECT, projectVO);
            // 9.所有操作成功完成返回成功
            return ResultEntity.successWithoutData();
        } catch (Exception e) {
            e.printStackTrace();
            return ResultEntity.failed(e.getMessage());
        }
    }


    @ResponseBody
    @RequestMapping("/create/upload/return/picture.json")
    public ResultEntity<String> uploadReturnPicture(
            @RequestParam("returnPicture") MultipartFile returnPicture // 接收用户上传的文件
    ) throws IOException {
        // 1.执行文件上传
        ResultEntity<String> uploadReturnPictureResultEntity = CrowdUtil.uploadFileToOss(ossProperties.getEndPoint(), ossProperties.getAccessKeyId(), ossProperties.getAccessKeySecret(),
                returnPicture.getInputStream(), ossProperties.getBucketName(), ossProperties.getBucketDomain(), returnPicture.getOriginalFilename());
        // 2.返回上传的结果
        return uploadReturnPictureResultEntity;
    }


    @RequestMapping("/create/project/information")
    public String saveProjectBasicInfo(
            ProjectVO projectVO, // 接收除了上传图片之外的其他普通数据
            MultipartFile headerPicture, // 接收上传的头图
            List<MultipartFile> detailPictureList, // 接收上传的详情图片
            HttpSession session, // 用来将收集了一部分数据的ProjectVO对象存入session域
            ModelMap modelMap // 用来在当前操作失败后返回上一个表单页面是携带提示消息
    ) throws IOException {
        // 一.完成头图上传
        // 1.获取当前headerPictureEmpty对象是否为空
        boolean headerPictureEmpty = headerPicture.isEmpty();

        if (headerPictureEmpty) {
            // 2.如果上传失败则返回到表单页面并显示错误消息
            modelMap.addAttribute(CrowdConstant.ATTR_NAME_MESSAGE, CrowdConstant.MESSAGE_HEADER_PIC_EMPTY);
            return "project-launch";
        }
        // 3.如果用户确实上传了有内容的文件，则执行上传
        ResultEntity<String> uploadHeaderPicResultEntity = CrowdUtil.uploadFileToOss(ossProperties.getEndPoint(), ossProperties.getAccessKeyId(), ossProperties.getAccessKeySecret(),
                headerPicture.getInputStream(), ossProperties.getBucketName(), ossProperties.getBucketDomain(), headerPicture.getOriginalFilename());
        String result = uploadHeaderPicResultEntity.getResult();
        // 4.判断头图是否上传成功
        if (ResultEntity.SUCCESS.equals(result)) {
            // 5.从返回的数据中获取图片访问的路径
            String headerPicturePath = uploadHeaderPicResultEntity.getData();
            // 6.存入ProjectVOA对象中
        } else {
            // 7.如果上传失败则返回到表单页面并显示错误消息
            modelMap.addAttribute(CrowdConstant.ATTR_NAME_MESSAGE, CrowdConstant.MESSAGE_HEADER_PIC_UPLOAD_FAILED);
            return "project-launch";
        }


        // 二.上传详情图片
        // 1.创建一个用来存放详情图片路径的集合
        ArrayList<String> detailPicturePathList = new ArrayList<>();
        // 2.检查detailPictureList是否有效
        if (detailPictureList == null || detailPictureList.size() == 0) {
            modelMap.addAttribute(CrowdConstant.ATTR_NAME_MESSAGE, CrowdConstant.MESSAGE_DETAIL_PIC_EMPTY);
            return "project-launch";
        }
        // 3.遍历detailPictureList集合
        for (MultipartFile multipartFile : detailPictureList) {
            // 4.当前detailPicture是否为空
            if (multipartFile.isEmpty()) {
                // 5.检测到详情图片中单个图片为空，回显错误消息
                modelMap.addAttribute(CrowdConstant.ATTR_NAME_MESSAGE, CrowdConstant.MESSAGE_DETAIL_PIC_EMPTY);
                return "project-launch";
            }
            // 6.执行上传
            ResultEntity<String> detailUploadResultEntity = CrowdUtil.uploadFileToOss(ossProperties.getEndPoint(), ossProperties.getAccessKeyId(), ossProperties.getAccessKeySecret(),
                    headerPicture.getInputStream(), ossProperties.getBucketName(), ossProperties.getBucketDomain(), headerPicture.getOriginalFilename());
            // 7.检查上传结果
            String detailUploadResult = detailUploadResultEntity.getResult();
            if (ResultEntity.SUCCESS.equals(detailUploadResult)) {
                String detailPicturePath = detailUploadResultEntity.getData();
                // 8.收集刚刚上传图片的访问路径
                detailPicturePathList.add(detailPicturePath);
            } else {
                // 9.如果上传失败则返回到表单页面显示错误消息
                modelMap.addAttribute(CrowdConstant.ATTR_NAME_MESSAGE, CrowdConstant.MESSAGE_DETAIL_PIC_UPLOAD_EMPTY);
                return "project-launch";
            }
        }
        // 10.将存放了详情图片访问路径的集合存入ProjectVO中
        projectVO.setDetailPicturePathList(detailPicturePathList);
        // 三、后续操作
        // 1.将ProjectVO对象存入session域
        session.setAttribute(CrowdConstant.ATTR_NAME_TEMPLE_PROJECT, projectVO);
        // 2.以完整的访问路径前往下一个收集回报信息的 页面
        return "redirect:http://www.crowd.com/project/return/info/page";
    }

}
