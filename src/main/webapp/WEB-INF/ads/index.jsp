<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <link href="/CSS/index.css" rel="stylesheet">
</head>
<body>
<div id="navbar">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
</div>

    <h1 id="main-title">Here Are all the ads!</h1>
<div class="container" id="container">
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6" id="card">
            <div id="picture">
               <img src="/img/2019%20mustang.jpeg" height="258" width="300">
            </div>
            <div>
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <form action="/details" method="post">
                <input type="hidden" name="adId" value="${ad.id}">
<%--                <div class="text-white" id="title">${ad.title}</div>--%>
                <input type="submit" class="btn btn-primary " value="Details">
            </form>
            </div>
        </div>
    </c:forEach>


</div>

</body>
</html>
