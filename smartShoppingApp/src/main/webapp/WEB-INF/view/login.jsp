

<link rel="stylesheet" href="/login.css">
<link rel="stylesheet" href="/footer.css">
<form action="/loginUser" method="post">
	
	

    <h2>Welcome Back</h2>

    <label>Username</label>
    <input type="text" name="username" placeholder="Enter your username">

    <label>Password</label>
    <input type="password" name="password" placeholder="Enter your password">

    <button type="submit">Login</button>

    <div class="divider">OR</div>

    <div class="extra-links">
        Don't have an account?
        <a href="/register">Create Account</a>
       
    </div>

</form>

<%@ include file="footer.jsp" %>