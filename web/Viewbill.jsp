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
            <th>Product Name</th>
            <th>Date</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
            </tr>      
            <%
    try
    {
        int pr=0;
        int qt=0;
        String a=(String)session.getAttribute("username");
        out.print("<center><b>Customer Name : "+a+"</b></center><br><br>");
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from bill where username='"+a+"'");
      while(rs.next())
      {
//         out.print("<tr><tc><td>"+rs.getString(1)+"</td></tc>");
//          pna=rs.getString(4);
//          if 'pna'!="rs.getString(4)"
//          {
//           out.print("<tc><td>"+rs.get(1)+"</td></tc>");
//       out.print("Customer Name : "+a);
          out.print("<tc><td>"+rs.getString(2)+"</td></tc>");
          out.print("<tc><td>"+rs.getDate(6)+"</td></tc>");
//       out.print("<tc><td><img height=100 width=100 src='"+rs.getString(5)+"'></img></td></tc>");
//       out.print("<td><input type=text name=txt1 ></td>");
       out.print("<tc><td>"+rs.getInt(3)+"</td></tc>");
       out.print("<tc><td>"+rs.getInt(4)+"</td></tc>");
       out.print("<tc><td>"+rs.getInt(5)+"</td></tc></tr>");
//       out.print("<td><a href=Removeproduct.jsp?cid="+rs.getInt(1)+">Remove</a></td>");
//       out.print("<td><a href=Buynow.jsp?pid="+rs.getInt(3)+">Buy Now</a></td></tr>");
qt=rs.getInt(4)+qt;
pr=rs.getInt(5)+pr;
//       out.print("<tc><td>"+rs.getString(4)+"</td></tc></tr>");
      }
      out.print("<tr><td>Total</td><td></td><td></td><tc><td>"+qt+"</td></tc>");
      out.print("<tc><td>"+pr+"</td></tc></tr>");
    }catch(Exception e){}
%>
        </table></body></html>