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
                $.egox.ui.tabs.openTab("Users", "users");
            });
            $("#removeTab").on("click", function(e) {
                $.egox.ui.tabs.openTab("Test1", "test1");
                $.egox.ui.tabs.openTab({
                    title:"Test2",
                    href:"test2"
                });
                $.egox.ui.tabs.openTab({
                    title:"Test3",
                    href:"test3",
                    closable: false
                });
                $.egox.ui.tabs.openTab({
                    title:"Test4",
                    href:"test4",
                    refreshable: false
                });
            });
            $("#activeTab").on("click", function(e) {
            });
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
            <%--<div class="heading">--%>
                <%--<div id="tabHeader">--%>
                    <%--<ul>--%>
                        <%--<li class="nav-left">--%>
                            <%--<a><span class="icon-chevron-left"></span></a>--%>
                        <%--</li>--%>
                        <%--<li class="nav-right">--%>
                            <%--<a><span class="icon-chevron-right"></span></a>--%>
                        <%--</li>--%>
                        <%--<li class="tab-active">--%>
                            <%--<a href="#tab-1">欢迎</a>--%>
                            <%--<ul class="single-li">--%>
                                <%--<li>--%>
                                    <%--<b class="icon-refresh"></b>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            <%--</div>--%>

            <div id="mainContainer">
                <div id="tabContainer" class="easyui-tabs" data-options="fit:true">

                </div>
            </div>
        </div><!-- End contentwrapper -->
    </div><!-- End #content -->

</div><!-- End #wrapper -->
<%--<%@ include file="/WEB-INF/jsp/index/footer.jsp"%>--%>
</body>
</html>
