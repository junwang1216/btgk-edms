package com.edms.in.controller;

import com.edms.core.common.annotation.Desc;
import com.edms.core.common.annotation.NotProtected;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangjun on 2017/4/28.
 */
@Controller
@RequestMapping("/admin/document")
public class DocumentController extends BaseController {

    /*keywords,class,article*/

    @Desc("文献类型")
    @NotProtected
    @RequestMapping(value = "/class", method = RequestMethod.GET)
    public String renderDocumentSearch(Model model) {
        model.addAttribute("isLogin", true);

        return "Document/Class";
    }

    @Desc("文献列表")
    @NotProtected
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String renderDocumentList(Model model) {

        model.addAttribute("isLogin", true);

        return "Document/Search";
    }

    @Desc("文献列表")
    @NotProtected
    @RequestMapping(value = "/detail/{articleId}", method = RequestMethod.GET)
    public String renderDocumentDetail(@PathVariable String articleId, Model model) {

        model.addAttribute("isLogin", true);

        return "Document/Detail";
    }

    @Desc("文献上传")
    @NotProtected
    @RequestMapping(value = "/upload", method = RequestMethod.GET)
    public String renderDocumentContent(Model model) {

        model.addAttribute("isLogin", false);

        return "Document/Upload";
    }

    @Desc("文献编辑")
    @NotProtected
    @RequestMapping(value = "/edit/{articleId}", method = RequestMethod.GET)
    public String renderDocumentEdit(@PathVariable String articleId, Model model) {

        model.addAttribute("isLogin", true);

        return "Document/Edit";
    }

}
