<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> 
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="/header.css">
<link rel="stylesheet" href="/footer.css">
<link rel="stylesheet" href="/bill.css">

<div class="invoice-container">
    <div class="invoice-card">
        <div class="invoice-header">
            <div>
                <h2>INVOICE</h2>
                <p class="invoice-sub">Smart Shopping App</p>
            </div>
            <div class="invoice-meta">
                <p><strong>Date:</strong> <%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(new java.util.Date()) %></p>
                <p><strong>Status:</strong> <span class="badge-pending">Pending Payment</span></p>
            </div>
        </div>

        <hr class="divider">

        <table class="invoice-table">
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th class="text-right">Price</th>
                </tr>
            </thead>
            <tbody>
                <c:set var="totalAmount" value="0" />
                
                <c:forEach items="${products}" var="p">
                    <tr>
                        <td>
                            <span class="item-title">${p.productname}</span>
                        </td>
                        <td class="item-cat">${p.category}</td>
                        <td class="text-right item-price">₹ ${p.price}</td>
                    </tr>
                    <c:set var="totalAmount" value="${totalAmount + p.price}" />
                </c:forEach>
            </tbody>
        </table>

        <div class="invoice-summary">
            <div class="summary-row">
                <span>Subtotal:</span>
                <span>₹ ${totalAmount}</span>
            </div>
            <div class="summary-row">
                <span>GST (0%):</span>
                <span>₹ 0.0</span>
            </div>
            <div class="summary-row total-row">
                <span>Total Amount Payable:</span>
                <span class="final-price">₹ ${totalAmount}</span>
            </div>
        </div>

        <div class="invoice-actions">
            <a href="/cart" class="edit-btn">Back to Cart</a>
            <button class="pay-btn" onclick="alert('Order Placed Successfully!')">Pay Now</button>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>