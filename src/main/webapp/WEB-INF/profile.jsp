<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, <c:out value="${sessionScope.user.username}"/>!</h1>
        <h3> <c:out value="${sessionScope.user.email}"/></h3>

        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2><c:out value="${ad.title}"/></h2>
                <p><c:out value="${ad.description}"/></p>
                <form action="/details" method="post">
                    <input type="hidden" name="adId" value="${ad.id}">
                        <%--                <div class="text-white" id="title">${ad.title}</div>--%>
                    <input type="submit" class="btn btn-primary " value="Details">
                    <input type="hidden" name="deleteAd" value="${ad.id}">
                    <input type="submit" class="btn btn-danger " value="Delete">
                </form>
            </div>
        </c:forEach>
    </div>

</body>
</html>
