<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Data</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<style>
.nice{
padding:2%;
}
</style>
<body>
<nav class="navbar navbar-expand-lg  navbar-dark bg-dark"  style="font-size: x-large;">
  <a class="navbar-brand" href="#">Dog Adoption</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="AdminDashboard.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      
    </ul>
 
  </div>
</nav>



<br>
<div class="nice">
<br>
<h2>Admin Details:</h2>
<form  action="addAdminData" method="post">
<input type="submit" class="btn btn-primary" value="Add Admin">
</form>
<br>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th  scope="col">Id</th>
        <th  scope="col">Name</th>
        <th  scope="col">Email</th>
         <th scope="col">Password</th>
        <th  scope="col">Edit</th>
        <th scope="col">Delete</th>
    </tr>
    </thead>
    <tbody>
   
    <c:forEach var="renter" items="${admin}">
    <form action="updateForm" method="post">
     <tr>
   <td scope="row"> <input type="hidden" value="${renter.id}" name="id">${renter.id}</td>
   <td><input type="hidden" value="${renter.name}" name="name">${renter.name}</td>
   <td><input type="hidden" value="${renter.email}" name="email">${renter.email}</td>
   <td><input type="hidden" value="${renter.password}" name="password">${renter.password}</td>
   <td><input type="submit" class="btn btn-warning"  value="Edit" ></form></td>
   <td>
    <form action="deleteForm" method="post">
    <input type="hidden" value="${renter.id}" name="id">
   <input type="submit" class="btn btn-danger"   value="Delete" ></form>
   </td>
</tr>  

</c:forEach>

    </tbody>
</table>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>