package com.admin.controller;

import com.core.common.annotation.Desc;
import com.core.common.annotation.NotProtected;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangjun on 2017/5/2.
 */
@Controller
@RequestMapping("/mobile/document")
public class MobileDocumentController extends BaseController {

    /*keywords,class,article*/

    @Desc("文献检索")
    @NotProtected
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String renderDocumentSearch(Model model) {
        model.addAttribute("isLogin", true);

        return "MobileDocument/Search";
    }

    @Desc("文献列表")
    @NotProtected
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String renderDocumentList(Model model) {

        model.addAttribute("isLogin", true);

        return "MobileDocument/List";
    }

    @Desc("文献内容")
    @NotProtected
    @RequestMapping(value = "/content", method = RequestMethod.GET)
    public String renderDocumentContent(Model model) {

        model.addAttribute("isLogin", false);

        return "MobileDocument/Content";
    }

}
