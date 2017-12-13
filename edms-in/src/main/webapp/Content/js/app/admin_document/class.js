requirejs.config({
    baseUrl: 'Content/',
    paths: {
        "jquery"    : 'bower_components/jquery/dist/jquery',
        "tether"    : 'bower_components/tether/dist/js/tether',
        "bootstrap" : 'bower_components/bootstrap/dist/js/bootstrap',
        "pace"      : 'bower_components/pace/pace',
        "chart"     : 'bower_components/chart.js/dist/Chart',

        "jquery.validate"              : 'bower_components/jquery.validation/dist/jquery.validate',
        "jquery.validate.unobtrusive"  : 'bower_components/Microsoft.jQuery.Unobtrusive.Validation/jquery.validate.unobtrusive',

        "base"      : 'js/widgets/base',
        "override"  : 'js/widgets/override'
    },
    shim: {
        "bootstrap": {
            deps: ["jquery", "override"]
        },
        "jquery.validate": {
            deps: ["jquery", "override"]
        },
        "jquery.validate.unobtrusive": {
            deps: ["jquery", "jquery.validate"]
        }
    },  // 依赖关系
    waitSeconds: 0,
    urlArgs: '_=' + new Date().getTime()
});

require(['jquery', 'override', 'bootstrap', 'base', 'jquery.validate', 'jquery.validate.unobtrusive'], function ($) {
    'use strict';

    var Document_Class = {
        opts: {
            submitClassURL  : "",     // 分类添加或者编辑提交
            deleteClassURL  : "",     // 分类删除
            activeClassURL  : "",     // 分类激活
            disableClassURL : "",     // 分类禁用

            submitTagURL : "",     // 标签添加和编辑提交接口
            deleteTagURL : ""      // 标签删除
        },
        init: function () {
            $('[data-toggle="popover"]').popover();

            this.initEvents();
        },
        initEvents: function () {
            var content = this;
            var $btnClassSubmit = $("#class_submit");
            var $divClassList = $(".class-list");
            var $btnTagSubmit = $("#tag_submit");
            var $divTagList = $(".tag-list");

            // 文档分类提交
            $btnClassSubmit.on("click", function (e) {
                e.preventDefault();

                var $form = $("#class_form");
                var conditions = $form.serialize();

                if ($form.attr("submitting") === "submitting" || !$form.valid()) {
                    return false;
                }
                $form.attr("submitting", "submitting");

                $.post(content.opts.submitClassURL, conditions, function (res) {
                    $form.attr("submitting", "");
                });
            });

            // 文档分类编辑查看
            $divClassList.on("click", ".class-title", function (e) {
                e.preventDefault();

                var $this = $(this);
                var classId = $this.parents("tr").attr("data-id");
                var className = $this.attr("data-title");
                var classDesc = $this.attr("data-content");

                $("#class_id").val(classId);
                $("#class_name").val(className);
                $("#class_desc").val(classDesc);
            });

            // 文档分类激活提交
            $divClassList.on("click", ".class-active", function (e) {
                e.preventDefault();

                var $this = $(this);
                var classId = $this.parents("tr").attr("data-id");
                var conditions = {
                    classId: classId
                };

                $.post(content.opts.activeClassURL, conditions, function (res) {
                    // 局部刷新
                });
            });

            // 文档分类禁用提交
            $divClassList.on("click", ".class-disable", function (e) {
                e.preventDefault();

                var $this = $(this);
                var classId = $this.parents("tr").attr("data-id");
                var conditions = {
                    classId: classId
                };

                $.post(content.opts.disableClassURL, conditions, function (res) {
                    // 局部刷新
                });
            });

            // 文档分类删除提交
            $divClassList.on("click", ".class-trash", function (e) {
                e.preventDefault();

                $("#warning_tips").find(".tips-content .text").text("您确定要删除此分类吗？");
            });

            // 文档标签提交
            $btnTagSubmit.on("click", function (e) {
                e.preventDefault();

                var $form = $("#tag_form");
                var conditions = $form.serialize();

                if ($form.attr("submitting") === "submitting" || !$form.valid()) {
                    return false;
                }
                $form.attr("submitting", "submitting");

                $.post(content.opts.submitTagURL, conditions, function (res) {
                    $form.attr("submitting", "");
                });
            });

            // 文档标签编辑查询
            $divTagList.on("click", ".tag-title", function (e) {
                e.preventDefault();

                var $this = $(this);
                var tagId = $this.attr("data-id");
                var tagName = $this.attr("data-title");
                var tagDesc = $this.attr("data-content");

                $("#tag_id").val(tagId);
                $("#tag_name").val(tagName);
                $("#tag_desc").val(tagDesc);
            });

            // 文档标签删除提交
            $divTagList.on("click", ".tag-trash", function (e) {
                e.preventDefault();

                $("#warning_tips").find(".tips-content .text").text("您确定要删除此标签吗？");
            });
        }
    };

    Document_Class.init();

});
