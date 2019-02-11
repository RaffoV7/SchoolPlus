<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#scrutini {
	filter: grayscale(0%);
}

td.addvoto:hover {
	background-color: #ffff99
}
</style>
<meta charset="UTF-8">
<jsp:include page="head.jsp"></jsp:include>

<script>
	$(document).ready(function() {
		var assenze;
		var votoScritto;
		var votoOrale;
		var tr;
		var alunno="";
		
		$('td').click(function() {
			tr = $(this).parent();
			alunno = $(this).children('.alunno').text();
			console.log(alunno);
			
		});

		$('#annulla').click(function() {
			annulla();
		});

		$('#salvaScrutinio').click(function(){
			
			var quad="PQ";
			if($('#pq').prop('checked')==true);
				else quad= "SQ";

			assenze = $('#numeroAss').val();
			votoScritto = $('#votoScritto').val();
			votoOrale = $('#votoOrale').val();
			
			
			var r = confirm("Confermi lo scrutinio dell'alunno "+alunno+"?\nAssenze: "+assenze+"\nVoto scritto: "+votoScritto+"\nVoto orale: "+votoOrale+"");
			if (r == true) {
				alert('Le modifiche sono state salvate correttamente.');
				
					var asscell= tr.find($('.ass'+quad));
					var scrcell= tr.find($('.sc'+quad));
					var oracell= tr.find($('.or'+quad));

					asscell.text(assenze);
					scrcell.text(votoScritto);
					oracell.text(votoOrale);
					
				} else {
					alert('Operazione annullata.');
				}		
			});

		$('#numeroAss').focusout(function() {
			var numero = $('#numeroAss').val();
			var numval = /^[0-9][0-9]?$/;
			if (!numero.match(numval))
				alert('Inserire solo numeri da 0 a 99 per la data');
		});
	});

	function annulla() {
		var r = confirm("Vuoi annullare l'operazione?");
		if (r == true) {
			alert('Operazione annullata');
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
					<th style="background-color: white; border-color: white"></th>
					<th colspan="3" class="text-center">Primo quadrimestre</th>

					<th colspan="3" class="text-center">Secondo quadrimestre</th>
				</tr>
			</thead>
			<thead style="background-color: #c1c8e4;">
				<tr>
					<th scope="col">Studente</th>
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
					<td class=" addvoto" data-toggle="modal"
						data-target="#aggiungiValutazione"><label class="alunno">Corinaldesi
							Marianna</label> <label style="float: right;">+</label></td>
					<td class="assPQ"></td>

					<td class="scPQ"></td>

					<td class="orPQ"></td>

					<td class="assSQ"></td>

					<td class="scSQ"></td>

					<td class="orSQ"></td>

				</tr>
				<tr>
					<td class=" addvoto" data-toggle="modal"
						data-target="#aggiungiValutazione"><label class="alunno">Cuccurullo
							Alessio</label><label style="float: right;">+</label></td>
					<td class="assPQ"></td>

					<td class="scPQ"></td>

					<td class="orPQ"></td>

					<td class="assSQ"></td>

					<td class="scSQ"></td>

					<td class="orSQ"></td>


				</tr>
				<tr>
					<td class=" addvoto" data-toggle="modal"
						data-target="#aggiungiValutazione"><label class="alunno">Giorno
							Giovanna</label><label style="float: right;">+</label></td>
					<td class="assPQ"></td>

					<td class="scPQ"></td>

					<td class="orPQ"></td>

					<td class="assSQ"></td>

					<td class="scSQ"></td>

					<td class="orSQ"></td>

				</tr>
				<tr>
					<td class=" addvoto" data-toggle="modal"
						data-target="#aggiungiValutazione"><label class="alunno">Giuliano
							Francesco</label><label style="float: right;">+</label></td>
					<td class="assPQ"></td>

					<td class="scPQ"></td>

					<td class="orPQ"></td>

					<td class="assSQ"></td>

					<td class="scSQ"></td>

					<td class="orSQ"></td>
				</tr>
				<tr>
					<td class=" addvoto" data-toggle="modal"
						data-target="#aggiungiValutazione"><label class="alunno">Vitiello
							Raffaele</label><label style="float: right;">+</label></td>
					<td class="assPQ"></td>

					<td class="scPQ"></td>

					<td class="orPQ"></td>

					<td class="assSQ"></td>

					<td class="scSQ"></td>

					<td class="orSQ"></td>
				</tr>
				<tr>
					<td class=" addvoto" data-toggle="modal"
						data-target="#aggiungiValutazione"><label class="alunno">Veniero
							Vincenzo</label><label style="float: right;">+</label></td>
					<td class="assPQ"></td>

					<td class="scPQ"></td>

					<td class="orPQ"></td>

					<td class="assSQ"></td>

					<td class="scSQ"></td>

					<td class="orSQ"></td>

				</tr>
			</tbody>
		</table>
	</div>



	<div class="modal fade" id="aggiungiValutazione" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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

					<label class="radio-inline ml-2"> <input type="radio"
						name="optradio" id="pq" checked>Primo quadrimestre
					</label> <label class="radio-inline mx-2"> <input type="radio"
						name="optradio" id="sq">Secondo quadrimestre
					</label> <label>Assenze del primo quadrimestre:</label> <input
						id="numeroAss" type="text" placeholder="Numero di assenze">
					<br> <label>Voto Scritto:</label> <select id="votoScritto"
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
					</select> <label>Voto Orale:</label> <select id="votoOrale"
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
						id="salvaScrutinio">Salva</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
