<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="head.jsp"></jsp:include>

<style>
#appello {
	filter: grayscale(0%);
}
</style>
<script>
	$(document).ready(function() {

		var classe = localStorage.getItem("classe");

		$('#titolo').text("Classe " + classe + " - 14/01/2019");

		$('#assenze2').toggle();

		$('#insert').click(function() {
			$('#assenze1').toggle();
			$('#assenze2').toggle();

		});

		$('#torna').click(function() {
			$('#assenze1').toggle();
			$('#assenze2').toggle();

		});
		
		$('#conferma').click(function(){
			
		});
		
	});
</script>
<title>Appello</title>
</head>
<body>
	<jsp:include page="navbarDocente.jsp"></jsp:include>


	<h2 class="mt-2 card-title text-center" id="titolo"></h2>

	<div class="ml-5 container position-absolute" style="padding: 2rem;"
		id="assenze1">

		<table class="table table-striped table-bordered" id="tabAssenze">
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
					<td>A</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td id="coriAss"></td>
				</tr>
				<tr>
					<td>Cuccurullo Alessio</td>
					<td>A</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td id="cuccAss"></td>
				</tr>
				<tr>
					<td>Giorno Giovanna</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td id="jojoAss"></td>
				</tr>
				<tr>
					<td>Giuliano Francesco</td>
					<td>A</td>
					<td></td>
					<td>A</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td id="giulAss"></td>
				</tr>
				<tr>
					<td>Vitiello Raffaele</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>A</td>
					<td></td>
					<td></td>
					<td id="vitiAss"></td>
				</tr>
				<tr>
					<td>Veniero Vincenzo</td>
					<td>A</td>
					<td>A</td>
					<td>A</td>
					<td>A</td>
					<td></td>
					<td></td>
					<td>A</td>
					<td id="veniAss"></td>
				</tr>
			</tbody>
		</table>


		<button class="btn btn-primary loat-right" id="insert">Inserisci
			le assenze del giorno</button>
	</div>


	<div class="container position-absolute" id="assenze2">
		<div class="col-lg-2"></div>
		<div class="col-lg-8">

			<button class="btn btn-primary float-left" id="torna">
				<img src="images/icon/arrow-alt-left.png" style="width: 3rem;">Torna
				al Registro presenze
			</button>
			<table class="table table-striped ml-5 text-center">
				<thead style="background-color: #c1c8e4;">
					<tr>
						<th scope="col">Nome studente</th>
						<th scope="col">Assente</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Corinaldesi Marianna</td>
						<td><input id="check1" type="checkbox"></td>
					</tr>
					<tr>
						<td>Cuccurullo Alessio</td>
						<td><input id="check2" type="checkbox"></td>
					</tr>
					<tr>
						<td>Giorno Giovanna</td>
						<td><input id="check3" type="checkbox"></td>
					</tr>
					<tr>
						<td>Giuliano Francesco</td>
						<td><input id="check4" type="checkbox"></td>
					</tr>
					<tr>
						<td>Vitiello Raffaele</td>
						<td><input id="check5" type="checkbox"></td>
					</tr>
					<tr>
						<td>Veniero Vincenzo</td>
						<td><input id="check6" type="checkbox"></td>
					</tr>
				</tbody>
			</table>
		</div>
		<button class="btn btn-primary" id="conferma">Conferma</button>
		<div class="col-lg-2"></div>
	</div>



</body>
</html>