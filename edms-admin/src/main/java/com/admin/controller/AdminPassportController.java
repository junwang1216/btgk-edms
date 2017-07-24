package com.admin.controller;

import com.edms.core.common.annotation.Desc;
import com.edms.core.common.annotation.NotProtected;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangjun on 2017/4/25.
 */
@Controller
@RequestMapping("/admin/passport")
public class AdminPassportController extends BaseController {

    @Desc("用户登录")
    @NotProtected
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String renderPassportLogin() {
        return "AdminPassport/Login";
    }

    @Desc("用户注册")
    @NotProtected
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String renderPassportRegister() {
        return "AdminPassport/Register";
    }

    @Desc("退出登录")
    @RequestMapping("/logout")
    public String logout() {
        super.getRequest().getSession().invalidate();
        return redirect("/admin/passport/login");
    }

}
