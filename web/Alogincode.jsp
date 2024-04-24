<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <%
        int f=0;
        String a=request.getParameter("username");
        String b=request.getParameter("password");
        session.setAttribute("uname", a);
         try{
             Class.forName("org.apache.derby.jdbc.ClientDriver");
             Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("select * from areg");
             while(rs.next())
             {
                 if(a.equals(rs.getString(1))&&b.equals(rs.getString(4)))
                 {
                     f=1;
//                    session.setAttribute("Aname", rs.getString(1));
//                    session.setAttribute(, value);
//                 response.sendRedirect("logout.jsp");
                 }
             }
             if (f==1)
             {
                 response.sendRedirect("adminhome.jsp");
             }
             else
                 response.sendRedirect("Alogin.jsp");
        }catch(Exception e){}
    %>
</body>
</html>
