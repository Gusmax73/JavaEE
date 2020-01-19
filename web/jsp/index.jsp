<%--
  Created by IntelliJ IDEA.
  User: Max
  Date: 14.01.2020
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
  <head>
      <title>Магазин</title>
      <meta name="description" content="">
      <meta name="author" content="">
      <%@ include file="common/link.jsp" %>
  </head>
  <body>
        <!-- Header -->
        <%@ include file="common/header.jsp" %>

        <!-- Content -->
        <section >
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>Категории</h2>
                            <div class="panel-group category-products" id="accordian">
                                <c:forEach var="product" items="${products}">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><a href="<%-- ?product=<c:url value='${product.name}'/> --%>">${product.nameRus}</a></h4>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div><!--/category-products-->
                        </div>
                    </div>

                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center">Товары в данной категории</h2>

                            <c:forEach var="category" items="${productsCategory}">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                               <%-- <img src="${pageContext.request.contextPath}/resources/images/notebook/${category.brand} ${category.model}.jpg/"  alt=""/> --%>
                                                   <img src="${pageContext.request.contextPath}/resources/images/notebook/${fn:replace(category.brand,' ', '_')}_${fn:replace(category.model,' ', '_')}.jpg"  alt=""/>
                                                   <h2>${category.price} Р</h2>
                                                <p>${category.brand} ${category.model}</p>
                                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Описание</a>
                                            </div>
                                        </div>
                                        <!--
                                        <div class="choose">
                                            <ul class="nav nav-pills nav-justified">
                                                <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                                <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                                            </ul>
                                        </div>
                                        -->
                                    </div>
                                </div>
                            </c:forEach>

                        </div><!--features_items-->
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer and Script -->
        <%@ include file="common/footer.jsp" %>
        <%@ include file="common/script.jsp" %>

  </body>
</html>
