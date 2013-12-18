<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE>
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
//            $.app.initIndex();
//            $(".tabs-bar").tabs();
            //alert("begin");
            //alert("finished");
        });
    </script>
</head>
<body>
<!-- loading animation -->
<div id="qLoverlay"></div>
<div id="qLbar"></div>
<ul id="tabs-menu" class="dropdown-menu">
    <li><a class="close-current" href="#">关闭</a></li>
    <li><a class="close-others" href="#">关闭其他</a></li>
    <li><a class="close-all" href="#">关闭所有</a></li>
    <li class="divider"></li>
    <li><a class="close-left-all" href="#">关闭当前左边的所有</a></li>
    <li><a class="close-right-all" href="#">关闭当前右边的所有</a></li>
</ul>

<%@ include file="/WEB-INF/jsp/index/header.jsp"%>

<div id="wrapper">

    <%@ include file="/WEB-INF/jsp/index/sidebar.jsp"%>

    <!--Body content-->
    <div id="content" class="clearfix">
        <div class="contentwrapper"><!--Content wrapper-->
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

                <div id="tabs-0" data-index="0" data-url="welcome"></div>

            </div>



            <iframe id="iframe-tabs-0" tabs="true" style="" class="ui-layout-center" frameborder="0" scrolling="auto" src="welcome"></iframe>


        </div><!-- End contentwrapper -->
    </div><!-- End #content -->

</div><!-- End #wrapper -->
<%@ include file="/WEB-INF/jsp/index/footer.jsp"%>
</body>
</html>
