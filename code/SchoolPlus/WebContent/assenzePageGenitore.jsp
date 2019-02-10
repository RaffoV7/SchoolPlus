<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="head.jsp"></jsp:include>
<meta charset="UTF-8">
<title>Assenze e ritardi</title>
</head>
<body>
	<jsp:include page="navbarGenitore.jsp"></jsp:include>

	<div class="row">
		
		<div class="col-lg-6">
			<div class="card" style="margin: 2em;">
				<h4 class="card-header">Assenze</h4>
				
				<div class="card-body">
					<table class="table table-bordered table-striped">
						<thead style="background-color: #c1c8e4;">
							<tr>
								<th>Data</th>
								<th>Giustifica</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>20/09/2018</td>
								<td><button class="btn btn-secondary mx-3">Aggiungi</button> </td>
							</tr>
						
						</tbody>
					
					</table>
					
				</div>
			</div>
		</div>
		
			<div class="col-lg-6">
			<div class="card" style="margin: 2em;">
				<h4 class="card-header">Ritardi</h4>
				
				<div class="card-body">
					<table class="table table-bordered table-striped">
						<thead style="background-color: #c1c8e4;">
							<tr>
								<th>Data</th>
								<th>Giustifica</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>20/09/2018</td>
								<td><button class="btn btn-secondary mx-3">Aggiungi</button> </td>
							</tr>
						
						</tbody>
					
					</table>
					
				</div>
			</div>
		</div>
	</div>
</body>
<style>
.dot {
	float: right;
	color: white;
	text-align: center;
	height: 25px;
	width: 25px;
	border-radius: 50%;
	display: inline-block;
}

.table span, td:hover {
	background-color: rgba(195, 202, 229, 0.75);
}
</style>
</html>