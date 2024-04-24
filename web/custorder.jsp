<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>View Product</title>
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
                    <a href="alogout.jsp" class="sign-in">Log Out</a><br>
		</div>
	</header>
        
<div>
    <h1 style="text-align: center;color: #2691d9">Orders</h1><br>
	<table id="tablecss">
    <tr>
        <!--<th>/th>-->
        <th>Username</th>
        <th>Chocolate Name</th>
        <!--<th>Image</th>-->
        <th>Date</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Total</th>
      </tr>     
<%
    try
    {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from bill");
      while(rs.next())
      {
         out.print("<tr><tc><td>"+rs.getString(1)+"</td></tc>");
         out.print("<tc><td>"+rs.getString(2)+"</td></tc>");
         out.print("<tc><td>"+rs.getDate(6)+"</td></tc>");
         out.print("<tc><td>"+rs.getInt(3)+"</td></tc>");
         out.print("<tc><td>"+rs.getInt(4)+"</td></tc>");
         out.print("<tc><td>"+rs.getInt(5)+"</td></tc>");

      }
    }catch(Exception e){}
%>
       </table>
</div>
   </body>
</html>