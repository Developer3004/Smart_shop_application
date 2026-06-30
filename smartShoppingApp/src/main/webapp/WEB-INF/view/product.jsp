<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> 
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="/header.css">
<link rel="stylesheet" href="/footer.css">
<link rel="stylesheet" href="/product.css">

<c:if test="${not empty msg}">
    <div class="success-msg">
        ${msg}
    </div>
</c:if>



<div class="products-container">
    <c:forEach items="${products}" var="p">
        <div class="product-card">
           <img src="/images/${p.imagepath}" class="product-image" alt="${p.productname}">
            <h3>${p.productname}</h3>
            <p class="category">${p.category}</p>
            <p class="price">₹ ${p.price}</p>
            <form action="/add-to-card/${p.pid}" method="post">
				<input type="hidden" name="pid" value="${p.pid}">
            <button class="cart-btn">Add to Cart</button>
			</form>
        </div>
    </c:forEach>
</div>


<%@ include file="footer.jsp" %>