package com.kai.crowd.mvc.config;

import com.kai.crowd.entity.Admin;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.List;

/**
 * 考虑到User对象中仅仅包含账号和密码，为了能够获取到原始的Admin对象，专门创建这个类对User类进行扩展
 */

public class SecurityAdmin extends User {

    private Admin originalAdmin;
    public SecurityAdmin(Admin originalAdmin, // 传入原始admin对象
                         List<GrantedAuthority> authorities) { // 创建角色，权限信息的集合
        super(originalAdmin.getLoginAcct(), originalAdmin.getUserPswd(), authorities); // 调用父类构造器
        this.originalAdmin = originalAdmin;
        // 将原始admin中的密码擦除
        this.originalAdmin.setUserPswd(null);
    }

    // 对外提供原始admin获得方法
    public Admin getOriginalAdmin() {
        return originalAdmin;
    }

}
