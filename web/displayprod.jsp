<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product</title>
        <link rel="stylesheet" href="display.css">
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
            <%  
                String a=(String)session.getAttribute("username");
       int b=Integer.parseInt(request.getParameter("pid"));
                 try
    {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from product where pid="+b);
while(rs.next())
      {
//       String c=request.getParameter("pname");
//       int d=Integer.parseInt(request.getParameter("price"));
//       String e=request.getParameter("img");
//       String f=request.getParameter("desc");
//       int g=Integer.parseInt(request.getParameter("qty"));
//       int h=Integer.parseInt(request.getParameter("size"));
       out.print("<div class=box>");
       out.print("<center><div class=box><div class=box-img><img border=2px height=300 width=300 src='"+rs.getString(4)+"'></div>");
       out.print("<br><b>Chocolate Name:   "+rs.getString(2)+"<br><br>");
       out.print("Quantity:"+rs.getInt(7)+"g<br><br>");
       out.print("Price:  "+rs.getInt(6)+"<br><br>");
        int g=rs.getInt(7);
       if(g!=0)
        {
            out.print("Remender:"+g+"<br><br>");
             out.print(rs.getString(8)+"<br><br><br><br>");
       out.print("<a class=btn href=addcart.jsp?pid="+b+">Add cart</a>  &nbsp;&nbsp;&nbsp;");
//out.print(" <section class=services id=services><div class=services-container><div class=box><div class=box>");
//out.print("<center><b style=color:red;font-size:30px;>Add to cart succesful</b><br><br><br><br>");
//out.print("<a href=custviewprod.jsp><b style=font-size:20px;>Go to Home Page</a>");
//out.print("&nbsp;&nbsp;&nbsp;&nbsp;<a href=Viewcart.jsp?pid="+g+">View cart</a>");
//      out.print("</div></div></div> </section>");
       
out.print("  <a class=btn href=Buynow.jsp?pid="+b+">Buynow</a>");
      
         }
       else
        {
    out.print("Out of Stock<br><br>");
    out.print("  <a class=btn href=custviewprod.jsp>Go Back Home Page</a>");
        }
//       out.print(rs.getString(8)+"<br><br><br><br>");
//       out.print("<a class=btn href=addcart.jsp?pid="+b+">Add cart</a>  &nbsp;&nbsp;&nbsp;");
//       out.print("  <a class=btn href=Buynow.jsp?pid="+b+">Buynow</a>");
      }
    }catch(Exception e){}
       
%>
    </body>
</html>