<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>View cart</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
        <link rel="stylesheet" href="display.css">
        
  <link rel="stylesheet" href="Ahome.css">
	<link rel="stylesheet" 
	 href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
	 <style type="text/css"> .heading .a{color: #2691d9}</style>
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
        <section class="services"id="services">
            <div class="heading">
                <h1>CHOCOLATE <span class="a">MART</span></h1></div>
		<div class=services-container>   
                </div>
        </section>
        <table id="tablecss">
            <tr>
                <th>No</th>
            <th>Product</th>
             <th>img</th>
            <th>Detail</th>
            <!--<th>Quantity</th>-->
            <th>Price</th>
            <th>Remove</th>
            <th>Buy now</th>
            </tr>      
            <%
    try
    {
        String a=(String)session.getAttribute("username");
        String pna;
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from cart where uname='"+a+"'");
      while(rs.next())
      {
           out.print("<tc><td>"+rs.getInt(1)+"</td></tc>");
       out.print("<tc><td>"+rs.getString(4)+"</td></tc>");
       out.print("<tc><td><img height=100 width=100 src='"+rs.getString(5)+"'></img></td></tc>");
         out.print("<tc><td>"+rs.getString(7)+"</td></tc>");
       out.print("<tc><td>"+rs.getInt(6)+"</td></tc>");     
       out.print("<td><a href=Removeproduct.jsp?cid="+rs.getInt(1)+">Remove</a></td>");
       out.print("<td><a href=Buynow.jsp?pid="+rs.getInt(3)+"&img="+rs.getString(5)+">Buy Now</a></td></tr>");
      }
//      
    }catch(Exception e){}
//    out.print("<br>");
%>
        </table></body></html>