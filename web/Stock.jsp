<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Stock</title>
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
    <h1 style="text-align: center;color: #2691d9">Stock</h1><br>
	<table id="tablecss">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Brand Id</th>
        <th>Image</th>
        <th>Size</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Description</th>
      </tr>     
<%
    try
    {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from product where qty>="+1);
      while(rs.next())
      {
         out.print("<tr><tc><td>"+rs.getInt(1)+"</td></tc>");
         out.print("<tc><td>"+rs.getString(2)+"</td></tc>");
         out.print("<tc><td>"+rs.getInt(3)+"</td></tc>");
       out.print("<tc><td><img height=100 width=100 src='"+rs.getString(4)+"'></img></td></tc>");
         out.print("<tc><td>"+rs.getInt(5)+"g</td></tc>");
         out.print("<tc><td>"+rs.getInt(6)+"</td></tc>");
         out.print("<tc><td>"+rs.getInt(7)+"</td></tc>");
         out.print("<tc><td>"+rs.getString(8)+"</td></tc>");
      }
    }catch(Exception e){}
%>
       </table>
</div>
   </body>
</html>