<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>

<style type="text/css">
.form{
display:block;
height:75vh;
margin:50px auto;
width:25vw;
border: 2px solid;
background-color:	darkseagreen;
box-shadow: 1px 1px 5px black;
border-radius:15px;
}
body{
background-color:darkkhaki
}
.form h1{
text-align:center;
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
	
	<div class="form">
		<h1>Register Here</h1>
	<form action="reg" class="main" method="post">
	Eid      :  <br>
	<input type="number" name="id" placeholder="Enter Id" > <br/> <br/>
	Name     :   <br>
	<input type="text" name="name" placeholder="Enter Name" > <br/> <br/>
	Email    :  <br>
	<input type="email" name="email" placeholder="Enter Email" > <br/> <br/>
	Salary   :  <br>
	<input type="text" name="salary" placeholder="Enter Salary" ><br/> <br/>
	Dno      :  <br>
	<input type="number" name="dno" placeholder="Enter dno" > <br/> <br/>
	Password :  <br>
	<input type="text" name="password" placeholder="Enter password" > <br/><br/>
	<button type="submit"> Register</button>
	</form>
	
	</div>
</body>
</html>