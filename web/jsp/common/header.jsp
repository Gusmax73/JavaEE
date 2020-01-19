<%@ page import="entity.User" %>
<%--
  Created by IntelliJ IDEA.
  User: Max
  Date: 14.01.2020
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header id="header"><!--header-->
    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="shop"><img src="${pageContext.request.contextPath}/resources/images/home/logo.png" alt="" /></a>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="contacts">Контакты</a></li>
                            <li><a href="shop" class="active">Магазин</a></li>
                            <li><a href="cart"><i class="fa fa-shopping-cart"></i>Корзина</a></li>
                            <%
                                if(session.getAttribute("user") == null){
                            %>
                            <li><a href="login"><i class="fa fa-lock"></i>Авторизация</a></li>
                            <li><a href="registration"><i class="fa fa-lock"></i>Регистрация</a></li>
                            <% } else {  %>
                            <li><a href="profile"><i class="fa fa-user"></i>Профиль</a></li>
                            <li><a href="exit" ><i class="fa fa-lock"></i>Выйти</a></li>
                            <% } %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                </div>
                <div class="col-sm-3">
                    <div class="search_box pull-right">
                        <input type="text" placeholder="Search"/>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->
