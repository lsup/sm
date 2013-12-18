<%@ tag pageEncoding="UTF-8"%>
<%@ attribute name="title" type="java.lang.String" required="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <c:set var="ctx" />
    <%--<base href="<%=basePath%>" />--%>
    <title>${title}</title>
    <meta name="author" content="Gavin" />
    <meta name="description" content="Super Mario" />
    <meta name="keywords" content="Super Mario" />
    <meta name="application-name" content="Super Mario" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Force IE9 to render in normal mode -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- Windows8 touch icon ( http://www.buildmypinnedsite.com/ )-->
    <meta name="msapplication-TileColor" content="#3399cc"/>

    <%@include file="/WEB-INF/jspf/import-css.jspf"%>
    <script type="text/javascript">
        var currentURL = "${requestScope.currentURL}";
    </script>
</head>
<body>
