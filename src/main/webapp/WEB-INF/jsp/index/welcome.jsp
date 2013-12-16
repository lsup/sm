<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath%>" />
    <title>Super Mario</title>
    <%@ include file="/WEB-INF/jspf/head.jspf"%>
    <script type="text/javascript" src="static/js/main.js" ></script>
    <script>
        $(document).ready(function() {
            //remove overlay and show page
            $("#qLoverlay").fadeOut(250);
            $("#qLbar").fadeOut(250);
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

                <ul id="myTab2" class="nav nav-tabs pattern">
                    <li class="active"><a href="#tabs-0" data-toggle="tab">Home</a></li>
                    <li><a href="#tabs-1" data-toggle="tab">Profile <span class="icon16 brocco-icon-refresh"></span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#tabs-2" data-toggle="tab">@fat</a></li>
                            <li><a href="#tabs-3" data-toggle="tab">@mdo</a></li>
                        </ul>
                    </li>
                </ul>

            </div><!-- End .heading-->


            <div class="span6">
                <div class="page-header">
                    <h4>Regular tabs</h4>
                </div>
                <div style="margin-bottom: 20px;">
                    <ul id="abc" class="nav nav-tabs pattern">
                        <li class="active"><a href="#home" data-toggle="tab">Home</a></li>
                        <li><a href="#profile" data-toggle="tab">Profile <span class="icon16 brocco-icon-refresh"></span></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#dropdown1" data-toggle="tab">@fat</a></li>
                                <li><a href="#dropdown2" data-toggle="tab">@mdo</a></li>
                            </ul>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="home">
                            <p>Raw denim you probably haven't heard of them jean shorts Austin. </p>
                        </div>
                        <div class="tab-pane fade" id="profile">
                            <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. </p>
                        </div>
                        <div class="tab-pane fade" id="dropdown1">
                            <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. </p>
                        </div>
                        <div class="tab-pane fade" id="dropdown2">
                            <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master.</p>
                        </div>
                    </div>
                </div>

            </div><!-- End .span6 -->






        </div><!-- End contentwrapper -->
    </div><!-- End #content -->

</div><!-- End #wrapper -->
<%@ include file="/WEB-INF/jsp/index/footer.jsp"%>
</body>
</html>
