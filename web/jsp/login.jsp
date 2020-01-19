<%--
  Created by IntelliJ IDEA.
  User: Max
  Date: 14.01.2020
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Авторизация</title>
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
            <div class="col-sm-4">
                <h3>${result}</h3>
                <% if(session.getAttribute("user") == null) { %>
                <div class="login-form"><!--login form-->
                    <h2>Введите логин и пароль:</h2>
                    <form action="login" method="post">
                        <input type="text" name="login" placeholder="Login"/>
                        <input type="password" name="password" placeholder="Password"/>
                        <button type="submit" class="btn btn-default">Login</button>
                    </form>
                </div><!--/login form-->
                <% } else { %>
                <h2>Вы уже авторизованы!</h2>
                <% } %>
            </div>
        </div>
    </div>
</section><!--/form-->


<!-- Footer and Script -->
<%@ include file="common/footer.jsp" %>
<%@ include file="common/script.jsp" %>

</body>
</html>