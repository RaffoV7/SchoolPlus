<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="head.jsp"></jsp:include>

<script>
$(document).ready(function(){
 $("#confermaRegistro").click(function(){
	 localStorage.setItem('classe', $('#classe').val());
	 window.location.assign('homePageDocente.jsp');
 });
});
</script>

<title>Seleziona Registro</title>
</head>
<body>
	<div class="row">
		<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
			<div class="card card-signin my-5">
				<div class="card-body">
					<img alt="LogoSchool+" src="images/logo_school.png"
						style="border-radius: 15%; width: 100%;">
						<p class="card-text mt-2">Benvenuto prof. Rossi. Selezioni un registro per iniziare.</p>
						
						 <select
						class="form-control" id="classe">
						<option>I A</option>
						<option>II A</option>
						<option>III A</option>
						<option>IV A</option>
						<option>V A</option>
					</select> <select class="form-control">
						<option>Informatica</option>
					</select>

					<button class="btn btn-lg btn-primary btn-block text-uppercase"
						type="submit" id="confermaRegistro" >Conferma</button>

				</div>
			</div>
		</div>
	</div>
</body>