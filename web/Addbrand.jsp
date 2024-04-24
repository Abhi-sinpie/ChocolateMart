<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Brand</title>
        <link rel="stylesheet" href="Alogin.css" />
    </head>
<body style="background-image: url('bgimg.jpg')">
    <form action="Addbrandcode.jsp">
    <div class="box">
        <h2>Add Brand</h2>
        <%!int c=0;%>
        <%
         try{

             Class.forName("org.apache.derby.jdbc.ClientDriver");
             Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("select * from brand");
             while(rs.next())
             {
               c=rs.getInt(1);
             }
         }catch(Exception e){}
        
        %>
            <div class="inputBox">
                <input type="number" name="bid" required="" value=<%=c+1%> disable/>
                <label>Brand Id</label>
            </div>
            <div class="inputBox">
                <input type="text" name="bname" required="" />
                <label>Brand Name</label>
            </div><center>
            <div class="inputBox2">
            <input type="submit" name="" value="Add" center class="btn btn-submit" /></center>
    </div>
    </form>
    </div>    
</body>
</html>
