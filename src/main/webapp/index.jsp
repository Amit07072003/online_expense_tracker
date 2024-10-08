<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.db.HibernateUtil"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Expense Tracker</title>

    <%@include file="component/all_css.jsp"%>
   

</head>
<body>

    <%@include file="component/navbar.jsp"%>

    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/index1.jpg" class="d-block w-100 img-fluid" style="height:100vh" alt="img1">
            </div>

            <div class="carousel-item">
                <img src="img/index2.png" class="d-block w-100 img-fluid" style="height:100vh" alt="img2">
            </div>

            <div class="carousel-item">
                <img src="img/index3.png" class="d-block w-100 img-fluid" style="height:100vh" alt="img3">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

</body>
</html>
