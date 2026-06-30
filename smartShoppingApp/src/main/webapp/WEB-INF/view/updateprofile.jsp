<link rel="stylesheet" href="/updateprofile.css">







	
<form action="/updateProfile" method="post">
    <h2>Update Profile</h2>

    <div class="form-grid">
        
        <div class="form-group">
            <label>User Id:</label>
            <input type="text" name="uid" value="${user.uid}" readonly>
        </div>

        <div class="form-group">
            <label>Full Name:</label>
            <input type="text" name="name" value="${user.name}">
        </div>

        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" value="${user.email}">
        </div>

        <div class="form-group">
            <label>Username:</label>
            <input type="text" name="username" value="${user.username}">
        </div>

        <div class="form-group">
            <label>Password:</label>
            <input type="password" name="password" value="${user.password}" readonly>
        </div>

       

        <div class="form-group">
            <label>City:</label>
            <input type="text" name="city" value="${user.city}">
        </div>

        <div class="form-group">
            <label>Gender:</label>
            <input type="text" name="gender" value="${user.gender}" readonly>
        </div>

        <div class="form-group full-width">
            <label>Address:</label>
            <input type="text" name="address" value="${user.address}">
        </div>

    </div>

    <div class="action-container">
        <button type="submit">Update Profile</button>
        <a href="/profile">Done</a>
    </div>

    <c:if test="${not empty msg}">
        <div class="status-msg">${msg}</div>
    </c:if>

</form>