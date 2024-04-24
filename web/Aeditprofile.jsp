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
    <form action="Aeditprofilecode.jsp">
<%  
        String a=(String)session.getAttribute("uname");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab"); 
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from ares where username='"+a+"'");
        while(rs.next())
        {
            out.print("<tr><td>1</td><td>Username</td><td><input type=text name=txt1 value="+rs.getString(1)+" style=font-size:20px;height:50px;width:350px; />"+ "</b></td></tr>");
            out.print("<tr><td>2</td><td>Email</td><td><input type=email name=txt2 value="+rs.getString(2)+"  style=font-size:20px;height:50px;width:350px; </b></td></tr>");
            out.print("<tr><td>3</td><td>Mobile number</td><td><input type=number name=txt3 value="+rs.getString(3)+" style=font-size:20px;height:50px;width:350px; </td></tr>");
            out.print("<tr><td>4</td><td>Password</td><td><input type=text name=txt4 value="+rs.getString(4)+" style=font-size:20px;height:50px;width:350px; </td></tr></table>");
            out.print("<center><div href=# class=header-btn><input type=submit value=Edit class=sign-in style=width:50px;font-size:15px;padding:10px 10px;/></div>");
        }
%>

    </form>  </table>      
</body>
</html>