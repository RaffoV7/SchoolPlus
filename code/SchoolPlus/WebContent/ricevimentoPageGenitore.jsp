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
		$('#ricevimento2').toggle();

		$('#appuntamenti').click(function() {
			$('#ricevimento1').toggle();
			$('#ricevimento2').toggle();
		});

		$('#torna').click(function() {
			$('#ricevimento1').toggle();
			$('#ricevimento2').toggle();
		});

		$('#annullaStoria').click(function() {
			annullaStoria();
		});

		$('#salvaStoria').click(function() {
			salvaStoria();
		});

		$('#annullaMat').click(function() {
			annullaMat();
		});

		$('#salvaMat').click(function() {
			salvaMat();
		});
		$('#annullaBio').click(function() {
			annullaBio();
		});

		$('#salvaBio').click(function() {
			salvaBio();
		});
		$('#annullaLat').click(function() {
			annullaLat();
		});

		$('#salvaLat').click(function() {
			salvaLat();
		});
		
		$("#tabellaInviti").on('click', '.annullaAppuntamento btn btn-primary', function () {
			var row= $(this).closest('tr');

			row.remove();
		});

	});

	function annullaStoria() {
		var r = confirm("Stai per annullare le modifiche. Continuare?");
		if (r == true) {
			alert('Prenotazione non effettuata');
		}
	}

	function salvaStoria() {
		var r = confirm("Sei sicuro di voler prenotare il ricevimento?");
		if (r == true) {

			alert('È stato prenotato un appuntamento con il docente.');
			$('#ricevimento1').toggle();
			$('#ricevimento2').toggle();
			$('#tabellaInviti > tbody:last-child')
					.append(
							'<tr><td>30/10/2018</td><td>8:30</td><td>Prof. B.B.</td><td>Storia</td><td><button class="annullaAppuntamento btn btn-primary" type="button">X</button></td></tr>');
		}
	}

	function annullaMat() {
		var r = confirm("Stai per annullare le modifiche. Continuare?");
		if (r == true) {
			alert('Prenotazione non effettuata');
		}
	}

	function salvaMat() {
		var r = confirm("Sei sicuro di voler prenotare il ricevimento?");
		if (r == true) {

			alert('È stato prenotato un appuntamento con il docente.');
			$('#ricevimento1').toggle();
			$('#ricevimento2').toggle();
			$('#tabellaInviti > tbody:last-child')
					.append(
							'<tr><td>30/10/2018</td><td>10:30</td><td>Prof. F.F.</td><td>Matematica</td><td><button class="annullaAppuntamento btn btn-primary" type="button">X</button></td></tr>');
		}
	}

	function annullaBio() {
		var r = confirm("Stai per annullare le modifiche. Continuare?");
		if (r == true) {
			alert('Prenotazione annullate');
		}
	}

	function salvaBio() {
		var r = confirm("Sei sicuro di voler prenotare il ricevimento?");
		if (r == true) {

			alert('È stato prenotato un appuntamento con il docente.');
			$('#ricevimento1').toggle();
			$('#ricevimento2').toggle();
			$('#tabellaInviti > tbody:last-child')
					.append(
							'<tr><td>30/10/2018</td><td>11:30<td>Prof. B.B.</td><td>Biologia</td><td><button class="annullaAppuntamento btn btn-primary" type="button">X</button></td></tr>');
		}
	}

	function annullaLat() {
		var r = confirm("Stai per annullare le modifiche. Continuare?");
		if (r == true) {
			alert('Prenotazione non effettuata');
		}
	}

	function salvaLat() {
		var r = confirm("Sei sicuro di voler prenotare il ricevimento?");
		if (r == true) {

			alert('È stato prenotato un appuntamento con il docente.');
			$('#ricevimento1').toggle();
			$('#ricevimento2').toggle();
			$('#tabellaInviti > tbody:last-child')
					.append(
							'<tr><td>30/10/2018</td><td>11:30<td>Prof. N.N.</td><td>Latino</td><td><button class="annullaAppuntamento btn btn-primary" type="button">X</button></td></tr>');
		}
	}
</script>
</head>
<body>
	<jsp:include page="navbarGenitore.jsp"></jsp:include>

	<div class="container mt-3" id="ricevimento1">
		<h3 class="text-center">Orario di ricevimento dei docenti</h3>
		<button class="btn btn-primary" id="appuntamenti"
			style="float: right;">I tuoi appuntamenti</button>
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
						<button type="button" class="btn btn-primary buttonRicev"
							data-toggle="modal" data-target="#prenotaRicevimentoStoria">Prenota</button>
					</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>2^</td>
					<td>Prof. F.F. - Matematica
						<button type="button" class="btn btn-primary buttonRicev"
							data-toggle="modal" data-target="#prenotaRicevimentoMat">Prenota</button>
					</td>
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
						<button type="button" class="btn btn-primary buttonRicev"
							data-toggle="modal" data-target="#prenotaRicevimentoBio">Prenota</button>
					</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>4^</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>Prof. N.N. - Latino
						<button type="button" class="btn btn-primary buttonRicev"
							data-toggle="modal" data-target="#prenotaRicevimentoLat">Prenota</button>
					</td>
				</tr>
			</tbody>
		</table>

	</div>


	<div class="container mt-3" id="ricevimento2">
		<h3 class="text-center">I tuoi appuntamenti</h3>

		<button type="button" class="btn btn-primary" id="torna">Torna
			all'orario dei docenti</button>

		<table id="tabellaInviti"
			class="table table-bordered table-striped table-responsive-lg">
			<thead style="background-color: #c1c8e4; text-align: center;">
				<tr>
					<th>Data</th>
					<th>Ora</th>
					<th>Docente</th>
					<th>Materia</th>
					<th>Annulla</th>
				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>

	</div>



	<!-- Modal storia -->
	<div class="modal fade" id="prenotaRicevimentoStoria" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Effettua la
						prenotazione</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<h6>Prof. B.B. - Docente di Storia</h6>
					<p>
						Ore: 08:30 <br> Aula: P6
					</p>

					<div class="form-group">
						<label for="comment">Motivazione richiesta ricevimento:</label>
						<textarea class="form-control" rows="5" cols="2" id="motivazione"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary mx-3"
						data-dismiss="modal" id="annullaStoria">Annulla</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						id="salvaStoria">Prenota</button>
				</div>
			</div>
		</div>
	</div>

	<!-- moodal matematica -->
	<div class="modal fade" id="prenotaRicevimentoMat" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Effettua la
						prenotazione</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<h6>Prof. F.F. - Docente di Matematica</h6>
					<p>
						Ore: 10:30 <br> Aula: P4
					</p>

					<div class="form-group">
						<label for="comment">Motivazione richiesta ricevimento:</label>
						<textarea class="form-control" rows="5" cols="2" id="motivazione"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary mx-3"
						data-dismiss="modal" id="annullaMat">Annulla</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						id="salvaMat">Prenota</button>
				</div>
			</div>
		</div>
	</div>

	<!-- modal biologia -->
	<div class="modal fade" id="prenotaRicevimentoBio" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Effettua la
						prenotazione</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<h6>Prof. E.E. - Docente di Biologia</h6>
					<p>
						Ore: 11:30 <br> Aula: S4
					</p>

					<div class="form-group">
						<label for="comment">Motivazione richiesta ricevimento:</label>
						<textarea class="form-control" rows="5" cols="2" id="motivazione"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary mx-3"
						data-dismiss="modal" id="annullaBio">Annulla</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						id="salvaBio">Prenota</button>
				</div>
			</div>
		</div>
	</div>

	<!-- modal lation -->
	<div class="modal fade" id="prenotaRicevimentoLat" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Effettua la
						prenotazione</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<h6>Prof. N.N. - Docente di Latino</h6>
					<p>
						Ore: 11:30 <br> Aula: F8
					</p>

					<div class="form-group">
						<label for="comment">Motivazione richiesta ricevimento:</label>
						<textarea class="form-control" rows="5" cols="2" id="motivazione"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary mx-3"
						data-dismiss="modal" id="annullaLat">Annulla</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						id="salvaLat">Prenota</button>
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

#ricevimento {
	filter: grayscale(0%);
}
</style>
</html>