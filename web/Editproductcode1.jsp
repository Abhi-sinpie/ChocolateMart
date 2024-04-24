<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Product</title>
    </head>
    <body>
<%
int a=Integer.parseInt(request.getParameter("txt1"));
String b=request.getParameter("txt2");
int c=Integer.parseInt(request.getParameter("txt3"));
String d=request.getParameter("txt4");
int e=Integer.parseInt(request.getParameter("txt5"));
int f=Integer.parseInt(request.getParameter("txt6"));
int g=Integer.parseInt(request.getParameter("txt7"));
String h=request.getParameter("txt8");
  try
    {
     Class.forName("org.apache.derby.jdbc.ClientDriver");
     Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
     PreparedStatement ps=con.prepareStatement("update product set pname=?,bid=?,img=?,size=?,price=?,qty=?,descript=? where pid=?"); 
     ps.setString(1,b);
     ps.setInt(2,c);
     ps.setString(3, d);
     ps.setInt(4,e);
     ps.setInt(5,f);
     ps.setInt(6,g);
     ps.setString(7,h);
     ps.setInt(8,a);
     ps.executeUpdate();
     con.close();
     response.sendRedirect("Viewproduct.jsp");
    }
    catch(Exception ej){}
%>
    </body>
</html>