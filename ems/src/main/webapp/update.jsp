<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<style type="text/css">
.form{
display:block;
height:60vh;
margin:50px auto;
width:25vw;
border: 2px solid;
background-color:indianred;
box-shadow: 1px 1px 5px black;
border-radius:15px;
}
body{
background-color:lavender;
}

.form h1{
text-align:center;
color:white;
}
.form .main{
margin-left:50px;
}
.main input{
padding:5px;
width:15vw;

}
.main button{
margin-left:70px;
background-color:blue;
font-weight:bold;
padding:10px;
border-radius:5px;
color:white;
}


</style>



</head>
<body>

	<h2> <%= session.getAttribute("name") %> </h2>

		<%
		   Connection con = null;
		   PreparedStatement ps = null;
		   ResultSet rs = null;
		   try{
			   Class.forName("com.mysql.cj.jdbc.Driver");
			   con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","root");
			   ps=con.prepareStatement("select * from emp where id=?");
			   String sid = request.getParameter("id");
			   int id = Integer.parseInt(sid);
			   ps.setInt(1,id);
			   rs=ps.executeQuery();
			   rs.next(); 
		   }
		   catch(Exception e){
			   e.printStackTrace();
		   }
		
		%>
	
	
	
	<div class="form">
	<h1>Update Page</h1>
	
	<form action="update" class="main" method="post">
		<input type="number" value=<%= rs.getInt(1) %> name="id" Placeholder="Enter New Id"> <br> <br>
		<input type="text" value=<%= rs.getString(2) %> name="name" Placeholder="Enter New name">  <br> <br>
		<input type="text" value=<%= rs.getString(3) %> name="email" Placeholder="Enter New email">  <br> <br>
		<input type="text" value=<%= rs.getDouble(4) %> name="salary" Placeholder="Enter New salary"> <br> <br>
		<input type="text" value=<%= rs.getInt(5) %> name="dno" Placeholder="Enter New Department No">  <br> <br>
		<input type="text" value=<%= rs.getString(6)%> name="password" Placeholder="Enter New Password">  <br> <br>
		<button type="submit">Update</button>
	</form>
	</div>
	
	
	

</body>
</html>