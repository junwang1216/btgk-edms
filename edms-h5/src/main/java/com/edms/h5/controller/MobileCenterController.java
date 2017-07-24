package com.edms.h5.controller;

import com.edms.core.common.annotation.Desc;
import com.edms.core.common.annotation.NotProtected;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangjun on 2017/5/2.
 */
@Controller
@RequestMapping("/mobile/center")
public class MobileCenterController extends BaseController {

    @Desc("个人中心")
    @NotProtected
    @RequestMapping(value = "/settings", method = RequestMethod.GET)
    public String renderCenterSettings() {
        return "MobileCenter/Settings";
    }

    @Desc("个人信息")
    @NotProtected
    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String renderCenterProfile() {
        return "MobileCenter/Profile";
    }

    @Desc("修改密码")
    @NotProtected
    @RequestMapping(value = "/password", method = RequestMethod.GET)
    public String renderCenterPassword() {
        return "MobileCenter/Password";
    }

    @Desc("我的收藏")
    @NotProtected
    @RequestMapping(value = "/collect", method = RequestMethod.GET)
    public String renderCenterCollect() {
        return "MobileCenter/List";
    }

    @Desc("我的下载")
    @NotProtected
    @RequestMapping(value = "/download", method = RequestMethod.GET)
    public String renderCenterDownload() {
        return "MobileCenter/List";
    }

    @Desc("我的访问")
    @NotProtected
    @RequestMapping(value = "/visit", method = RequestMethod.GET)
    public String renderCenterVisit() {
        return "MobileCenter/List";
    }

}
