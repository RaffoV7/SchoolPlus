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
				$('#assenze2').toggle();
				$('#titolo').text(
						"Classe " + localStorage.getItem("classe")
								+ " - 14/01/2019")

				$('#insert').click(function() {
					$('#assenze1').toggle();
					$('#assenze2').toggle();

				});

				$('#torna').click(function() {
					$('#assenze1').toggle();
					$('#assenze2').toggle();

				});

				$('#conferma').click(function() {
					
				var r = confirm("Sei sicuro di voler inserire le assenze di oggi?");
				if (r == true) {	
					
				if ($('#check1').prop('checked')) {
						$('#ass1').text('A');
					} else {
						$('#ass1').text('');
					}
					
					
				if ($('#check2').prop('checked')) {
						$('#ass2').text('A');
					} else {
						$('#ass2').text('');
					}
					
					
				if ($('#check3').prop('checked')) {
						$('#ass3').text('A');
					} else {
						$('#ass3').text('');
					}
					
				
				if ($('#check4').prop('checked')) {
						$('#ass4').text('A');
					} else {
						$('#ass4').text('');
					}
				
				
				if ($('#check5').prop('checked')) {
						$('#ass5').text('A');
					} else {
						$('#ass5').text('');
					}
				
				
				if ($('#check6').prop('checked')) {
						$('#ass6').text('A');
					} else {
						$('#ass6').text('');
					}

				alert("Assenze inserite correttamente.");
					$('#assenze1').toggle();
					$('#assenze2').toggle();
				
				} else 	alert("Operazione annullata.");

				});

			});
</script>
<title>Appello</title>
</head>
<body>
	<jsp:include page="navbarDocente.jsp"></jsp:include>


	<h2 class="text-center card-title my-2" id="titolo"></h2>
	<div class="container" style="margin-top: 2rem; margin-bottom: 5rem !important;"
		id="assenze1">

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
					<td>A</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td><label id="ass1"></label></td>
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
					<td><label id="ass2"></label></td>
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
					<td><label id="ass3"></label></td>
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
					<td><label id="ass4"></label></td>
				</tr>
				<tr>
					<td>Vitiello Raffaele</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>A</td>
					<td></td>
					<td><label id="ass5"></label></td>
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
					<td><label id="ass6"></label></td>
				</tr>
			</tbody>
		</table>


		<button class="float-right btn btn-primary" id="insert">Inserisci
			le assenze</button>
<jsp:include page="footer.jsp"></jsp:include>
	</div>


	<div class="container" id="assenze2">

		<div class="col-lg-2"></div>
		<div class="col-lg-8">

			<button class="btn btn-primary float-left" id="torna">
				<img src="images/icon/arrow-alt-left.png" style="width: 3rem;">Torna
				al Registro presenze
			</button>
			<table class="table table-striped text-center"
				style="margin-left: auto; margin-right: auto;">
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

		<button class="btn btn-primary float-right" id="conferma">Conferma</button>
<jsp:include page="footer.jsp"></jsp:include>

	</div>


</body>
</html>
