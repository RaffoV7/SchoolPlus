<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="head.jsp"></jsp:include>
<title>Valutazioni studente</title>


<script>
	$(document).ready(
			function() {
				$("#myInput").on(
						"keyup",
						function() {
							var value = $(this).val().toLowerCase();
							$("#myTable tr").filter(
									function() {
										$(this).toggle(
												$(this).text().toLowerCase()
														.indexOf(value) > -1)
									});
						});
			});
</script>


</head>
<body>
	<jsp:include page="navbarGenitore.jsp"></jsp:include>

	<div class="container mt-3">
		<h3 class="text-center">Valutazioni</h3>
		<input class="form-control" id="myInput" type="text"
			placeholder="Materia.."> <br>
		<table class="table table-bordered table-striped">
		<thead style="background-color: #c1c8e4;">
				<tr>
					<th>Materia</th>
					<th>Orale</th>
					<th>Scritto</th>
					<th>Data</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<tr>
					<td>Matematica</td>
					<td>5</td>
					<td>/</td>
					<td>10/10/2018</td>
				</tr>
				<tr>
					<td>Matematica</td>
					<td>/</td>
					<td>6</td>
					<td>15/10/2018</td>
				</tr>
				<tr>
					<td>Informatica</td>
					<td>/</td>
					<td>7</td>
					<td>07/11/2018</td>
				</tr>
				<tr>
					<td>Geografia</td>
					<td>6</td>
					<td>/</td>
					<td>12/11/2018</td>
				</tr>
				<tr>
					<td>Storia</td>
					<td>4</td>
					<td>/</td>
					<td>23/11/2018</td>
				</tr>
				<tr>
					<td>Informatica</td>
					<td>8</td>
					<td>/</td>
					<td>28/11/2018</td>
				</tr>

			</tbody>
		</table>

	</div>


</body>
</html>