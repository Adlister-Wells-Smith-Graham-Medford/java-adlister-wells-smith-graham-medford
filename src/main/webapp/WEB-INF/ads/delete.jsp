<%--
  Created by IntelliJ IDEA.
  User: chase
  Date: 3/21/23
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Delete an Ad" />
    </jsp:include>
    <title>Delete Ad</title>
</head>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<body>

<div class="container">
    <h1>Delete Ad</h1>
    <form action="ads/delete" method="post">
        <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <p>Are you sure you want to delete this ad?</p>
            <h4>${ad.title}</h4>
            <p>Price: ${ad.price}</p>
            <p>Make: ${ad.make}</p>
            <p>Model: ${ad.model}</p>
            <p>Year: ${ad.year}</p>
            <button type="submit" class="btn btn-danger">Delete</button>
        </div>
        </c:forEach>
</div>

</body>
</html>
