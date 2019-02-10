<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="head.jsp"></jsp:include>

<script>
	$(function() {
		$('#materieSelect').change(function() {
			$('.materia').hide();
			$('#' + $(this).val()).show();
		});
	});
</script>
<meta charset="UTF-8">
<title>Compiti Assegnati</title>
</head>
<body>
	<jsp:include page="navbarGenitore.jsp"></jsp:include>

	<div class="container mt-3">
		<div class="form-group">
			<h3 class="text-center">Compiti per casa</h3>
			<select class="form-control" id="materieSelect">
				<option selected disabled>Seleziona materia...</option>
				<option value="informatica">Informatica</option>
				<option value="matematica">Matematica</option>
				<option value="italiano">Italiano</option>
				<option value="storia">Storia</option>
			</select>
		</div>
		
		<div class="output">
			<div id="informatica" class="materia">
				<table class="table table-bordered table-striped">
					<thead style="background-color: #c1c8e4;">
						<tr>
							<th>Data</th>
							<th>Argomento</th>
							<th>Appunti</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>12/10/2018</td>
							<td>Strutture di controllo</td>
							<td>Esercizi pagina 10</td>
						</tr>
						<tr>
							<td>14/10/2018</td>
							<td>Procedure e funzioni</td>
							<td>Studiare pagina 16</td>
						</tr>
						<tr>
							<td>21/10/2018</td>
							<td>Strutture dati</td>
							<td>Esercizi pagina 25</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<div id="matematica" class="materia">
				<table class="table table-bordered table-striped">
					<thead style="background-color: #c1c8e4;">
						<tr>
							<th>Data</th>
							<th>Argomento</th>
							<th>Appunti</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>16/10/2018</td>
							<td>Goniometria</td>
							<td>Esercizi dal libro di testo</td>
						</tr>
						<tr>
							<td>19/10/2018</td>
							<td>Esercitazione</td>
							<td>Studiare per la prova.</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<div id="italiano" class="materia">
				<table class="table table-bordered table-striped">
					<thead style="background-color: #c1c8e4;">
						<tr>
							<th>Data</th>
							<th>Argomento</th>
							<th>Appunti</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>19/10/2018</td>
							<td>Ugo Foscolo</td>
							<td>Studiare da pagina 20 a pagina 26</td>
						</tr>
						<tr>
							<td>26/10/2018</td>
							<td>Giacomo Leopardi</td>
							<td>Studiare pagina 33</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			
		</div>
	</div>
	
</body>
<style>

.materia{
	display: none;
	}
</style>
</html>