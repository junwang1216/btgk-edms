package com.admin.controller;

import com.edms.core.common.annotation.Desc;
import com.edms.core.common.annotation.NotProtected;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangjun on 2017/5/2.
 */
@Controller
@RequestMapping("/mobile/passport")
public class MobilePassportController extends BaseController {

    @Desc("用户登录")
    @NotProtected
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String renderPassportLogin() {
        return "MobilePassport/Login";
    }

    //退出登录
    @RequestMapping("/logout")
    public String logout() {
        super.getRequest().getSession().invalidate();
        return redirect("/mobile/document/search");
    }

}
