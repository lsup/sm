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
        <sitemesh:body/>
    </body>
</html>
