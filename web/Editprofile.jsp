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
    if(session.getAttribute("username")==null)
    {
    response.sendRedirect("Customerhome.jsp");
    }
    %>
        <header>
            <div class="bx bx-menu"id="menu-icon"></div>
            <ul class="navbar">
		<li><a href="custviewprod.jsp">Home</a></li>
		<li><a href="Viewcart.jsp">Cart</a></li>
		<li><a href="Viewbill.jsp">Shop</a></li>
                <li><a href="Userprofile.jsp">Profile</a></li>
            </ul>
            <div href="#" class="header-btn">
		<a href="ulogout.jsp" class="sign-in">Log Out</a>
            </div>
	</header>
       <div>
        <h1 style="text-align: center;color: #2691d9">Profile</h1><br>
	<table id="tablecss">
            <tr>
                <th colspan="3" >DETAIL</th>             
            </tr>
            <form action="Editprofilecode.jsp">
<%  
        String a=(String)session.getAttribute("username");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab"); 
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from ures where username='"+a+"'");
        while(rs.next())
        {
          out.print("<tr><td>1</td><td>Username</td><td><b><input type=text name=txt1 value="+rs.getString(1)+" style=font-size:20px;height:50px;width:190px; />"+ "</b></td></tr>");
          out.print("<tr><td>2</td><td>Email</td><td><b><input type=email name=txt2 value="+rs.getString(2)+"  style=font-size:20px;height:50px;width:190px; </b></td></tr>");
          out.print("<tr><td>3</td><td>Address</td><td><b><input type=text name=txt3 value="+rs.getString(3)+" style=font-size:20px;height:50px;width:190px; </td></tr>");
          out.print("<tr><td>4</td><td>Mobile number</td><td><b><input type=number name=txt4 value="+rs.getString(4)+" style=font-size:20px;height:50px;width:190px; </td></tr>");
          out.print("<tr><td>5</td><td>Password</td><td><b><input type=text name=txt5 value="+rs.getString(5)+" style=font-size:20px;height:50px;width:190px; </td></tr></table>");
          out.print("<center><div href=# class=header-btn><input type=submit value=Edit class=sign-in style=width:50px;font-size:15px;height=5px;/></div>");
      }
%>
            </form>        
        </body>
</html>