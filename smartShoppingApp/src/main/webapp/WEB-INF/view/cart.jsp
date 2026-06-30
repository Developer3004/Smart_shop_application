<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> 
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="/header.css">
<link rel="stylesheet" href="/footer.css">
<link rel="stylesheet" href="/cart.css">

<!-- ADDED: Success Message Block (You can reuse the CSS from product.css) -->
<c:if test="${not empty msg}">
    <div class="success-msg" style="background-color: #fef2f2; border-left: 6px solid #ef4444; color: #991b1b; padding: 16px 24px; margin: 20px auto 0 auto; width: 90%; max-width: 600px; text-align: center; font-weight: 600; border-radius: 8px;">
        ${msg}
    </div>
</c:if>

<div class="cart-container">
    <div class="cart-card">
        <h2>Your Shopping Cart</h2>

        <!-- Check if the cart has items -->
        <c:choose>
            <c:when test="${not empty products}">
                <table class="cart-table">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Details</th>
                            <th>Category</th>
                            <th>Price</th>
                            <th>Action</th> <!-- Added Header for the remove column -->
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${products}" var="p">
                            <tr>
                                <td class="td-img">
                                    <img src="/images/${p.imagepath}" alt="${p.productname}" class="cart-item-image">
                                </td>
                                <td class="item-name">
                                    <strong>${p.productname}</strong>
                                </td>
                                <td class="item-category">${p.category}</td>
                                <td class="item-price">₹ ${p.price}</td>
                                
                                <!-- Remove Link -->
                                <td> 
                                    <a href="/deleteproduct/${p.pid}" style="color: #ef4444; text-decoration: none; font-weight: 600;">Remove</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <div class="cart-summary">
                    <a href="/getproduct" class="continue-btn">Continue Shopping</a>
                    <form action="/checkbtn" method="post">
                        <button type="submit" class="checkout-btn">Proceed to Checkout</button>
                    </form>
                </div>
            </c:when>
            
            <c:otherwise>
                <!-- Empty Cart State -->
                <div class="empty-cart">
                    <div class="empty-icon">🛒</div>
                    <h3>Your cart is empty!</h3>
                    <p>Looks like you haven't added anything yet.</p>
                    <a href="/getproduct" class="shop-now-btn">Shop Our Catalog</a>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>

<%@ include file="footer.jsp" %>