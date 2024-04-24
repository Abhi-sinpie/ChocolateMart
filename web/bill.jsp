<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<html>
    <head>
        <title>View cart</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
        <!--<link rel="stylesheet" href=""-->
        <link rel="stylesheet" href="display.css">
	<link rel="stylesheet" 
	 href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
	 <style type="text/css"> .heading .a{color: #2691d9}</style>
         <style>
        body{
            background-color: #F6F6F6; 
            margin: 0;
            padding: 0;
        }
        h1,h2,h3,h4,h5,h6{
            margin: 0;
            padding: 0;
        }
        p{
            margin: 0;
            padding: 0;
        }
        .container{
            width: 80%;
            margin-right: auto;
            margin-left: auto;
        }
        .brand-section{
           background-color: #0d1033;
           padding: 10px 40px;
        }
        .logo{
            width: 50%;
        }

        .row{
            display: flex;
            flex-wrap: wrap;
        }
        .col-6{
            width: 50%;
            flex: 0 0 auto;
        }
        .text-white{
            color: #fff;
        }
        .company-details{
            float: right;
            text-align: right;
        }
        .body-section{
            padding: 16px;
            border: 1px solid gray;
        }
        .heading{
            font-size: 20px;
            margin-bottom: 08px;
        }
        .sub-heading{
            color: #262626;
            margin-bottom: 05px;
        }
        table{
            background-color: #fff;
            width: 100%;
            border-collapse: collapse;
        }
        table thead tr{
            border: 1px solid #111;
            background-color: #f2f2f2;
        }
        table td {
            vertical-align: middle !important;
            text-align: center;
        }
        table th, table td {
            padding-top: 08px;
            padding-bottom: 08px;
        }
        .table-bordered{
            box-shadow: 0px 0px 5px 0.5px gray;
        }
        .table-bordered td, .table-bordered th {
            border: 1px solid #dee2e6;
        }
        .text-right{
            text-align: end;
        }
        .w-20{
            width: 20%;
        }
        .float-right{
            float: right;
        }
    </style>
    </head>
  <body>
          

        <form action="custviewprod.jsp"> 
            
<%
    int tot=0,ftotal=0,qty;
String a=(String)session.getAttribute("username");
String b=(String)session.getAttribute("pname");
int c=Integer.parseInt((String)session.getAttribute("price"));
int d=Integer.parseInt(request.getParameter("txt1"));
int f=Integer.parseInt((String)session.getAttribute("qty"));
int g=Integer.parseInt((String)session.getAttribute("pid"));
String h=(String)session.getAttribute("img");
String i=(String)session.getAttribute("desc");
int j=Integer.parseInt((String)session.getAttribute("bid"));
int k=Integer.parseInt((String)session.getAttribute("size"));
tot=c*d;
ftotal=0;
qty=f-d;
ftotal=c*d;
int tax=ftotal/10;
//int tax=0.1*ftotal;
int gtotal=ftotal+tax;
if (qty>=0)
{        
    try
{
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
PreparedStatement ps=con.prepareStatement("update product set pname=?,bid=?,img=?,size=?,price=?,qty=?,descript=? where pid=?");
        {
ps.setString(1, b);
ps.setInt(2, j);
ps.setString(3, h);
ps.setInt(4, k);
ps.setInt(5, c);
ps.setInt(6, qty);
ps.setString(7, i);
ps.setInt(8,g);
ps.executeUpdate();
//con.close();
        }
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from bill where username='"+a+"'");
while(rs.next())
{
//ftotal=rs.getInt(5)+tot;
}
java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());

//int aa;
//aa=Integer.parseInt(gtotal);
PreparedStatement ps1=con.prepareStatement("insert into bill values(?,?,?,?,?,?)");
ps1.setString(1, a);
ps1.setString(2, b);
ps1.setInt(3, c);
ps1.setInt(4, d);
ps1.setInt(5, gtotal);
ps1.setDate(6,currentDate);
ps1.executeUpdate();
con.close();
}

catch(Exception e){}
          Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
    Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from ures where username='"+a+"'");
      while(rs.next())
      {
          out.print("<div class=container><div class=brand-section><div class=row><div class=col-6><h1 class=text-white>Zaik Mart</h1><br><br></div></div></div>");
          out.print("<div class=body-section><div class=row><div class=col-6><p class=sub-heading>Full Name:  "+rs.getString(1)+"</p><p class=sub-heading>Address:  "+rs.getString(3)+"</p><p class=sub-heading>Phone Number:  "+rs.getString(4)+"</p><p class=sub-heading>Email:  "+rs.getString(2)+"</p></div></div></div>");    
//      out.print(rs.getString(1));
//      out.print(rs.getString(2));
//      out.print(rs.getString(3));
      }
      

      out.print("<div class=body-section><h3 class=heading>Ordered Items</h3><br>");
out.print("<table border=1>");
out.print("<table class=table-bordered><thead><tr><th>Product</th><th class=w-20>Price</th><th class=w-20>Quantity</th><th class=w-20>Grandtotal</th></tr></thead><tbody><tr><td>"+b+"</td><td>"+c+"</td><td>"+d+"</td><td>"+ftotal+"</td></tr><tr><td colspan=3 class=text-right>Sub Total</td><td> "+ftotal+"</td></tr><tr><td colspan=3 class=text-right>Tax Total %10</td><td> "+tax+"</td></tr><tr><td colspan=3 class=text-right>Grand Total</td><td> "+gtotal+"</td></tr></tbody></table>");
//out.print("<tr><td>customer Name<tc><td>"+a+"</td></tc></tr>");
//out.print("<tr><td>Product name<tc><td>"+b+"</td></tc></tr>");
//out.print("<tr><td>Price<tc><td>"+c+"</td></tc></tr>");
//out.print("<tr><td>Quantity<tc><td>"+d+"</td></tc></tr>");
//out.print("<tr><td>Total Bill<tc><td>"+ftotal+"</td></tc></tr>");
      out.print("<br><h3 class=heading>Payment Mode: Cash on Delivery</h3></div>");

out.print("<center><b><input type=submit value=Do&nbsp;You&nbsp;want&nbsp;to&nbsp;Continue&nbsp;Shopping style=color:black;background:#16a085;font-size:20px;padding:10px 10px; border-radius: 30px;></tr>");

try
{
int y=Integer.parseInt((String)session.getAttribute("pid"));
Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con1=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
    Statement st1=con1.createStatement();
    st1.executeUpdate("delete from cart where pid="+y);
    con.close();
}catch(Exception e){}


}
else
{
//    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
//    Statement st1=con.createStatement();
//      ResultSet rs=st1.executeQuery("select * from cart where uname='"+a+"'");
//      while(rs.next())
//      
out.print(" <section class=services id=services><div class=services-container><div class=box><div class=box>");
out.print("<center><b style=color:red;font-size:30px;>Invalid Quantity</b><br><br><br><br>");
out.print("<a href=custviewprod.jsp><b style=font-size:20px;>Go to Home Page</a>");
out.print("&nbsp;&nbsp;&nbsp;&nbsp;<a href=Buynow.jsp?pid="+g+">Buy Now</a>");
      out.print("</div></div></div> </section>");

//response.sendRedirect("Viewcart.jsp?fg="+fg);
}
%> 
</div>
</from></body>
</html>
