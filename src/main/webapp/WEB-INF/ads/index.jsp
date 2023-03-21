<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <form action="/details" method="post">
                <input type="hidden" name="adId" value="${ad.id}">
                <div class="text-white" id="title">${ad.title}</div>
                <input type="submit" class="btn btn-primary " value="Details">
            </form>
        </div>
    </c:forEach>
</div>

</body>
</html>
