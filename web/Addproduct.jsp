<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
        <link rel="stylesheet" href="Alogin.css" />
    </head>
<body style="background-image: url('bgimg.jpg')">
    <form action="Addproductcode.jsp">
    <div class="box">
        <h2>Add Product</h2>
        <%!int c=0;%>
        <%
         try{
             Class.forName("org.apache.derby.jdbc.ClientDriver");
             Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("select * from product");
             while(rs.next())
             {
               c=rs.getInt(1);
             }
            }catch(Exception e){}
        %>              
        <div class="inputBox">
                <input type="number" name="pid" required="" value=<%=c+1%> disable/>
                <label>Product Id</label>
        </div>
        <div class="inputBox">
                <input type="text" name="pname" required="" />        
                <label>Chocolate Name</label>
        </div>
        <div class="inputBox">
                <label>Brand Name</label><br><br>
                <select name="brandid" style="width: 300px">
        <%              
         try{
             Class.forName("org.apache.derby.jdbc.ClientDriver");
             Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("select * from brand");
             while(rs.next())
             {
                out.print("<option value="+rs.getInt(1)+">"+rs.getString(2)+" </option>");
             }
            }catch(Exception e){}
         %>
                </select><br>
        </div>
        <div class="inputBox">
            <p style="color: white">Add Product Image</p>
            <label></label>    
            <input type="file" name="img" required="" />                
        </div>
        <div class="inputBox">
                <input type="number" name="size" required="" />
                <label>Size</label>
        </div><center>
        <div class="inputBox">
                <input type="number" name="price" required="" />
                <label>Price</label>
        </div><center>
        <div class="inputBox">
                <input type="number" name="qty" required="" />
                <label>Quantity</label>
        </div><center>
        <div class="inputBox">
                <input type="text" name="desc" required="" style="height:120px; width:322px;" />
                <label>Description</label>
        </div><center>
        <div class="inputBox2">
             <input type="submit" name="" value="  Add" center class="btn btn-submit" /></center>
        </div>
    </div> 
    </form>   
</body>
</html>
