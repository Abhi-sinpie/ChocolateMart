<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>User Login</title>
  <link rel="stylesheet" href="Ulogin.css">
</head>
<body style="background-image:url('loginfback.jpg')">
    <form action="Ulogincode.jsp">    
    <div id="login-box">
        <div class="left">
        <h1>Login</h1>
        <input type="text" name="username" required placeholder="Username" />
        <input type="password" name="password" required placeholder="Password" />
        <input type="submit" value="Login" /><br><br><br>
        <div class="button">
             <a href="Ures.jsp" style="        
                padding: 5px 10px;
                font-size: 15px;
                background-color: #16a085;
                color:#FFF;
                text-decoration: none;
                transition: 0.6s;">Sign Up</a>
        </div>
        </div>
        <div class="right" style="background-image:url('login.jpg');">
        </div>
    </div>
    </form>
</body>
</html>