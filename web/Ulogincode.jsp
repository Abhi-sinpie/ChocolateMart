<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
    <%
        int f=0;
        String a=request.getParameter("username");
        String b=request.getParameter("password");
        session.setAttribute("username", a);
         try{
             Class.forName("org.apache.derby.jdbc.ClientDriver");
             Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("select * from ures");
             while(rs.next())
             {
                 if(a.equals(rs.getString(1))&&b.equals(rs.getString(5)))
                 {
                     f=1;
                 }
             }
             if (f==1)
             {
                 response.sendRedirect("custviewprod.jsp");
             }
             else
                 response.sendRedirect("Ulogin.jsp");
         }catch(Exception e){}
        %>
    </body>
</html>
