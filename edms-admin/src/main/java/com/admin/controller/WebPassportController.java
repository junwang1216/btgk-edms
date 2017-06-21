package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wangjun on 2017/5/2.
 */
@Controller
@RequestMapping("/web/passport")
public class WebPassportController extends BaseController {

    //退出登录
    @RequestMapping("/logout")
    public String logout() {
        super.getRequest().getSession().invalidate();
        return redirect("/web/document/search");
    }

}
