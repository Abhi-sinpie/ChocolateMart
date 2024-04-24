<%@page contentType="text/html" pageEncoding="UTF-8"  import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Brand</title>
    </head>
<body>
       <%
       int a=Integer.parseInt(request.getParameter("bid"));
       String b=request.getParameter("bname");
       try
       {  
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
       PreparedStatement ps=con.prepareStatement("insert into brand values(?,?)");
         ps.setInt(1, a);
         ps.setString(2, b);
         ps.executeUpdate();
         con.close();
         }catch(Exception msg)
         {;
          }
      response.sendRedirect("Viewbrand.jsp");
       %>
</body>
</html>
