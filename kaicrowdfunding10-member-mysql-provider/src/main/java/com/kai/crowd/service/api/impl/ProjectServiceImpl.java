package com.kai.crowd.service.api.impl;

import com.kai.crowd.entity.po.ProjectPO;
import com.kai.crowd.entity.vo.ProjectVO;
import com.kai.crowd.mapper.ProjectItemPicPOMapper;
import com.kai.crowd.mapper.ProjectPOMapper;
import com.kai.crowd.service.api.ProjectService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(readOnly = true)
@Service
public class ProjectServiceImpl implements ProjectService {

    @Autowired
    private ProjectPOMapper projectPOMapper;

    @Autowired
    private ProjectItemPicPOMapper projectItemPicPOMapper;
    @Transactional(readOnly = false, propagation = Propagation.REQUIRES_NEW, noRollbackFor = Exception.class)
    @Override
    public void saveProject(ProjectVO projectVO, Integer memberId) {
        // 一、保存projectPO对象
        // 1.创建空ProjectPO对象
        ProjectPO projectPO = new ProjectPO();
        // 2.把projectVO中的属性复制到projectPO中
        BeanUtils.copyProperties(projectVO, projectPO);
        // 3.保存projectPO
        // 为了能够获取到projectPO保存后的自增主键，需要到ProjectPOMapper.xml文件中进行相关的设置
        // <insert id="insertSelective" useGeneratedKeys="true" keyProperty="id"
        projectPOMapper.insertSelective(projectPO);
        // 4.从projectPO对象这里获取自增主键
        Integer projectId = projectPO.getId();
        // 二、保存项目、分类关联关系信息
        // 1.从ProjectVO对象中获取typeIdList
        List<Integer> typeIdList = projectVO.getTypeIdList();
        projectPOMapper.insertTypeRelationship(typeIdList, projectId);
        // 三、保存项目、标签的关联关系信息
        List<Integer> tagIdList = projectVO.getTagIdList();
        projectPOMapper.insertTagRelationship(tagIdList, projectId);
        // 四、保存项目中详情图片路径信息
        List<String> detailPicturePathList = projectVO.getDetailPicturePathList();
        projectItemPicPOMapper.insertPathList(projectId, detailPicturePathList);
        // 五、保存项目发起人信息
        // 六、保存项目回报信息
        // 七、保存项目确认信息

    }
}
