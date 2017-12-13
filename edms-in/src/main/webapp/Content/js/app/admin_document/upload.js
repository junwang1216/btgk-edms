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

    var Document_Upload = {
        opts: {
            submitArticleURL  : "",     // 文档添加或者编辑提交
            deleteArticleURL  : "",     // 文档删除
            uploadArticleURL  : ""      // 文档上传
        },
        init: function () {
            this.initEvents();
        },
        initEvents: function () {
            var content = this;
            var $btnArticleSubmit = $("#article_submit");
            var $divArticleList = $(".article-list");

            // 文档上传提交
            $btnArticleSubmit.on("click", function (e) {
                e.preventDefault();

                var $form = $("#article_form");
                var conditions = $form.serialize();

                if ($form.attr("submitting") === "submitting" || !$form.valid()) {
                    return false;
                }
                $form.attr("submitting", "submitting");

                $.post(content.opts.submitArticleURL, conditions, function (res) {
                    $form.attr("submitting", "");
                });
            });

            // 文档上传编辑查看
            $divArticleList.on("click", ".article-edit", function (e) {
                e.preventDefault();

                var $this = $(this);
                var classId = $this.parents("tr").attr("data-id");
                var className = $this.attr("data-title");
                var classDesc = $this.attr("data-content");

                $("#class_id").val(classId);
                $("#class_name").val(className);
                $("#class_desc").val(classDesc);
            });

            // 文档上传文件提交
            $divArticleList.on("click", ".article-upload", function (e) {
                e.preventDefault();

                var $this = $(this);
            });

            // 文档删除提交
            $divArticleList.on("click", ".article-delete", function (e) {
                e.preventDefault();

                $("#warning_tips").find(".tips-content .text").text("您确定要删除此文档吗？");
            });
        }
    };

    Document_Upload.init();
});
