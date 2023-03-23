<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <link href="CSS/index2.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div id="container">
    <div id="header">
        <h1>&nbsp; &nbsp; Find Your Used &nbsp; &nbsp; &nbsp; &nbsp; Luxury Car Today!</h1>
    </div>
    <form action="/ads" method="get">
        <input type="hidden" name="enter" value="">
        <div class="text-white" id="title"><a class="dropdown-item" href="/ads"></a></div>
        <input type="submit" class="btn btn-grey" value="View Ads">
    </form>
</div>
</body>
</html>
