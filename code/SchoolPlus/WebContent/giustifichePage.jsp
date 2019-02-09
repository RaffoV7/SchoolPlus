<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#giustifiche{
filter: grayscale(0%);
}
</style>
<jsp:include page="head.jsp"></jsp:include>
<title>Giustifiche</title>
</head>
<body>
	<jsp:include page="navbarDocente.jsp"></jsp:include>
	<div class="row">
	<div class="container col-lg-6" style="padding: 5rem;">
		<table class="table table-striped" style="border: 1px solid #5ab9ea">
		<thead style="background-color: #c1c8e4;">
				<tr>
					<th scope="col">Lista studenti</th>			
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Corinaldesi Marianna</td>		
				</tr>
				<tr>
					<td>Cuccurullo Alessio</td>				
				</tr>
				<tr>
					<td>Giuliano Francesco<span class="dot" style="background-color: red;">1</span></td>	
				</tr>
				<tr>
					<td>Vitiello Raffaele</td>	
				</tr>
				<tr>
					<td>Veniero Vincenzo<span class="dot" style="background-color: red;">4</span></td>
							
				</tr>
				<tr>
					<td>Giorno Giovanna</td>		
				</tr>
			</tbody>
		</table>
	</div>
	
	<div class="container col-lg-6" style="padding: 5rem;">
		<div class="card" style="padding: 9rem;">
			 <div class="card-body">Clicca sul nome di uno studente</div>
		</div>
	
	</div>
	
</div>
</body>
<style>
.dot{
		float: right;
		color: white;
		text-align: center;
		height: 25px;
  		width: 25px;
 	 	border-radius: 50%;
  		display: inline-block;
	}
	
.table span,td:hover{
	background-color: rgba(195, 202, 229, 0.75);
	}
</style>
</html>
