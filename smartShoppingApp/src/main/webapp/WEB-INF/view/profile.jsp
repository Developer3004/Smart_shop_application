<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="header.jsp" %> 

<link rel="stylesheet" href="/header.css">
<link rel="stylesheet" href="/footer.css">
<link rel="stylesheet" href="/profile.css">

<div class="profile-container">
    <div class="profile-card">
        <h2>My Profile</h2> 

        <div class="profile-details">
            <p><strong>Full Name:</strong> ${user.name}</p> 
            <p><strong>Username:</strong> ${user.username}</p> 
            <p><strong>Email:</strong> ${user.email}</p>
            <p><strong>Gender:</strong> ${user.gender}</p> 
            <p><strong>Address:</strong> ${user.address}</p> 
            <p><strong>City:</strong> ${user.city}</p> 
        </div>

        <div class="profile-actions">
            <a href="/getproduct" class="back-btn">Back to Shop</a> 
            <a href="/update" class="update-btn">Update Profile</a> 
        </div>

    </div>
</div>

<%@ include file="footer.jsp" %> 