<%@page contentType="text/html" pageEncoding="UTF-8"  import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
    </head>
<body>
       <%
       int a=Integer.parseInt(request.getParameter("pid"));
       String b=request.getParameter("pname");
       int c=Integer.parseInt(request.getParameter("brandid"));
       String d=request.getParameter("img");
       int e=Integer.parseInt(request.getParameter("size"));
       int f=Integer.parseInt(request.getParameter("price"));
       int g=Integer.parseInt(request.getParameter("qty"));
       String h=request.getParameter("desc");
       try
       {  
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
       PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?,?,?)");
       ps.setInt(1, a);
       ps.setString(2, b);
       ps.setInt(3, c);
       ps.setString(4, d);
       ps.setInt(5, e);
       ps.setInt(6, f);
       ps.setInt(7, g);
       ps.setString(8, h);
       ps.executeUpdate();
       con.close();
       }catch(Exception msg)
       {;
        }
       response.sendRedirect("Viewproduct.jsp");
       %>
</body>
</html>
