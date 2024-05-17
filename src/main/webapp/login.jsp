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
                  <!--   <p class="card-text">WELCOME</p> -->
                    <h4 >Welcome back you've been missed!</h4>
                        
                        <form action="userLogin" method="post">



							<div class="mb-3">
								<label>Email</label><input type="email" name="email"
									class="form-control">
							</div>

							<div class="mb-3">
								<label>Password</label><input type="password" name="password"
									class="form-control">
							</div>





							<div>
								<button class="btn btn-info col-md-12">Login</button>
								<div class="text-center mt-2">
									Don't have account<a href="register.jsp"
										class="text-decoration-name"> create one</a>







								</div>
							</div>






						</form>
                        
                        
                    
                </div>
            </div>
        </div>
    </div>
</div>


<!-- card end -->

















	<%--  <div class="container">

		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card-sh">
					<div class="card-header">
						<p class="text-center fs-3">Login Page</p>
						<c:if test="${not empty msg }">
							<p class="text-center text-black fs-4">${msg }</p>
							<c:remove var="msg" />
						</c:if>

					</div>
					<div class="card-body">

						<form action="userLogin" method="post">



							<div class="mb-3">
								<label>Email</label><input type="email" name="email"
									class="form-control">
							</div>

							<div class="mb-3">
								<label>Password</label><input type="password" name="password"
									class="form-control">
							</div>





							<div>
								<button class="btn btn-info col-md-12">Login</button>
								<div class="text-center mt-2">
									Don't have account<a href="register.jsp"
										class="text-decoration-name"> create one</a>







								</div>
							</div>






						</form>

					</div>
				</div>
			</div>

		</div>
	</div>
 --%>
 

</body>
</html>