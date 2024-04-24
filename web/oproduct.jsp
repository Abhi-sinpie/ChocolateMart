<!DOCTYPE html>
<html>
<head>
	<title>Product Operation</title>
	<link rel="stylesheet" href="Ahome.css">
        <link rel="stylesheet" href="display.css">
        <link rel="stylesheet" 
	 href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
	 
	</head>
<body>
    <%
    if(session.getAttribute("uname")==null)
    {
    response.sendRedirect("Alogin.jsp");
    }
    %>
	 <header>
		
		<div class="bx bx-menu"id="menu-icon"></div>
		<ul class="navbar">
			<li><a href="adminhome.jsp">Home</a></li>
			<li><a href="oproduct.jsp">Product</a></li>
			<li><a href="obrand.jsp">Brand</a></li>
                        <li><a href="ocustomer.jsp">Customer</a></li>
                        <li><a href="ostock.jsp">Stock</a></li>
                        <li><a href="Adminprofile.jsp">Profile</a></li>
		</ul>
		<div href="#" class="header-btn">
			<a href="alogout.jsp" class="sign-in">Log Out</a>
		</div>
	</header>
        
<div>
    <h1 style="text-align: center;color: #2691d9">Product Details</h1><br>
	<table id="tablecss">

		<tr >
			<th colspan="2" >OPERATIONS</th>
			
             
		</tr>
		<tr>
			<td >Add Product</td>
            <td><a href="Addproduct.jsp"><b>click here</b></a></td>
		</tr>
		<tr>
			<td>Edit Product</td>
			
			<td><a href="Editproduct.jsp"><b>click here</b></a></td>
		<tr>
                    <tr>
			<td>Delete Product</td>
			
			<td><a href="Deleteproduct.jsp"><b>click here</b></a></td>
		<tr>
                    <tr>
			<td>View Product</td>
			
			<td><a href="Viewproduct.jsp"><b>click here</b></a></td>
		<tr>
			
	</table>

</body>
</html>