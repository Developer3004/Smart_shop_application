
<link rel="stylesheet" href="/footer.css">
<link rel="stylesheet" href="/register.css">


<form action="/getregister" method="post">
	

    <h2>Create Account</h2>

    <label>Full Name</label>
    <input type="text" name="name" placeholder="Enter your full name">

    <label>Address</label>
    <input type="text" name="address" placeholder="Enter your address">

    <label>Gender</label>

    <div class="gender">
        <input type="radio" id="male" name="gender" value="Male">
        <label for="male">Male</label>

        <input type="radio" id="female" name="gender" value="Female">
        <label for="female">Female</label>
    </div>

    <label>Email</label>
    <input type="email" name="email" placeholder="Enter your email">

    <label>City</label>
    <select name="city">
        <option>Kolhapur</option>
        <option>Pune</option>
        <option>Mumbai</option>
        <option>Bangalore</option>
    </select>

    <label>Username</label>
    <input type="text" name="username" placeholder="Choose a username">

    <label>Password</label>
    <input type="password" name="password" placeholder="Create a password">

    <button type="submit">Create Account</button>

    <div class="login-link">
        Already have an account?
        <a href="/login">Login</a>
    </div>

</form>

<%@ include file="footer.jsp" %>