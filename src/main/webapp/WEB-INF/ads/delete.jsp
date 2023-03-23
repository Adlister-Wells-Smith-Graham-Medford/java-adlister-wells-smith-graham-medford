<%--
  Created by IntelliJ IDEA.
  User: chase
  Date: 3/21/23
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Delete" />
    </jsp:include>

    <title>Delete Ad</title>
    <link href="../../CSS/form.css" rel="stylesheet">

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Are you sure you want to delete?</h1>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2><c:out value="${ad.title}"/></h2>
            <p><c:out value="${ad.description}"/></p>
            <form action="${pageContext.request.contextPath}/ads/delete?adID=${ad.id}" method="post">
                <input type="hidden" name="adId" value="${ad.id}">
                <input type="submit" class="btn btn-danger" value="Delete">
            </form>
        </div>
    </c:forEach>
</div>

</body>
</html>
