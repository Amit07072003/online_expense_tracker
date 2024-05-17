<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Tracker</title>
<%@include file="component/all_css.jsp"%>

<style type="text/css">
.card-sh {
/*margin: 5%;*/
     width:auto% ;  /*  Adjust as needed */
    background-color: rgba(158, 203, 247, 0.5); /* Dark blue background */
    border-radius: 8px;
    padding: 20px;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); /* Optional: adds shadow for depth */
    color: black; /* Text color */
    font-family: 'Arial', sans-serif; /* Font family */

    /* Fade in animation */
    animation: fadeIn 2s ease-in-out;
}
/* Fade in keyframes */
@keyframes fadeIn {
    0% {background-color: transparent;}
    50% {background-color: rgba(158, 203, 247, 0.5);} /* 50% opacity */
    100% {background-color: rgba(158, 203, 247, 0.5);} /* Remains at 50% opacity */
}

</style>


</head>
<body
	style="background-image: url('img/index1.jpg'); background-repeat: no-repeat; background-size: cover;">
	<%@include file="component/navbar.jsp"%>



					
					
					
					<!-- card start -->

<div class="container">
    <div class="row align-items-center vh-100">
        <div class="col-6 mx-auto">
            <div class="card-sh">
                <div class="card-body d-flex flex-column align-items-center">
                   <!--  <p class="card-text">Register</p> -->
                    <h1>Registration</h1>
                        
                      <form action="userRegister" method="post">

							<div class="mb-3">
								<label>Enter Full Name</label><input type="text" name="fullName"
									class="form-control">
							</div>

							<div class="mb-3">
								<label>Email</label><input type="emailt" name="email"
									class="form-control">
							</div>

							<div class="mb-3">
								<label>Password</label><input type="password" name="password"
									class="form-control">
							</div>


							<div class="mb-3">
								<label>About</label><input type="text" name="about"
									class="form-control">
							</div>


							<div>
								<button class="btn btn-info col-md-12">Register</button>
							</div>






						</form>
						
						<div class="row">
							<div class="col-12">
								<hr class="mt-5 mb-4 border-secondary-subtle">
								<p class="m-0 text-secondary text-center">
									Already have an account? <a href="login.jsp"
										class="link-primary text-decoration-none">Sign in</a>
								</p>
							</div>
						</div>
                    
                </div>
            </div>
        </div>
    </div>
</div>


<!-- card end -->
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
				</div>
			</div>

		</div>
	</div>
</body>
</html>