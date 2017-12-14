package com.edms.in.controller;

import com.edms.core.common.annotation.Desc;
import com.edms.core.common.annotation.NotProtected;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangjun on 2017/5/1.
 */
@Controller
@RequestMapping("/admin/settings")
public class SettingsController extends BaseController {

    @Desc("管理员设置")
    @NotProtected
    @RequestMapping(value = "/account", method = RequestMethod.GET)
    public String renderSettingsAdmin() {
        return "Settings/Admin";
    }

}
