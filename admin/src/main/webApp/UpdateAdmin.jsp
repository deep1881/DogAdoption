<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Admin</title>
</head>
<style>

.asd{
font-size: 28px;
}


</style>
<body>
<center>
<h3>Update Here</h3>
<form action="UpdateAdminData" method="post">
<label class="asd">Dog Id</label><br>

<input type="text" value="${admin.id}" name="id" style="font-size: x-large " readonly="readonly"><br>
<label class="asd">Admin Name</label><br>
<input type="text" value="${admin.name}" name="name" style="font-size: x-large "><br>

<label class="asd">Email</label><br>
<input type="text" value="${admin.email}" name="email" style="font-size: x-large "><br>

<label class="asd">Password</label><br>
<input type="text" value="${admin.password}" name="password" style="font-size: x-large "><br>

<input type="submit" value="Update"  style="font-size: 24px;">
</form>
</center>
</body>
</html>