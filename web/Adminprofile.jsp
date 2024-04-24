<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Profile</title>
        <link rel="stylesheet" href="display.css">
        <link rel="stylesheet" href="Ahome.css">
        <!--<link rel="stylesheet" href="Alogin.css">-->
    </head>
<body>
    <%
    if(session.getAttribute("uname")==null)
    {
    response.sendRedirect("Alogin.jsp");
    }
    %>
        <header>		
		<div class="bx bx-menu"id="menu-icon"></div>
		<ul class="navbar">
			<li><a href="adminhome.jsp">Home</a></li>
			<li><a href="oproduct.jsp">Product</a></li>
			<li><a href="obrand.jsp">Brand</a></li>
                        <li><a href="ocustomer.jsp">Customer</a></li>
                        <li><a href="ostock.jsp">Stock</a></li>
                        <li><a href="Adminprofile.jsp">Profile</a></li>
		</ul>
		<div href="#" class="header-btn">
		<a href="alogout.jsp" class="sign-in">Log Out</a>
		</div>
	</header>
        
<div>
    <h1 style="text-align: center;color: #2691d9">Profile</h1><br>
    <table id="tablecss">
        <tr>
	<th colspan="3" >DETAIL</th>             
	</tr>
    <%  
        String a=(String)session.getAttribute("uname");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab"); 
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from ares where username='"+a+"'");
        while(rs.next())
      { 
        out.print("<tr><td>1</td><td>Username</td><td>"+rs.getString(1)+"</b></a></td></tr>");
        out.print("<tr><td>2</td><td>Email</td><td>"+rs.getString(2)+"</b></a></td></tr>");
        out.print("<tr><td>3</td><td>Mobile number</td><td>"+rs.getString(3)+"</b></a></td></tr>");
        out.print("<tr><td>4</td><td>Password</td><td>"+rs.getString(4)+"</b></a></td></tr></table>");
        out.print("<center><div href=# class=header-btn><a href=Aeditprofile.jsp class=sign-in>Edit</a></div>");
        }
    %>    
</body>
</html>