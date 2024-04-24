<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
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
                <h1>CHOCOLATE <span class="a">MART</span></h1>
            </div>
	<div class=services-container>   
        <%
            int c=0;
try
    {
      Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from product");
      while(rs.next())
      {
          c++;
          out.print("<div class=box>");
    out.print("<div class=box><div class=box-img><img height=250 width=280  src='"+rs.getString(4)+"'></div>");
    out.print("<center><b>Chocolate Name:   "+rs.getString(2)+"<br><br>Price:  "+rs.getString(6)+"<br><br><br><a class=btn href=displayprod.jsp?pid="+rs.getInt(1)+">Details</a>");
      out.print("</div></div>");
      }
      if(c%5==0)
      {     
      out.print("<tr>");
      }
    }catch(Exception e){}
%>        
        </section>
        <section class="footer" >
		
		
		<div class="box">
			<ul><h3 style="color: darkorange">QUICK LINKS</h3></ul>

			<li><a href="#"style="color: white"><b><i class='bx bx-chevron-right'></i>Home</a></li>
			<li><a href="#"style="color: white"><i class='bx bx-chevron-right'></i>Cart</a></li>
			<li><a href="#"style="color: white"><i class='bx bx-chevron-right'></i>Shop</a></li>
			<li><a href="#"style="color: white"><i class='bx bx-chevron-right'></i>About</b></a></li>
		</div>


		<div class="box" >
			<ul><h3 style="color: darkorange">CANTACT LINKS</h3></ul>

			<li><a href="#"><b style="color: white"><i class='bx bxs-phone-call' ></i> +918080580158</b></a></li>
			<li><a href="#"><b style="color: white"><i class='bx bxs-phone-call' ></i> +917378329329</b></a></li>
			<li><a href="#"><b style="color: white"><i class='bx bxs-envelope'></i> abhishekmudata@gmail.com<b></a></li>
			<li><a href="#"><b style="color: white"><i class='bx bxs-envelope'></i> bilalmogal5@gmail.com</b></a></li>
		</div>

		<div class="box">
			<h3 style="color: darkorange">QUICK LINKS</h3><b>

			<li><a href="#" style="color: white"><i class='bx bxl-facebook'></i> facebook</a></li>
			<li><a href="#"style="color: white"><i class='bx bxl-instagram-alt'></i> instagram</a></li></b>
		</div>
	</section>

    </body>
</html>
