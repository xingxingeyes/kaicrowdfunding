package com.kai.crowd.mvc.handler;

import com.github.pagehelper.PageInfo;
import com.kai.crowd.entity.Role;
import com.kai.crowd.service.api.RoleService;
import com.kai.crowd.util.ResultEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@ResponseBody
@RestController
public class RoleHandler {

    @Autowired
    private RoleService roleService;

   //@ResponseBody
    @RequestMapping("/role/remove/by/role/id/array.json")
    public ResultEntity<String> removeByRoleIdArray(@RequestBody List<Integer> roleIdList) {
        roleService.removeRole(roleIdList);
        return ResultEntity.successWithoutData();
    }

   //@ResponseBody
    @RequestMapping("/role/update.json")
    public ResultEntity<String> updateRole(Role role) {
        roleService.updateRole(role);
        return ResultEntity.successWithoutData();
     }

   //@ResponseBody
    @RequestMapping("/role/save.json")
    public ResultEntity<String> savaRole(Role role){
        roleService.saveRole(role);

        return ResultEntity.successWithoutData();
    }

   //@ResponseBody
    @PreAuthorize("hasRole('部长')")
    @RequestMapping("/role/get/page/info.json")
    public ResultEntity<PageInfo<Role>> getPageInfo(
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
            @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
            @RequestParam(value = "keyword", defaultValue = "") String keyword
    ) {
        // 调用Service方法获取分页数据
        PageInfo<Role>  pageInfo = roleService.getPageInfo(pageNum, pageSize, keyword);
        // 封装到ResultEntity对象中返回，（如果上面的操作抛出异常，交给异常映射机制处理)
        return ResultEntity.successWithData(pageInfo);

    }

}
