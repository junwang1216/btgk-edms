package com.admin.controller;

import com.edms.core.common.annotation.Desc;
import com.edms.core.common.annotation.NotProtected;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangjun on 2017/5/1.
 */
@Controller
@RequestMapping("/admin/users")
public class AdminUsersController extends BaseController {

    @Desc("用户列表")
    @NotProtected
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String renderUsersList() {
        return "AdminUsers/List";
    }

    @Desc("用户分配")
    @NotProtected
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String renderUsersAdd() {
        return "AdminUsers/Add";
    }

    @Desc("用户余额")
    @NotProtected
    @RequestMapping(value = "/balance", method = RequestMethod.GET)
    public String renderUsersBalance() {
        return "AdminUsers/Balance";
    }

}
