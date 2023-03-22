<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container my-4 mb-4 text-center">
        <h1>Welcome, <c:out value="${sessionScope.user.username}"/>!</h1>
        <h3><c:out value="${sessionScope.user.email}"/></h3>

        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2><c:out value="${ad.title}"/></h2>
                <p><c:out value="${ad.description}"/></p>
                <form action="/details" method="post">
                    <input type="hidden" name="adId" value="${ad.id}">
                    <input type="submit" class="btn btn-primary " value="Details">
                </form>
            </div>
        </c:forEach>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
