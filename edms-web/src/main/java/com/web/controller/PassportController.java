package com.web.controller;

import com.core.common.annotation.Desc;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by wangjun on 2017/5/2.
 */
@Controller
@RequestMapping("/passport")
public class PassportController extends BaseController {

    @Desc("登录页面")
    @RequestMapping("/login")
    public ModelAndView renderLoginPage() {
        return new ModelAndView("/Passport/Login");
    }

    // 退出登录
    @RequestMapping("/logout")
    public String logout() {
        super.getRequest().getSession().invalidate();
        return redirect("/document/search");
    }

}
