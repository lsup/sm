<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <%--<base href="<%=basePath%>" />--%>
    <title>Super Mario</title>
    <%@ include file="/WEB-INF/jspf/head.jspf"%>
    <script src="static/js/egox.js"></script>
    <script src="static/js/main.js"></script>


    <style type="text/css">

    </style>

    <script>
        /*
         *	init page onLoad
         */
        $(document).ready(function () {
            $("#addTab").on("click", function(e) {
//                $.egox.ui.tabs.createTab();
//                $.egox.ui.tabs.createTab({
//                    label: '用户管理',
//                    href: 'users'
//                });
                $('#tt').tabs('add',{    title:'New Tab',    content:'Tab Body',    closable:true,    tools:[{        iconCls:'icon-mini-refresh',        handler:function(){            alert('refresh');        }    }]});

            });
            $("#removeTab").on("click", function(e) {

            });
            $("#activeTab").on("click", function(e) {
//                $.egox.ui.tabs.activeTab(2);
            });
            $.egox.ui.loaded();
        });
    </script>
</head>
<body>
<!-- loading animation -->
<div id="qLoverlay"></div>
<div id="qLbar"></div>


<%@ include file="/WEB-INF/jsp/index/header.jsp"%>

<div id="wrapper">

    <%@ include file="/WEB-INF/jsp/index/sidebar.jsp"%>

    <!--Body content-->
    <div id="content" class="clearfix">
        <div class="contentwrapper"><!--Content wrapper-->
            <div class="heading">
                <div id="tabHeader">
                    <ul>
                        <li class="nav-left">
                            <a><span class="icon-chevron-left"></span></a>
                        </li>
                        <li class="nav-right">
                            <a><span class="icon-chevron-right"></span></a>
                        </li>
                        <li class="tab-active">
                            <a href="#tab-1">欢迎</a>
                            <ul class="single-li">
                                <li>
                                    <b class="icon-refresh"></b>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>

            <div id="mainContainer">
                <div id="tt" class="easyui-tabs" data-options="fit:true">
                    <div title="About" style="padding:10px">
                        <p style="font-size:14px">jQuery EasyUI framework helps you build your web pages easily.</p>
                        <ul>
                            <li>easyui is a collection of user-interface plugin based on jQuery.</li>
                            <li>easyui provides essential functionality for building modem, interactive, javascript applications.</li>
                            <li>using easyui you don't need to write many javascript code, you usually defines user-interface by writing some HTML markup.</li>
                            <li>complete framework for HTML5 web page.</li>
                            <li>easyui save your time and scales while developing your products.</li>
                            <li>easyui is very easy but powerful.</li>
                        </ul>
                    </div>
                    <div title="Help" data-options="closable:true" style="padding:10px">
                        This is the help content.
                    </div>
                </div>
            </div>
        </div><!-- End contentwrapper -->
    </div><!-- End #content -->

</div><!-- End #wrapper -->
<%--<%@ include file="/WEB-INF/jsp/index/footer.jsp"%>--%>
</body>
</html>
