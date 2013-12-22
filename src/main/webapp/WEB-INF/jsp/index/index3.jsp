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
    <script src="static/js/main.js"></script>
    <script src="static/js/egox.js"></script>

    <script>
        $(document).ready(function() {
            //remove overlay and show page
            $("#qLoverlay").fadeOut(250);
            $("#qLbar").fadeOut(250);
//            $('#tabs').tabs();
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
                <div id="tabsContainer" class="ui-tabs ui-corner-all">
                    <ul class="ui-tabs-nav ui-corner-all">
                        <li class="ui-state-default ui-corner-top ui-tabs-active">
                            <a href="#tabs-1" class="ui-tabs-anchor">首页</a>
                            <ul class="single-li">
                                <li>
                                    <b class="icon-refresh"></b>
                                </li>
                            </ul>
                        </li>
                        <li class="ui-state-default ui-corner-top">
                            <a href="#tabs-2" class="ui-tabs-anchor">Nunc tincidunt</a>
                            <ul class="single-li">
                                <li>
                                    <b class="icon-remove"></b>
                                </li>
                            </ul>
                        </li>
                        <li class="ui-state-default ui-corner-top">
                            <a href="#tabs-3" class="ui-tabs-anchor">用户管理</a>
                            <ul>
                                <li>
                                    <b class="icon-remove"></b>
                                </li>
                                <li>
                                    <b class="icon-refresh"></b>
                                </li>
                            </ul>
                        </li>
                        <li class="ui-state-default ui-corner-top">
                            <a href="#tabs-4" class="ui-tabs-anchor">权限管理</a>
                            <ul>
                                <li>
                                    <b class="icon-remove"></b>
                                </li>
                                <li>
                                    <b class="icon-refresh"></b>
                                </li>
                            </ul>
                        </li>
                        <li class="ui-state-default ui-corner-top">
                            <a href="#tabs-5" class="ui-tabs-anchor">Aenean lacinia</a>
                            <ul>
                                <li>
                                    <b class="icon-remove"></b>
                                </li>
                                <li>
                                    <b class="icon-refresh"></b>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </div>

            <div class="index-panel">
                <div class="tabs-bar tabs-fix-top">
                    <span class="icon-chevron-left" style="display: none;"></span>

                    <div class="ul-wrapper">
                        <ul>
                            <li>
                                <a href="#tabs-0">欢迎使用</a>
                                <span class='menu' role='presentation' style="display:inline-block;width: 14px;height: 14px"></span>
                                <br/>
                                <span class='menu icon-refresh' role='presentation' title='刷新'></span>
                            </li>
                        </ul>
                    </div>
                    <span class="icon-chevron-right" style="display: none;"></span>

                    <div id="tabs-0" data-index="0" data-url="${ctx}/admin/welcome"></div>

                </div>

                <iframe id="iframe-tabs-0" tabs="true" class="ui-layout-center" frameborder="0" scrolling="auto" src="welcome"></iframe>
            </div>



        </div><!-- End contentwrapper -->
    </div><!-- End #content -->

</div><!-- End #wrapper -->
<%@ include file="/WEB-INF/jsp/index/footer.jsp"%>
</body>
</html>
