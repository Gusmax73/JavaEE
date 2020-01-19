<%--
  Created by IntelliJ IDEA.
  User: Max
  Date: 19.01.2020
  Time: 3:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Вы вышли!</title>
    <meta http-equiv="refresh" content="3;URL=${pageContext.request.contextPath}/shop" />
    <meta name="description" content="">
    <meta name="author" content="">
    <%@ include file="common/link.jsp" %>
</head>
<body>
<!-- Header -->
<%@ include file="common/header.jsp" %>

<!-- Content -->
<section id="form"><!--form-->
    <div class="container">
        <div class="row">
            <div align="center">
                <h3>${result}</h3>
            </div>
        </div>
    </div>
</section><!--/form-->

<!-- Footer and Script -->
<%@ include file="common/footer.jsp" %>
<%@ include file="common/script.jsp" %>

</body>
</html>
