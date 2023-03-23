<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link href="../CSS/profile.css" rel="stylesheet">
    <link href="../CSS/layout.css" rel="stylesheet">
</head>
<body>
<div id="navbar">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
</div>
<div class="page-wrapper">
    <div class="container">
        <div class="row">
            <div class="column user-info">
                <div id="userimage"></div>
                <h1>Welcome, <c:out value="${sessionScope.user.username}"/>!</h1>
                <h3> <c:out value="${sessionScope.user.email}"/></h3>
            </div>
            <div class="column">
                <p id="user-bio"><c:out value="${sessionScope.user.bio}"/></p>
            </div>
        </div>
        <div class="row">
            <div class="column">
                <div id="scroll-container">
                    <div id="scroll">
                        <c:forEach var="ad" items="${ads}">
                            <div class="col-md-6 car-card">
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
                </div>
            </div>
        </div>

    </div>
</div>

</body>
</html>
