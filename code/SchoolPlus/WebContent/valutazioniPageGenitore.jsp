<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="head.jsp"></jsp:include>
<title>Valutazioni studente</title>


<script>
	$(document).ready(function() {
		$('#materieSelect').change(function() {

			$('#myTable > tr').each(function() {

				if ($(this).hasClass($('#materieSelect').val()))
					$(this).show();
				else
					$(this).hide();

			})

		});

	});
</script>


</head>
<body>
	<jsp:include page="navbarGenitore.jsp"></jsp:include>

	<div class="container mt-3">
		<h3 class="text-center">Valutazioni</h3>
		<select class="form-control" id="materieSelect">
			<option selected disabled>Seleziona materia...</option>
			<option value="informatica">Informatica</option>
			<option value="matematica">Matematica</option>
			<option value="geografia">Geografia</option>
			<option value="storia">Storia</option>
		</select> <br>
		<table class="table table-bordered table-striped" id="materie">
			<thead style="background-color: #c1c8e4;">
				<tr>
					<th>Materia</th>
					<th>Orale</th>
					<th>Scritto</th>
					<th>Data</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<tr class="matematica">
					<td>Matematica</td>
					<td>5</td>
					<td>/</td>
					<td>10/10/2018</td>
				</tr>
				<tr class="matematica">
					<td>Matematica</td>
					<td>/</td>
					<td>6</td>
					<td>15/10/2018</td>
				</tr>
				<tr class="informatica">
					<td>Informatica</td>
					<td>/</td>
					<td>7</td>
					<td>07/11/2018</td>
				</tr>
				<tr class="geografia">
					<td>Geografia</td>
					<td>6</td>
					<td>/</td>
					<td>12/11/2018</td>
				</tr>
				<tr class="storia">
					<td>Storia</td>
					<td>4</td>
					<td>/</td>
					<td>23/11/2018</td>
				</tr>
				<tr class="informatica">
					<td>Informatica</td>
					<td>8</td>
					<td>/</td>
					<td>28/11/2018</td>
				</tr>
				<tr class="geografia">
					<td>Geografia</td>
					<td>9</td>
					<td>/</td>
					<td>30/11/2018</td>
				</tr>
				<tr class="storia">
					<td>Storia</td>
					<td>7</td>
					<td>/</td>
					<td>10/12/2018</td>
				</tr>
				<tr class="informatica">
					<td>Informatica</td>
					<td>10</td>
					<td>/</td>
					<td>19/12/2018</td>
				</tr>

			</tbody>
		</table>

	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
<style>
#valutazioni {
	filter: grayscale(0%);
}
</style>
</html>