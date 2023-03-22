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
        <img src="${user.profilePic}" width="300px"  height="300px">
        <h1>Welcome, <c:out value="${sessionScope.user.username}"/>!</h1>
        <h3> <c:out value="${sessionScope.user.email}"/></h3>

        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2><c:out value="${ad.title}"/></h2>
                <p><c:out value="${ad.description}"/></p>
                <img src="${ad.ad_picture}" width="300px"  height="300px">
            </div>
        </c:forEach>
    </div>


</body>
</html>
