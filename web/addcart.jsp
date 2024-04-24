<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add to cart</title>
        <link rel="stylesheet" href="display.css">
        
  <link rel="stylesheet" href="Ahome.css">
	<link rel="stylesheet" 
	 href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
	 <style type="text/css"> .heading .a{color: #2691d9}</style>
    </head>
    <body>
        <header>
		
		<div class="bx bx-menu"id="menu-icon"></div>
		<ul class="navbar">
			<li><a href="custviewprod.jsp">Home</a></li>
			<li><a href="#">Cart</a></li>
			<li><a href="#">Shop</a></li>
                        <li><a href="Adminprofile.jsp">Profile</a></li>
		</ul>
		<div href="#" class="header-btn">
			<a href="Customerhome.jsp" class="sign-in">Log Out</a>
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
                
            <th>Product</th>
             <th>img</th>
            <th>Detail</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Remove</th>
            </tr>    
             <%!int z=0;%>
        <%
//         try{
//
//             Class.forName("org.apache.derby.jdbc.ClientDriver");
//             Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
//             Statement st=con.createStatement();
//             ResultSet rs=st.executeQuery("select * from cart");
//              int z=0;
//             while(rs.next())
//             {
//               z=z+1;
//             }
//         }catch(Exception e){}
        
        %>    
   <%
   
       String a=(String)session.getAttribute("username");
       int b=Integer.parseInt(request.getParameter("pid"));
//       String c=request.getParameter("pname");
//       int d=Integer.parseInt(request.getParameter("price"));
//       String e=request.getParameter("img");
//       String f=request.getParameter("desc");
//       int g=Integer.parseInt(request.getParameter("qty"));
//       int h=Integer.parseInt(request.getParameter("size"));
//int z=0;
try
       { 
           Class.forName("org.apache.derby.jdbc.ClientDriver");
      Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from product where pid="+b);
      
//        z=z+1;
      while(rs.next())
      {      
//         if (rs.getInt(3)!=b)
//          {
             
      Class.forName("org.apache.derby.jdbc.ClientDriver");
//       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
       PreparedStatement ps=con.prepareStatement("insert into cart values(?,?,?,?,?,?,?)");
       ps.setInt(1, z++);  
       ps.setString(2, a);
         ps.setInt(3, b);
         ps.setString(4, rs.getString(2));
          ps.setString(5, rs.getString(4));
         ps.setInt(6, rs.getInt(6));
         ps.setString(7, rs.getString(8));
         ps.executeUpdate();
//         z=z+1;
         con.close();
      }
//         else
//      {
//              response.sendRedirect("custviewprod.jsp");
//              }
//       }
      
         }catch(Exception msg)
         {;
          }
      response.sendRedirect("custviewprod.jsp");
       
%>
    </body>
   
</html>