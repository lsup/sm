<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users Page</title>
        <base href=" <%=basePath%>">
        <script type="text/javascript" src="static/js/main.js" /></script><!-- Core js functions -->
    <script type="text/javascript">
    </script>
</head>
<body>
    <h1>users</h1>
    <h1>Hello, <%= path%>!users</h1>
    <h3>bb: ${pageContext.request.contextPath}</h3>
</body>
</html>
