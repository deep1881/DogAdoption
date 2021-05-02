<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<style>

.carder
{	
margin-left: 177px;
}
</style>
<body onload="myFunction()">

<nav class="navbar navbar-expand-lg  navbar-dark bg-dark"  style="font-size: x-large;">
  <a class="navbar-brand" href="#">Dog Adoption</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      
    </ul>
 
  </div>
</nav>


<div class="alert alert-dark" role="alert" style="font-size: 27px;font-family: sans-serif;margin-top: 23px;text-align: center;">
  Admin Dashboard:-
</div>

<br>
	
<div class="row">	
<div class="card" style="width: 18rem; margin-left: 32px;">
  <img class="card-img-top" src="https://media.istockphoto.com/photos/big-ears-upside-down-picture-id133441603?k=6&m=133441603&s=612x612&w=0&h=pZCu4lgvA0JPkuoTRMUfN1h5W_anmE5SAbvCtqTJ7xw=" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">View Admin</h5>
    <p class="card-text">Click below button to add update and delete admin.</p>
   <form action="adminDD" method="post">
	<button type="submit" class="btn btn-dark">Click Here</button>
    </form>
  </div>
</div>


<div class="card carder" style="width: 18rem;">
  <img class="card-img-top" src="https://images.pexels.com/photos/5731875/pexels-photo-5731875.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Add Dogs</h5>
    <p class="card-text">Click below button to add update and delete dogs.</p>
    <form action=".." method="post">
	<button type="button" class="btn btn-dark">Warning</button>
    </form>
  </div>
 </div>
  
<div class="card carder" style="width: 18rem;">
  <img class="card-img-top" src="https://images.pexels.com/photos/825949/pexels-photo-825949.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">View Feedbacks</h5>
    <p class="card-text">Click here to see all the feedback and modify the changes.</p>
    <a href="#" class="btn btn-dark">Click Here</a>
  </div>
</div>


<div class="card" style="width: 18rem;margin-left: 32px;margin-top: 50px;">
  <img class="card-img-top" src="https://media.istockphoto.com/photos/portrait-of-a-english-bulldog-picture-id168620477?k=6&m=168620477&s=612x612&w=0&h=JomvsXQNBvRonnsUmVV9aZN_BCm4GAKVimaJUK8Z78g=" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">View User</h5>
    <p class="card-text">Click here to see all the User and modify the changes</p>
    <a href="#" class="btn btn-dark">Click Here</a>
  </div>
</div>


</div>

<script>
function myFunction() {

  var executed = false;
  
   if (!executed) {
swal({
  title: "Login Succesfully",
  text: "Welcome to Admin Pannel",
  icon: "success",
});
		executed = true;
	}

}
</script>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>