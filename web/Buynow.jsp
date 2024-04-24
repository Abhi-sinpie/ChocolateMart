<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buy Now</title>
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
            <li><a href="Viewbill.jsp   ">Shop</a></li>
            <li><a href=Userprofile.jsp>Profile</a></li>
	</ul>
	<div href="#" class="header-btn">
	<a href="ulogout.jsp" class="sign-in">Log Out</a>
	</div>
    </header>
    <section class="services"id="services">
        <div class="heading">
        <h1>CHOCOLATE <span class="a">MART</span></h1></div>
	<div class=services-container>   
        <form action="bill.jsp">
        <table border="1">

<%
    int s=Integer.parseInt(request.getParameter("pid"));
    String u=(String)session.getAttribute("username");
try
{
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
    Statement st1=con.createStatement();
    ResultSet rs1=st1.executeQuery("select * from ures where username='" +u+"'");
while(rs1.next())
{
    out.print("<div class=box>");
    out.print("<center><b style=font-size:20px;>Customer Name:  "+rs1.getString(1)+"<br><br>");
}
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from product where pid="+s);
    while(rs.next())
    {
        out.print("<center><div class=box><div class=box-img><img border=2px height=300 width=300 src='"+rs.getString(4)+"'></div>");
        out.print("<br><b>Chocolate Id:   "+rs.getInt(1)+"<br>");
        out.print("<br><b>Chocolate Name:   "+rs.getString(2)+"<br>");
        out.print("<br><b>Weight:  "+rs.getInt(5)+"gm<br><br>");
         int g=rs.getInt(7);
       if(g!=0)
        {
            out.print("Remender:"+g+"<br><br>");
         }
       else
        {
    out.print("<b style=color:red;>Out of Stock<br><br></b>");
        }

        out.print("Price:  "+rs.getInt(6)+"<br><br>");
        out.print("Enter Quantity : <input type=number name=txt1  style=padding-top:10px;width=30px;height:30px; required><br><br>");
        out.print("<input type=submit value=Confirm style= border-radius:5px;width:80px;height:40px;color:white;background-color:#2691d9;font-size:15px;padding:10px 10px;text-align:center; name=BuyNow>");
        session.setAttribute("pid", rs.getInt(1)+"");
        session.setAttribute("pname",rs.getString(2)+"");
        session.setAttribute("bid", rs.getInt(3)+"");
        session.setAttribute("img", rs.getString(4)+"");
        session.setAttribute("size", rs.getInt(5)+"");
        session.setAttribute("price", rs.getInt(6)+"");
        session.setAttribute("qty", rs.getInt(7)+"");
        session.setAttribute("desc", rs.getString(8)+"");
    }
}catch(Exception e){}
%>        
        </form>
</body>
</html>