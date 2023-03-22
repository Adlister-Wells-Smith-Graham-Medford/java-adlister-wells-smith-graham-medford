<%--
  Created by IntelliJ IDEA.
  User: chase
  Date: 3/21/23
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Delete an Ad" />--%>
<%--    </jsp:include>--%>
<%--    <title>Delete Ad</title>--%>
<%--</head>--%>
<%--<jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>
<%--<body>--%>

<%--<div class="container">--%>
<%--    <h1>Welcome, <c:out value="${sessionScope.user.username}"/>!</h1>--%>
<%--    <h3> <c:out value="${sessionScope.user.email}"/></h3>--%>
<%--    <h1>Delete Ad</h1>--%>
<%--    <form action="ads/delete" method="post">--%>
<%--        <c:forEach var="ad" items="${ads}">--%>
<%--        <div class="col-md-6">--%>
<%--            <p>Are you sure you want to delete this ad?</p>--%>
<%--            <h4>${ad.title}</h4>--%>
<%--            <p>Price: ${ad.price}</p>--%>
<%--            <p>Make: ${ad.make}</p>--%>
<%--            <p>Model: ${ad.model}</p>--%>
<%--            <p>Year: ${ad.year}</p>--%>
<%--            <button type="submit" class="btn btn-danger">Delete</button>--%>
<%--        </div>--%>
<%--        </c:forEach>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Delete" />
    </jsp:include>
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
