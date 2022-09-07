package com.kai.crowd.mvc.handler;

import com.kai.crowd.entity.Auth;
import com.kai.crowd.entity.Role;
import com.kai.crowd.service.api.AdminService;
import com.kai.crowd.service.api.AuthService;
import com.kai.crowd.service.api.RoleService;
import com.kai.crowd.util.ResultEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
public class AssignHandler {
    @Autowired
    private AdminService adminService;
    @Autowired
    private RoleService roleService;

    @Autowired
    private AuthService authService;

    @ResponseBody
    @RequestMapping("/assign/do/role/assign/auth.json")
    public ResultEntity<String> saveRoleAuthRelationship(@RequestBody Map<String, List<Integer>> map) {
        authService.saveRoleAuthRelationship(map);
        return ResultEntity.successWithoutData();
    }

    @ResponseBody
    @RequestMapping("/assign/get/assigned/auth/id/by/role/id.json")
    public ResultEntity<List<Integer>> getAssignedAuthIdByRoleId(
            @RequestParam("roleId") Integer roleId
    ) {
        List<Integer> authList = authService.getAssignedAuthIdByRoleId(roleId);
        return ResultEntity.successWithData(authList);
    }


    @ResponseBody
    @RequestMapping("/assign/get/all/auth.json")
    public ResultEntity<List<Auth>> getAllAuth() {
        List<Auth> authList = authService.getAll();
        return ResultEntity.successWithData(authList);
    }

    @RequestMapping("/assign/do/role/assign.html")
    public String saveAdminRoleRelationship(
            @RequestParam("adminId") Integer adminId,
            @RequestParam("pageNum") Integer pageNum,
            @RequestParam("keyword") String keyword,
            // 我们允许用户在页面上取消所有已分配角色在提交表单，所以可以不提供roleIdList请求参数
            // required = false 表示这个参数不是必须的
            @RequestParam(value = "roleIdList", required = false) List<Integer> roleIdList
    ) {
        adminService.saveAdminRoleRelationship(adminId, roleIdList);
        return "redirect:/admin/get/page.html?pageNum=" + pageNum + "&keyword=" + keyword;
    }


    @RequestMapping("/assign/to/assign/role/page.html")
    public String toAssignRolePage(
            @RequestParam("adminId") Integer adminId,
            ModelMap modelMap
    ) {
        // 1.查询已分配的角色
        List<Role> assignRoleList = roleService.getAssignedRole(adminId);
        // 2.查询未分配的角色
        List<Role> unAssignRoleList = roleService.getUnAssignedRole(adminId);
        // 3.存入模型(本质上是：request.setAttribute("attrName",attrValue));
        modelMap.addAttribute("assignedRoleList", assignRoleList);
        modelMap.addAttribute("unAssignedRoleList", unAssignRoleList);

        return "assign-role";
    }



}
