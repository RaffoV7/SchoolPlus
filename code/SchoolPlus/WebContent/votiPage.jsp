<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#voti {
	filter: grayscale(0%);
}

td:hover {
	background-color: #ffff99
}
</style>
<meta charset="UTF-8">
<jsp:include page="head.jsp"></jsp:include>

<script>
	$(document).ready(function() {
		var voto;
		var td;
		$('td').click(function() {
			td = $(this);

		});

		$('#annulla').click(function() {
			annulla();
		});

		$('#salva').click(function() {
			voto=salva();
			
			td.find('label').remove();
			td.append('<label>'+voto+'</label>');
		});
	});

	function annulla() {
		var r = confirm("Vuoi annullare l'inserimento del voto?");
		if (r == true) {
			alert('Operazione annullata');
		}
	}

	function salva() {
		var r = confirm("Sei sicuro di voler aggiungere questa valutazione all'alunno?");
		if (r == true) {
			voto = $('#votoInserito').val();
			
			console.log(voto);
			
			alert('Le modifiche sono state salvate correttamente.');
			return voto;
		}
	}
</script>


<title>Voti</title>
</head>
<body>
	<jsp:include page="navbarDocente.jsp"></jsp:include>

	<div class="container-fluid p-2">
		<table class="table table-striped table-bordered"
			style="margin-left: auto; margin-right: auto;">
			<thead style="background-color: #c1c8e4;">
				<tr>
					<th scope="col">Studenti</th>
					<th scope="col">20/12</th>
					<th scope="col">21/12</th>
					<th scope="col">08/01</th>
					<th scope="col">09/01</th>
					<th scope="col">10/01</th>
					<th scope="col">12/01</th>
					<th scope="col">13/01</th>
					<th scope="col">14/01</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Corinaldesi Marianna</td>
					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>
					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


				</tr>
				<tr>
					<td>Cuccurullo Alessio</td>
					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


				</tr>
				<tr>
					<td>Giorno Giovanna</td>
					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


				</tr>
				<tr>
					<td>Giuliano Francesco</td>
					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


				</tr>
				<tr>
					<td>Vitiello Raffaele</td>
					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


				</tr>
				<tr>
					<td>Veniero Vincenzo</td>
					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


					<td data-toggle="modal" data-target="#aggiungiVoto"><label style="color:gray">Inserisci voto</label></td>


				</tr>
			</tbody>
		</table>
	</div>


	<div class="modal fade" id="aggiungiVoto" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Aggiungi
						valutazione allo studente</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<label>Voto:</label> <select id="votoInserito"
							class="mb-3 custom-select">
							<option selected="selected">1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
						</select> <label class="radio-inline ml-2"> <input type="radio"
							name="optradio" id="scritto" checked>Scritto
						</label> <label class="radio-inline mx-2"> <input type="radio"
							name="optradio">Orale
						</label>
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