<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sm" tagdir="/WEB-INF/tags" %>
<%@attribute name="menu" type="egox.sm.ui.Menu" required="true" description="菜单" %>

<c:if test="${not empty menu.children}">
    <ul class="sub">
        <c:forEach items="${menu.children}" var="submenu">
            <li><a href="${submenu.url}"><span class="icon16 <sm:string value="${submenu.icon}" defaultValue="entypo-icon-music" />"></span>${submenu.name}</a>
                <sm:submenu menu="${submenu}" />
            </li>
        </c:forEach>
    </ul>
</c:if>