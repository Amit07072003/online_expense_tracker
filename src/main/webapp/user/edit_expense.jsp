<%@page import="com.db.HibernateUtil"%>
<%@page import="com.dao.ExpenseDao"%>
<%@page import="com.dao.UserDao"%>
<%@page import="com.entity.Expense"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Tracker</title>
<%@include file="../component/all_css.jsp"%>
<style type="text/css">
.card-body {
	margin: 5%;
 width: 350px; /* Adjust as needed */
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
}
}
</style>

</head>
</head>
<body
	style="background-image: url('../img/index1.jpg'); background-repeat: no-repeat; background-size: cover;">
	<c:if test="${empty loginUser}">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>

	<%
int id=Integer.parseInt(request.getParameter("id"));
ExpenseDao dao=new ExpenseDao(HibernateUtil.getSessionFactory());
Expense ex= dao.getExpenseById(id);

%>



	<%@include file="../component/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card-sh">
					<div class=" card-header text-center">
						<p class="fs-3">Edit Expense</p>



					</div>

					<div class="card-body">
						<form action="../updateExpense" method="post">

							<div class="mb-3">
								<label>Title</label> <input type="text" name="title"
									class="form-control" value="<%=ex.getTitle() %>">
							</div>


							<div class="mb-3">
								<label>Date</label> <input type="date" name="date"
									class="form-control" value="<%=ex.getDate() %>">
							</div>

							<div class="mb-3">
								<label>Time</label> <input type="time" name="time"
									class="form-control" value="<%=ex.getTime() %>">
							</div>



							<div class="mb-3">
								<label for="description">Category</label> <select
									name="description" id="description"
									class="form-control category-dropdown">
									<option value="food"
										<%=ex.getDescription().equals("food") ? "selected" : "" %>>Food</option>
									<option value="rent"
										<%=ex.getDescription().equals("rent") ? "selected" : "" %>>Rent</option>
									<option value="clothes"
										<%=ex.getDescription().equals("clothes") ? "selected" : "" %>>Clothes</option>
									<option value="traveling"
										<%=ex.getDescription().equals("traveling") ? "selected" : "" %>>Traveling</option>
								</select>
							</div>

							<div class="mb-3">
								<label>Price</label> <input type="text" name="price"
									class="form-control" value="<%=ex.getPrice() %>">
							</div>
							<input type="hidden" name="id" value="<%=ex.getId() %>">
							<button class="btn-info col-md-12">Update</button>
						</form>

					</div>
				</div>



			</div>





		</div>


	</div>




</body>
</html>