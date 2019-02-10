<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#scrutini {
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
		var assenze;
		var voto;
		var td;
		$('td').click(function() {
			td = $(this);

		});

		$('#annulla').click(function() {
			annulla();
		});

		$('#salvaVoto').click(function() {
			voto=salvaVoto();
			td.append('<label>'+voto+'</label>');
		});
		
		$('#salvaAssenze').click(function(){
			assenze=salvaAssenze();
			td.append('<label>'+assenze+'</label>');

		});
		
		$('#numeroAss').focusout(function(){
			var numero= $('#numeroAss').val();
			var numval = /^[0-9][0-9]?$/;
			if (!numero.match(numval)) alert('Inserire solo numeri da 0 a 99 per la data');
		});
	});

	function annulla() {
		var r = confirm("Vuoi annullare l'operazione?");
		if (r == true) {
			alert('Operazione annullata');
		}
	}

	function salvaVoto() {
		var r = confirm("Sei sicuro di voler aggiungere questa valutazione all'alunno?");
		if (r == true) {
			voto = $('#votoInserito').val();
			
			console.log(voto);
			
			alert('Le modifiche sono state salvate correttamente.');
			$('#votoInserito').val("");
			return voto;
		}
	}
	
	function salvaAssenze() {
		var r = confirm("Sei sicuro di voler aggiungere questa valutazione all'alunno?");
		if (r == true) {
			assenze = $('#numeroAss').val();
			
			alert('Le modifiche sono state salvate correttamente.');
			$('#numeroAss').val("");
			return assenze;
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
					<th scope="col">Assenze P.Q.</th>
					<th scope="col">Scritto P.Q.</th>
					<th scope="col">Orale P.Q.</th>
					<th scope="col">Assenze S.Q.</th>
					<th scope="col">Scritto S.Q.</th>
					<th scope="col">Orale S.Q.</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Corinaldesi Marianna</td>
					<td data-toggle="modal" data-target="#aggiungiAssenze"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiAssenze"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

				</tr>
				<tr>
					<td>Cuccurullo Alessio</td>
					<td data-toggle="modal" data-target="#aggiungiAssenze"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiAssenze"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>


				</tr>
				<tr>
					<td>Giorno Giovanna</td>
					<td data-toggle="modal" data-target="#aggiungiAssenze"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiAssenze"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

				</tr>
				<tr>
					<td>Giuliano Francesco</td>
					<td data-toggle="modal" data-target="#aggiungiAssenze"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiAssenze"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

				</tr>
				<tr>
					<td>Vitiello Raffaele</td>
					<td data-toggle="modal" data-target="#aggiungiAssenze"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiAssenze"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

				</tr>
				<tr>
					<td>Veniero Vincenzo</td>
					<td data-toggle="modal" data-target="#aggiungiAssenze"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiAssenze"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

					<td data-toggle="modal" data-target="#aggiungiVoto"></td>

				</tr>
			</tbody>
		</table>
	</div>

	<div class="modal fade" id="aggiungiAssenze" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Aggiungi
						assenze allo studente</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					
	
					<label>Assenze del primo quadrimestre:</label>
					<input id="numeroAss" type="text" placeholder="Numero di assenze">

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary mx-3"
						data-dismiss="modal" id="annulla">Annulla</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						id="salvaAssenze">Salva</button>
				</div>
			</div>
		</div>
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
						</select>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary mx-3"
						data-dismiss="modal" id="annulla">Annulla</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						id="salvaVoto">Salva</button>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
