<%--
  Created by IntelliJ IDEA.
  User: Max
  Date: 18.01.2020
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Регистрация</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <%@ include file="common/link.jsp" %>
</head>
<body>
<!-- Header -->
<%@ include file="common/header.jsp" %>

<!-- Content -->
<section id="form"><!--form-->
    <div class="container" >
        <div class="row">
            <div class="col-sm-4">
                <h3>${result}</h3>
                <% if(session.getAttribute("user") == null) { %>
                <div class="signup-form"><!--sign up form-->
                    <h2>New User Signup!</h2>
                    <form action="registration" method="post">
                        <input type="text" name="login" placeholder="Login"/>
                        <input type="email" name="email" placeholder="Email Address"/>
                        <input type="password" name="password" placeholder="Password"/>
                        <button type="submit" class="btn btn-default">Signup</button>
                    </form>
                </div><!--/sign up form-->
                <% } else { %>
                <h2>Вы авторизованы! Для регистрации выйдите из аккаунта.</h2>
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
