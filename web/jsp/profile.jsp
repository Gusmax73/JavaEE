<%--
  Created by IntelliJ IDEA.
  User: Max
  Date: 19.01.2020
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<% User user = (User) session.getAttribute("user"); %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ваш профиль</title>
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
            <div style="">
                <div class="col-sm-4">
                    <h3>${result}</h3>
                    <div class="signup-form"><!--sign up form-->
                        <h2>Ваши данные:</h2>
                            <form action="profile" method="post">
                                <input type="text" name="login" value="<%= user.getLogin() %>"/>
                                <input type="email" name="email" value="<%= user.getEmail() %>"/>
                                <input type="password" name="password" value="<%= user.getPassword() %>"/>
                            <button type="submit" class="btn btn-default">Изменить</button>
                        </form>
                    </div><!--/sign up form-->
                </div>
            </div>
        </div>
    </div>
</section><!--/form-->

<!-- Footer and Script -->
<%@ include file="common/footer.jsp" %>
<%@ include file="common/script.jsp" %>

</body>
</html>
