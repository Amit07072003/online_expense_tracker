<%@page import="com.dao.ExpenseDao"%>
<%@page import="com.entity.Expense"%>
<%@page import="com.entity.User"%>

<%@page import="java.util.*"%>
<%@page import="java.util.ArrayList"%>

<%@page import="com.db.HibernateUtil"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<head>
<!-- Other head elements -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
</head>

<meta charset="ISO-8859-1">
<title>Expense Tracker</title>
<%@include file="../component/all_css.jsp"%>

<style>
td,th{

 border: 1px solid rgb(160 160 160);
  padding: 8px 10px;

}




</style>



<style type="text/css">
.card-sh {
margin: 5%;
 width: auto; /* Adjust as needed */
    background-color: rgba(158, 203, 247, 0.9); /* Dark blue background */
    border-radius: 8px;
    padding: 20px;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); /* Optional: adds shadow for depth */
    color: black; /* Text color */
    font-family: 'Arial', sans-serif; /* Font family */

    /* Fade in animation */
    animation: fadeIn 2s ease-in-out;
}

/* Fade in keyframes */

</style>





</head>
<body
	style="background-image: url('../img/index1.jpg'); background-repeat: no-repeat; background-size: cover;">

	<c:if test="${empty loginUser}">
		<c:redirect url="../login.jsp"></c:redirect>

	</c:if>
	<%@include file="../component/navbar.jsp"%>

	
		<div class="row">
			<div class="col-md-8 offset-md-2">
				
					<div class="ca text-center">
						<p class="fs-1"  style="color: white;font-family: Arial;">All Expenses</p>

						<c:if test="${not empty msg }">
							<p class="text-center text-success fs-4">${msg }</p>
							<c:remove var="msg" />
						</c:if>

					</div>
					

					



  
 

















					


				</div>

			</div>

	
	
	
	 <div class="row">
        <div class="col-sm-6" >	<div class="card-sh">





<table class="table">
						
						
							<thead>
								<tr>
								
									    
									   
									<th scope="col">Title</th>
									<th scope="col">Category</th>
									<th scope="col">Date</th>
									<th scope="col">Time</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th> 
									
								</tr>
								
								
							</thead>
							
							<tbody>



								<%
								User user = (User) session.getAttribute("loginUser");

								ExpenseDao dao = new ExpenseDao(HibernateUtil.getSessionFactory());
								List<Expense> list = dao.getAllExpenseByUser(user);
								int total = 0;
								for (Expense ex : list) {
									total += ex.getPrice();
								%>

								<tr>
									<td scope="row"><%=ex.getTitle()%></td>
									<td><%=ex.getDescription()%></td>
									<td><%=ex.getDate()%></td>
									<td><%=ex.getTime()%></td>
									<td><%=ex.getPrice()%></td>




									 <td><a href="edit_expense.jsp?id=<%=ex.getId()%>"
										class="btn btn-sm btn-primary me-1">Edit</a> <a
										href="../deleteExpense?id=<%=ex.getId()%>"
										class="btn btn-sm btn-danger me-1">Delete</a>
										</td> 
										
										
								</tr>


								<%
								}
								%>




							</tbody>

							<tfoot>


								<tr>
									<th style="font-weight: bold">Total</th>
									<th colspan=3></th>
									<th><%=total%></th>
									<td></td>
									
									
									
								</tr>
							</tfoot>

						</table>






</div>   </div>
        <div class="col-sm-6" >  <div id="chart" class="card-sh"></div>

       
						

						<script>
							Highcharts.setOptions({ chart: {
							    style: {
							        fontFamily: 'Arial', // Change this to your desired font
							        fontWeight: 'bold', // Add this line
							        
							      }
							      // ... other chart configurations ...
							    },
								credits : {
									enabled : false,
									
								},
								
								
							});
							
							
							
						</script>













						<script  >
						
						
						
						
						<%User user1 = (User) session.getAttribute("loginUser");

ExpenseDao dao1 = new ExpenseDao(HibernateUtil.getSessionFactory());
List<Expense> list1 = dao.getAllExpenseByUser(user);
int total1 = 0;
ArrayList<Integer> foodlist = new ArrayList<Integer>();
ArrayList<Integer> rentlist = new ArrayList<Integer>();
ArrayList<Integer> clotheslist = new ArrayList<Integer>();
ArrayList<Integer> travelinglist = new ArrayList<Integer>();

for (Expense ex1 : list1) {
	int price = ex1.getPrice();
	String str1=ex1.getDescription();
	String str2="food";
	String str3="rent";
	String str4="clothes";
	String str5="traveling";
	
	
	if (    str1.equals(str2) ) {
		foodlist.add(price);
	} else {
		foodlist.add(0);
	}
	if ( str1.equals(str3)) {    
		rentlist.add(price);
	} else {
		rentlist.add(0);
	}
	if ( str1.equals(str4)) {
		clotheslist.add(price);
	} else {
		clotheslist.add(0);
	}
	if ( str1.equals(str5)) {
		travelinglist.add(price);
	} else {
		travelinglist.add(0);
	}

}%>
							
							const chart = Highcharts.chart('chart', {
								
								
								
								
								

								chart : {
									type : 'column',
									 backgroundColor: 'rgba(158, 203, 247, 0.5)', 
										
								},

								title : {
									text : 'Category-wise Spending Analysis'  
								},

								legend : {
									align : 'right',
									verticalAlign : 'middle',
									layout : 'vertical'
								},

								xAxis : {
									categories : [ 	<%for (Expense ex : list) {%>'<%=ex.getDate()%>',<%}%>
								
									],
									
									labels : {
										x : -10
									}
								},

								yAxis : {
									allowDecimals : false,
									title : {
										text : 'Price'
									}
								},

								series : [ {
									name : 'Food',
									data :  <%=foodlist%>
								}, {
									name : 'Rent',
									data : <%=rentlist%>
								}, {
									name : 'Clothes',
									data : <%=clotheslist%>
								},

								{
									name : 'Traveling',
									data : <%=travelinglist%>
								},
                                       
								
								{
									name : 'Total',
									data :[ <%=total%>]
								}
								
								],

								responsive : {
									rules : [ {
										condition : {
											maxWidth : 500
										},
										chartOptions : {
											legend : {
												align : 'center',
												verticalAlign : 'bottom',
												layout : 'horizontal'
											},
											yAxis : {
												labels : {
													align : 'left',
													x : 0,
													y : -5
												},
												title : {
													text : null
												}
											},
											subtitle : {
												text : null
											},
											credits : {
												enabled : false
											}
										}
									} ]
								}
							});

							document.getElementById('small').addEventListener(
									'click', function() {
										chart.setSize(400);
									});

							document.getElementById('large').addEventListener(
									'click', function() {
										chart.setSize(600);
									});

							document.getElementById('auto').addEventListener(
									'click', function() {
										chart.setSize(null);
									});
						
						</script>

          </div>
      </div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
</body>
</html>
