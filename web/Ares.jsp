<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>Admin Resister</title>
    <link rel="stylesheet" href="Alogin.css" />
<!--    <script type="text/javascript">
       
    function validate()
    {
        var x=document.forms[0].elements[3].value();
        number a=x.length;
        if(a!==10)
        {
//            document.getElementById("a").innerHTML="<font color=red>Invalid number";
            return true;
        }
        else
        {
            document.getElementById("a").innerHTML="<font color=red>Invalid number";
            return false;
        }
            
        
    }
    </script>-->
</head>
<body>
    <form action="Arescode.jsp" name="f1" onsubmit="return validate()">
    <div class="box">
        <h2>Resister</h2>
        <div class="inputBox">
        <input type="text" name="username" required="" />
        <label>UserName</label>
    </div>
    <div class="inputBox">
        <input type="email" name="email" required="" />
        <label>Email</label>
    </div>
    <div class="inputBox">
        <input type="number" name="mob" required="" />
        <label>Mobile no</label>
        <!--<p id="a"></p>-->
    </div>
    <div class="inputBox">
        <input type="password" name="password" required="" />
        <label>Password</label>
    </div><center>
    <div class="inputBox">
        <input type="password" name="password2" required="" />
        <label>Confirm Password</label>
    </div><center>
    <div class="inputBox2">
    <input type="submit" name="" value="Sign Up" center class="btn btn-submit" /></center>
    </div>
    </div>
    </form>
</body>
</html>