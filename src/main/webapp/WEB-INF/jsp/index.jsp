<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <title>Main Page</title>
    <script type="text/javascript" src="static/js/main.js" /></script><!-- Core js functions -->
</head>
<body>
    <div>
        this is the index page!
        <a href="users">users</a>
        <br />
        <c:forEach items="${menu}" var="item">
            ${item}<br />
            <c:if test="${item.children} != null">
                <c:forEach items="${item.children}" var="item2">
                    ==>${item2}<br />
                    <c:if test="${item2.children} != null">
                        <c:forEach items="${item2.children}" var="item3">
                            ==>==>${item3}<br />
                        </c:forEach>
                    </c:if>
                </c:forEach>
            </c:if>


        </c:forEach>
    </div>
</body>
