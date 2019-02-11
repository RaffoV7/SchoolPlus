<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="head.jsp"></jsp:include>

<script>
	$(document).ready(function() {

		$('#progCont').text(localStorage.getItem("programma"));

		$('#modificaBtn').click(function() {
			console.log('ive been clicked');
			$('#modProg').val($('#progCont').text());
		});

		$('#annulla').click(function() {
			annulla();
		});

		$('#salva').click(function() {
			salva();
		});


	});

	function annulla() {
		var r = confirm("Stai per annullare le modifiche. Continuare?");
		if (r == true) {
			alert('Modifiche annullate');
		}
	}

	function salva() {
		var data = $('#dataInput').val();
		var r = confirm("Sei sicuro di voler aggiungere questo argomento alla lezione del "
				+ data + "?");
		if (r == true) {
			var argomento = $('#argomento').val();
			$('#argLezioni tr:last').after(
					'<tr><td>' + data + '</td><td>' + argomento + '</td></tr>');
			alert('Hai aggiunto correttamente un nuovo argomento.');
		}
	}

</script>
<meta charset="UTF-8">
<style>
#argomenti {
	filter: grayscale(0%);
}
</style>
<title>Argomenti</title>
</head>
<body>
	<jsp:include page="navbarDocente.jsp"></jsp:include>

	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">

			<table class="table table-striped my-3 table-bordered" id="argLezioni">
				<thead style="background-color: #c1c8e4;">
					<tr>
						<th scope="col">Data della lezione</th>
						<th scope="col">Argomenti trattati</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>08-01-2019</td>
						<td>I tipi primitivi - introduzione</td>
					</tr>
					<tr>
						<td>09-01-2019</td>
						<td>I costrutti "FOR", "WHILE" e "DO WHILE" - introduzione ed
							esercitazione</td>
					</tr>
					<tr>
						<td>10-01-2019</td>
						<td>I costrutti "IF" e "SWITCH" - introduzione ed
							esercitazione</td>

					</tr>
					<tr>
						<td>12-01-2019</td>
						<td>Prova di verifica</td>

					</tr>
					<tr>
						<td>13-01-2019</td>
						<td>Ripetizione sui costrutti iterativi</td>
					</tr>
					<tr>
						<td>14-01-2019</td>
						<td>Realizzare una classe</td>
					</tr>
				</tbody>
			</table>

			<button type="button" class="btn btn-md btn-primary"
				data-toggle="modal" id="modificaBtn" data-target="#aggiungi">Aggiungi
				nuovo</button>
		</div>
	</div>
	<div class="col-md-2"></div>
	<div class="modal fade" id="aggiungi" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Aggiungi
						argomento alla lezione</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="data" class="col-form-label">Data della
								lezione:</label> <input type="date" id="dataInput" placeholder="GG/MM/AAAA"
								required="required"><br> <label for="argomento"
								class="col-form-label">Argomento trattato:</label>
							<textarea class="form-control" id="argomento"
								style="resize: none; height: 150px;"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary mx-3"
						data-dismiss="modal" id="annulla">Annulla</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						id="salva">Salva</button>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
