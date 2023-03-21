<%--
  Created by IntelliJ IDEA.
  User: reginaldgraham
  Date: 3/20/23
  Time: 1:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing ad details" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div>
<c:forEach var="ad" items="${ads}">
    <div>
        <h2><c:out value="${ad.title}"/></h2>
        <p>Price:<c:out value="${ad.price}"/></p>
        <p>Make:<c:out value="${ad.make}"/></p>
        <p>Model:<c:out value="${ad.model}"/></p>
        <p>Year:<c:out value="${ad.year}"/></p>
        <p>MPG:<c:out value="${ad.mpg}"/></p>
        <p>Transmission:<c:out value="${ad.transmission}"/></p>
    </div>
</c:forEach>
</div>
</body>
</html>
