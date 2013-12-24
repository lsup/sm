<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Super Mario</title>
    <%@ include file="/WEB-INF/jspf/head.jspf"%>
    <script src="static/js/main.js"></script>
    <script src="static/js/egox.js"></script>

    <style type="text/css">
    </style>

    <script>
        $(document).ready(function () {
            $.egox.ui.tabs.init();
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
                <div id="tabHeaders" class="ui-tabs ui-corner-all">
                    <ul class="ui-tabs-nav ui-corner-all">
                        <li class="ui-state-default ui-corner-top ui-tabs-active">
                            <a href="#tabs-0" class="ui-tabs-anchor">首页</a>
                            <ul class="single-li">
                                <li>
                                    <b class="icon-refresh"></b>
                                </li>
                            </ul>
                        </li>
                        <li class="ui-state-default ui-corner-top">
                            <a href="#tabs-1" class="ui-tabs-anchor">Nunc tincidunt</a>
                            <ul class="single-li">
                                <li>
                                    <b class="icon-remove"></b>
                                </li>
                            </ul>
                        </li>
                        <li class="ui-state-default ui-corner-top">
                            <a href="#tabs-2" class="ui-tabs-anchor">用户管理</a>
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

            <div id="mainContainer">
                <div id="tabContainer">

                    <ul id="tabButtons">
                        <li><a href="#tab-0">Tab #0</a></li>
                        <li><a href="#tab-1">Tab #1</a></li>
                    </ul>

                    <!-- wrap tab-panels in ui-layout-content div -->
                    <div id="tabPanels">
                        <!-- TAB #0 -->
                        <div id="tab-0" class="tabPanel">
                            <p><b>#tab0.tabPanel</b></p>
                            <div class="ui-widget-content">
                                <p>div.ui-widget-content</p>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                                </p>
                            </div>
                        </div>

                        <!-- TAB #1 -->
                        <div id="tab-1" class="tabPanel">
                            <h1>tab-1</h1>
                        </div>

                    </div><!-- END tabPanels -->

                </div><!-- /#tabs -->

            </div>

        </div><!-- End contentwrapper -->
    </div><!-- End #content -->

</div><!-- End #wrapper -->
<%@ include file="/WEB-INF/jsp/index/footer.jsp"%>
</body>
</html>
