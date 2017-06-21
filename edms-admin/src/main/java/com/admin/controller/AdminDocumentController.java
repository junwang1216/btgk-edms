package com.admin.controller;

import com.core.common.annotation.Desc;
import com.core.common.annotation.NotProtected;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangjun on 2017/4/28.
 */
@Controller
@RequestMapping("/admin/document")
public class AdminDocumentController extends BaseController {

    /*keywords,class,article*/

    @Desc("文献类型")
    @NotProtected
    @RequestMapping(value = "/class", method = RequestMethod.GET)
    public String renderDocumentSearch(Model model) {
        model.addAttribute("isLogin", true);

        return "AdminDocument/Class";
    }

    @Desc("文献列表")
    @NotProtected
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String renderDocumentList(Model model) {

        model.addAttribute("isLogin", true);

        return "AdminDocument/Search";
    }

    @Desc("文献上传")
    @NotProtected
    @RequestMapping(value = "/upload", method = RequestMethod.GET)
    public String renderDocumentContent(Model model) {

        model.addAttribute("isLogin", false);

        return "AdminDocument/Upload";
    }

}
