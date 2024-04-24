<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Customer Details</title>
  <link rel="stylesheet" href="Ahome.css">
  <link rel="stylesheet" href="display.css">	
  <link rel="stylesheet" 
	 href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
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
    <h1 style="text-align: center;color: #2691d9">Customer Details</h1><br>
	<table id="tablecss">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Mobile</th>
        <th>Password</th>
        <th>Confirm Password</th>
      </tr>     
<%
    try
    {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from ures");
      while(rs.next())
      {
         out.print("<tr><tc><td>"+rs.getString(1)+"</td></tc>");
         out.print("<tc><td>"+rs.getString(2)+"</td></tc>");
         out.print("<tc><td>"+rs.getString(3)+"</td></tc>");
         out.print("<tc><td>"+rs.getString(4)+"</td></tc>");
         out.print("<tc><td>"+rs.getString(5)+"</td></tc>");
         out.print("<tc><td>"+rs.getString(6)+"</td></tc>");
      }
    }catch(Exception e){}
%>
       </table>
</div>
   </body>
</html>