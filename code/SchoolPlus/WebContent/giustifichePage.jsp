<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#giustifiche {
	filter: grayscale(0%);
}
</style>
<jsp:include page="head.jsp"></jsp:include>

<script>
	$(document).ready(function() {

		var noAssVisible = false;
		var gfVisible = false;
		var vvVisible = false;

		$('#noAssCard').toggle();
		$('#gfCard').toggle();
		$('#vvCard').toggle();

		$('#mazzi').toggle();
		$('#guida').toggle();

		$('.noAss').click(function() {
			$('#start').text('');
			if (!noAssVisible) {
				noAssVisible = true;
				$('#noAssCard').toggle();

				if (!gfVisible)
					;
				else {
					gfVisible = false;
					$('#gfCard').toggle();
				}

				if (!vvVisible)
					;
				else {
					vvVisible = false;
					$('#vvCard').toggle();
				}

			} else
				;
		});

		$('#gf').click(function() {
			$('#start').text('');
			if (!gfVisible) {
				gfVisible = true;
				$('#gfCard').toggle();

				if (!noAssVisible)
					;
				else {
					noAssVisible = false;
					$('#noAssCard').toggle();
				}

				if (!vvVisible)
					;
				else {
					vvVisible = false;
					$('#vvCard').toggle();
				}

			} else
				;
		});

		$('#vv').click(function() {
			$('#start').text('');
			if (!vvVisible) {
				vvVisible = true;
				$('#vvCard').toggle();

				if (!gfVisible)
					;
				else {
					gfVisible = false;
					$('#gfCard').toggle();
				}

				if (!noAssVisible)
					;
				else {
					noAssVisible = false;
					$('#noAssCard').toggle();
				}

			} else
				;
		});

		$('#confermaFG').click(function() {
			salvaFG();
		});
		$('#confermaVV').click(function() {
			salvaVV();
		});

	});

	function salvaFG() {
		var r = confirm("Sei sicuro di voler giustificare queste assenze?");
		if (r == true) {
			if($('#checkGF').prop('checked')){
				$('#fgdot').remove();
				$('#checkGF').remove();
				$('#gfCard').remove();
				
				$('#gf').addClass("noAss");
			alert('Le assenze sono state giustificate correttamente.');
			}
		}
	}
	
	function salvaVV() {
		var r = confirm("Sei sicuro di voler giustificare queste assenze?");
		if (r == true) {
			if($('#checkVV').prop('checked')){
				$('#vvdot').remove();
				$('#checkVV').remove();
				$('#vvCard').remove();
				
				$('#vv').addClass("noAss");
			alert('Le assenze sono state giustificate correttamente.');
			}
		}
	}
	
</script>

<title>Giustifiche</title>
</head>
<body>
	<jsp:include page="navbarDocente.jsp"></jsp:include>
	<div class="row">
		<div class="container col-lg-6" style="padding: 5rem;">
			<table class="table table-striped" style="border: 1px solid #5ab9ea">
				<thead style="background-color: #c1c8e4;">
					<tr>
						<th scope="col">Lista studenti</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="noAss">Corinaldesi Marianna</td>
					</tr>
					<tr>
						<td class="noAss">Cuccurullo Alessio</td>
					</tr>
					<tr>
						<td class="noAss">Giorno Giovanna</td>
					</tr>
					<tr>
						<td class="" id="gf">Giuliano Francesco<span class="dot"
							style="background-color: red;" id="fgdot">1</span></td>
					</tr>
					<tr>
						<td class="noAss">Vitiello Raffaele</td>
					</tr>
					<tr>
						<td id="vv">Veniero Vincenzo<span class="dot"
							style="background-color: red;" id="vvdot">1</span></td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="container col-lg-6" style="padding: 5rem;">
			<div class="card">
				<div class="card-body">
					<div class="card-title" id="start">Clicca su uno studente per
						visualizzare le assenze da giustificare.</div>
					<div class="card-title" id="noAssCard">Lo studente non ha
						assenze da giustificare.</div>
				</div>
				<div class="card-body" id="gfCard">
					<div class="card-title">Giuliano Francesco</div>
					<table class="table fluid table-striped text-center"
						style="margin-left: auto; margin-right: auto;">
						<thead style="background-color: #c1c8e4;">
							<tr>
								<th scope="col">Data</th>
								<th scope="col">Giustifica</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Giorno: 10/01/2019</td>
								<td><input id="checkGF" type="checkbox"></td>
							</tr>
						</tbody>
					</table>
					<button class="btn btn-primary" id="confermaFG">Giustifica
						assenze</button>
				</div>
				<div class="card-body" id="vvCard">
					<div class="card-title">Giuliano Francesco</div>
					<table class="table fluid table-striped text-center"
						style="margin-left: auto; margin-right: auto;">
						<thead style="background-color: #c1c8e4;">
							<tr>
								<th scope="col">Data</th>
								<th scope="col">Giustifica</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Giorno: 10/01/2019</td>
								<td><input id="checkVV" type="checkbox"></td>
							</tr>
						</tbody>
					</table>
					<button class="btn btn-primary" id="confermaVV">Giustifica
						assenze</button>
				</div>
				

			</div>

		</div>

	</div>
</body>
<style>
.dot {
	float: right;
	color: white;
	text-align: center;
	height: 25px;
	width: 25px;
	border-radius: 50%;
	display: inline-block;
}

.table span, td:hover {
	background-color: rgba(195, 202, 229, 0.75);
}
</style>
</html>
