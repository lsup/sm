<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sm" tagdir="/WEB-INF/tags" %>
<%@attribute name="title" type="java.lang.String" required="false" %>
<%@attribute name="sidenav" type="java.util.ArrayList" required="true" %>

<div class="sidenav">
    <div class="sidebar-widget" style="margin: -1px 0 0 0;">
        <h5 class="title" style="margin-bottom:0">
            <sm:string value="${title}" defaultValue="SideNav Title" />
        </h5>
    </div><!-- End .sidenav-widget -->
    <div class="mainnav">
        <ul>
            <c:forEach items="${sidenav}" var="menu">
                <li><a href="${menu.url}"><span class="icon16 <sm:string value="${menu.icon}" defaultValue="entypo-icon-music" />"></span>${menu.name}</a>
                    <sm:submenu menu="${menu}" />
                </li>
            </c:forEach>
        </ul>
    </div>
</div><!-- End sidenav -->