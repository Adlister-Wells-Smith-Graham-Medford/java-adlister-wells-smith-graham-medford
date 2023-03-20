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
    <h2><c:out value="${ad.title}"/></h2>
<%--    <p><c:out value="${ad.milage}"</p>--%>
<%--    <p><c:out value="${ad.mpg}"</p>--%>
<%--    <p><c:out value="${ad.cylinder}"</p>--%>
</div>
</body>
</html>
