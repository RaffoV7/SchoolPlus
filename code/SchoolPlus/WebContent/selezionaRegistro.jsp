<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="head.jsp"></jsp:include>

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
						class="form-control">
						<option>III A</option>
					</select> <select class="form-control">
						<option>Informatica</option>
						<option></option>
					</select>

					<button class="btn btn-lg btn-primary btn-block text-uppercase"
						type="submit" id="confermaRegi" >Conferma</button>

				</div>
			</div>
		</div>
	</div>
</body>