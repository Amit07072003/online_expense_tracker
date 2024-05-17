
<%@page isELIgnored="false"%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-lg navbar-light bg-info" >


 <style>
        .navbar {
            position: sticky;
            top: 0;
            width: 100%;
            z-index: 100; /* Ensure it sits over other content */
        }
    </style>



	<div class="container-fluid">






		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">

			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp"> </a></li>



				<c:if test="${not empty loginUser }">
					<li class="nav-item"><a class="nav-link active"
						href="add_expense.jsp"><i class="fa-solid fa-plus"></i></i>Add
							Expense</a></li>

					<li class="nav-item"><a class="nav-link active"
						href="view_expense.jsp" tabindex="-1"><i
							class="fa-solid fa-list"></i></i>View Expense</a></li>



				</c:if>

			</ul>

			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<c:if test="${not empty loginUser }">

					<li class="nav-item"><a class="nav-link active" href="#"></i><i
							class="fa-solid fa-circle-user"></i> ${loginUser.fullName }</a></li>

					<li class="nav-item"><a class="nav-link active"
						href="../logout" tabindex="-1"><i
							class="fa-solid fa-right-to-bracket"></i></i>Logout</a></li>

				</c:if>

				<c:if test="${ empty loginUser }">


					<a class="navbar-brand" href="index.jsp"
						style="position: absolute; left: 0;"><i
						class="fa-solid fa-hand-holding-dollar"></i>Expense Tracker</a>



					<li class="nav-item"><a class="nav-link active"
						href="login.jsp"><i class="fa-solid fa-right-to-bracket"></i>Login</a></li>

					<li class="nav-item"><a class="nav-link active"
						href="register.jsp" tabindex="-1"><i
							class="fa-solid fa-user-plus"></i>Register</a></li>
				</c:if>
			</ul>

		</div>
	</div>
</nav>
