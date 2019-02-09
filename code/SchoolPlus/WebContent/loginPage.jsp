<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="head.jsp"></jsp:include>
<script src="js/setLocalStorage.js"></script>
<title>School+</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
				<div class="card card-signin my-5">
					<div class="card-body">
						<img alt="LogoSchool+" src="images/logo_school.png"
							style="border-radius: 15%; width: 100%;">
						<form class="form-signin" action="homePage.jsp">
							<div class="form-label-group">
								<label for="inputEmail">Utente:</label> <input type="email"
									id="inputEmail" class="form-control mb-2" placeholder="Utente"
									required autofocus>
							</div>
							<div class="form-label-group">
								<label for="inputPassword">Password:</label> <input
									type="password" id="inputPassword" class="form-control "
									placeholder="Password" required>
							</div>
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input"
									id="customCheck1"> <label class="custom-control-label"
									for="customCheck1">Ricorda password</label>
							</div>
							<button class="btn btn-lg btn-primary btn-block text-uppercase"
								type="submit" id="logButton" onSubmit="return check()">Entra</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>