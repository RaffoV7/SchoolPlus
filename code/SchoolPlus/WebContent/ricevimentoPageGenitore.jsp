<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prenotazione ricevimento</title>
<jsp:include page="head.jsp"></jsp:include>
<script>
	$(document).ready(function() {

	

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
			alert('Prenotazione annullate');
		}
	}

	function salva() {
		var r = confirm("Sei sicuro di voler prenotare il ricevimento?");
		if (r == true) {

			alert('È stato prenotato un appuntamento con il docente.');
		}
	}

</script>
</head>
<body>
	<jsp:include page="navbarGenitore.jsp"></jsp:include>

	<div class="container mt-3">
		<h3 class="text-center">Orario di ricevimento dei docenti</h3>

		<table class="table table-bordered table-striped table-responsive-lg">
			<thead style="background-color: #c1c8e4; text-align: center;">
				<tr>
					<th></th>
					<th>Lunedì</th>
					<th>Martedì</th>
					<th>Mercoledì</th>
					<th>Giovedì</th>
					<th>Venerdì</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1^</td>
					<td></td>
					<td></td>
					<td>Prof. B.B. - Storia
						<button type="button" class="btn btn-primary buttonRicev" data-toggle="modal"
							data-target="#prenotaRicevimento">Prenota</button></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>2^</td>
					<td>Prof. F.F. - Matematica
						<button type="button" class="btn btn-primary buttonRicev" data-toggle="modal"
							data-target="#prenotaRicevimento">Prenota</button></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>3^</td>
					<td></td>
					<td></td>
					<td>Prof. E.E. - Biologia
						<button type="button" class="btn btn-primary buttonRicev" data-toggle="modal"
							data-target="#prenotaRicevimento">Prenota</button></td>
					<td></td>
					<td>Prof. N.N. - Latino
						<button type="button" class="btn btn-primary buttonRicev" data-toggle="modal"
							data-target="#prenotaRicevimento">Prenota</button></td>
				</tr>
				<tr>
					<td>4^</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>

	</div>

	<!-- Modal -->
	<div class="modal fade" id="prenotaRicevimento" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Effettua la prenotazione</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<h6>Prof. XXX XXXX - Docente di XXXX </h6>
					<p>Ore: xx:xx <br> Aula: xxxxxx</p>
					
					<div class="form-group">
						<label for="comment">Motivazione richiesta ricevimento:</label>
						<textarea class="form-control" rows="5" cols="2" id="motivazione"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary mx-3"
						data-dismiss="modal" id="annulla">Annulla</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"
					id="salva">Prenota</button>
				</div>
			</div>
		</div>
	</div>
</body>

<style>

.btn {
	margin: 1rem;
}
.buttonRicev {
	margin-left: 2rem;
}
</style>
</html>