<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="head.jsp"></jsp:include>
<script>
	$(document).ready(function() {

		
		
		$('#assenzeAssenza').toggle();
		$('#assenzeRitardi').toggle();
		
		$('#scriviAssenza').click(function() {
			$('#assenzePrincipale').toggle();
			$('#assenzeAssenza').toggle();
		});
		
		$('#scriviRitardo').click(function(){
			$('#assenzePrincipale').toggle();
			$('#assenzeRitardi').toggle();
		});

		$('#torna').click(function() {
			$('#assenzePrincipale').toggle();
			$('#assenzeAssenza').toggle();
		});

		$('#tornaDaRitardi').click(function(){
			$('#assenzePrincipale').toggle();
			$('#assenzeRitardi').toggle();
		});
		
		$('#annullaAssenza').click(function() {
			annullaAssenza();
		});
		
		$('#annullaRitardo').click(function(){
			annullaRitardo();
		});
		
		$('#salvaAssenza').click(function() {
			salvaAssenza();
		});
		
		$('#salvaRitardo').click(function(){
			salvaRitardo();
		});

	});

	function annullaAssenza() {
		var r = confirm("Stai per annullare le modifiche. Continuare?");
		if (r == true) {
			alert('Giustifica non inserita.');
			$('#assenzePrincipale').toggle();
			$('#assenzeAssenza').toggle();
		}
	}
	
	function annullaRitardo() {
		var r = confirm("Stai per annullare le modifiche. Continuare?");
		if (r == true) {
			alert('Giustifica non inserita.');
			$('#assenzePrincipale').toggle();
			$('#assenzeRitardi').toggle();
		}
	}

	function salvaAssenza() {
		var r = confirm("Sei sicuro di voler inserire la giustifica?");
		if (r == true) {

			alert('È stata inserita una giustifica con successo.');
			$('#assenzePrincipale').toggle();
			$('#assenzeAssenza').toggle();
			$('#scriviAssenza').remove();
			$('#rigaAssenza').append('<img class="img-fluid checkImages" src="images/icon/25checkbox.png">');
		}
	}
	
	function salvaRitardo() {
		var r = confirm("Sei sicuro di voler inserire la giustifica?");
		if (r == true) {

			alert('È stata inserita una giustifica con successo.');
			$('#assenzePrincipale').toggle();
			$('#assenzeRitardi').toggle();
			$('#scriviRitardo').remove();
			$('#rigaRitardo').append('<img class="img-fluid checkImages" src="images/icon/25checkbox.png">');
		}
	}
	
</script>
<meta charset="UTF-8">
<title>Assenze e ritardi</title>
</head>
<body>
	<jsp:include page="navbarGenitore.jsp"></jsp:include>
	<!-- ASSENZE PRINCIPALE -->
	<div class="container" id="assenzePrincipale">
		<div class="row">

			<div class="col-lg-6">
				<div class="card" style="margin: 2em;">
					<h4 class="card-header">Assenze</h4>

					<div class="card-body">
						<table class="table table-bordered table-striped">
							<thead style="background-color: #c1c8e4;">
								<tr>
									<th>Data</th>
									<th>Giustifica</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>18/08/2018</td>
									<td><img class="img-fluid checkImages" src="images/icon/25checkbox.png"></td>
								</tr>
								<tr>
									<td>24/09/2018</td>
									<td id="rigaAssenza"><button class="btn btn-primary mx-3"
											id="scriviAssenza">Scrivi giustifica</button></td>
								</tr>
		
							</tbody>

						</table>

					</div>
				</div>
			</div>

			<div class="col-lg-6">
				<div class="card" style="margin: 2em;">
					<h4 class="card-header">Ritardi</h4>
					<div class="card-body">
						<table class="table table-bordered table-striped">
							<thead style="background-color: #c1c8e4;">
								<tr>
									<th>Data</th>
									<th>Giustifica</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>20/09/2018</td>
									<td id="rigaRitardo"><button class="btn btn-primary mx-3"
											id="scriviRitardo">Scrivi giustifica</button></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- GIUSTIFICA ASSENZA -->
	<div class="container" id="assenzeAssenza" style="padding: 5rem;">
	<div class="text-center">
			<h4>Giustifica assenza</h4>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<button class="btn btn-primary" id="torna">Torna ad
						Assenze e Ritardi</button>
				</div>
				<div class="col-lg-6" style="margin-top: 1rem;">
					<label for="input">Data:</label> <input type="date" id="dataInput">
					<img alt="calendar" src="images/icon/30calender.png"
						style="width: 5rem; margin-top: -1rem;">
				</div>
			</div>
		</div>

		<div class="container">
			<div class="form-group">
				<label for="comment">Motivazione: </label>
				<textarea class="form-control" rows="5" cols="2" id="motivazione"></textarea>
			</div>
			<button type="button" class="btn btn-secondary mx-3"
				data-dismiss="modal" id="annullaAssenza">Annulla</button>
			<button type="button" class="btn btn-primary" data-dismiss="modal"
				id="salvaAssenza">Salva</button>
		</div>
	</div>

<!-- ritardi -->
	<div class="container" id="assenzeRitardi" style="padding: 5rem;">
		<div class="text-center">
			<h4>Giustifica ritardo</h4>
		</div>
		<div class="container">

			<div class="row">
				<div class="col-lg-6">

					<button class="btn btn-primary" id="tornaDaRitardi">Torna ad
						Assenze e Ritardi</button>
				</div>
				<div class="col-lg-6" style="margin-top: 1rem;">
					<label for="input">Data:</label> <input type="date" id="dataInput">
					<img alt="calendar" src="images/icon/30calender.png"
						style="width: 5rem; margin-top: -1rem;">
				</div>
			</div>
		</div>

		<div class="container">
			<div class="form-group">
				<label for="comment">Motivazione: </label>
				<textarea class="form-control" rows="5" cols="2" id="motivazione"></textarea>
			</div>
			<button type="button" class="btn btn-secondary mx-3"
				data-dismiss="modal" id="annullaRitardo">Annulla</button>
			<button type="button" class="btn btn-primary" data-dismiss="modal"
				id="salvaRitardo">Salva</button>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
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

#assenze {
	filter: grayscale(0%);
}

#salva, #annulla {
	float: right;
}
.checkImages{
	width: 3rem;
}
</style>
</html>