package com.edms.in.controller;

import com.edms.core.common.annotation.Desc;
import com.edms.core.common.annotation.NotProtected;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangjun on 2017/4/25.
 */
@Controller
@RequestMapping("/admin/dashboard")
public class DashboardController {

    @Desc("工作面板")
    @NotProtected
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String renderDashboardIndex() {
        return "Dashboard/Index";
    }

}
