<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="value" type="java.lang.String" required="false" description="字符串" %>
<%@attribute name="defaultValue" type="java.lang.String" required="false" description="当value值为空时显示的字符串" %>

<c:choose>
    <c:when test="${not empty value}">${value}</c:when>
    <c:otherwise>${defaultValue}</c:otherwise>
</c:choose>