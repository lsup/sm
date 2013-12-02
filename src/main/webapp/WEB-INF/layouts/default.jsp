<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <base href="<%=basePath%>" />
        <title><sitemesh:title default="Super Mario" /></title>
        <%@ include file="/WEB-INF/layouts/jspf/head.jspf"%>
        <sitemesh:head/>
    </head>
    <body>
        <!-- loading animation -->
        <div id="qLoverlay"></div>
        <div id="qLbar"></div>

        <%@ include file="/WEB-INF/layouts/header.jsp"%>

        <div id="wrapper">

            <%@ include file="/WEB-INF/layouts/sidebar.jsp"%>

            <!--Body content-->
            <div id="content" class="clearfix">
                <div class="contentwrapper"><!--Content wrapper-->
                    <div class="heading">

                        <h3>Charts and graphs</h3>                    

                        <div class="resBtnSearch">
                            <a href="#"><span class="icon16 icomoon-icon-search-3"></span></a>
                        </div>

                        <div class="search">

                            <form id="searchform" action="search.html">
                                <input type="text" id="tipue_search_input" class="top-search" placeholder="Search here ..." />
                                <input type="submit" id="tipue_search_button" class="search-btn" value=""/>
                            </form>

                        </div><!-- End search -->

                        <ul class="breadcrumb">
                            <li>You are here:</li>
                            <li>
                                <a href="home" class="tip" title="back to dashboard">
                                    <span class="icon16 icomoon-icon-screen-2"></span>
                                </a> 
                                <span class="divider">
                                    <span class="icon16 icomoon-icon-arrow-right-3"></span>
                                </span>
                            </li>
                            <li class="active">Charts and graphs</li>
                        </ul>

                    </div><!-- End .heading-->
                    <sitemesh:body/>
                </div><!-- End contentwrapper -->
            </div><!-- End #content -->

        </div><!-- End #wrapper -->
        <%@ include file="/WEB-INF/layouts/footer.jsp"%>
    </body>
</html>
