<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="panel">
    <br/>
    <es:showMessage errorMessage="${error.message}"/>
    <c:set var="stackTrace" value="${error.stackTrace}"/>
    <%@include file="exceptionDetails.jsp"%>
</div>
<es:contentFooter/>
