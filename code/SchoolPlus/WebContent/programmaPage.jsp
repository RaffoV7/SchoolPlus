<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="head.jsp"></jsp:include>
<style>
#programma {
	filter: grayscale(0%);
}
</style>

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
		var r = confirm("Sei sicuro di voler salvare le modifiche al programma annuale?");
		if (r == true) {
			var mod = $('#modProg').val();
			localStorage.setItem("programma", mod);
			$('#progCont').text(localStorage.getItem("programma"));
			alert('Le modifiche sono state salvate correttamente.');
		}
	}
</script>
<title>Programma</title>
</head>
<body>

	<jsp:include page="navbarDocente.jsp"></jsp:include>

	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8 ">
			<div class="card" style="margin: 2em;">
				<h4 class="card-header">Programma Annuale - A.S. 2018/19</h4>
				<div class="card-body">
					<p class="card-text" id="progCont"></p>
				</div>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					id="modificaBtn" data-target="#modificaProgramma">Modifica</button>
			</div>
		</div>
	</div>
	<div class="col-md-2"></div>
	<div class="modal fade" id="modificaProgramma" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modifica
						programma annuale</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="message-text" class="col-form-label">Programma:</label>
							<textarea class="form-control" id="modProg"
								style="resize: none; height: 350px;"></textarea>
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
</body>
</html>