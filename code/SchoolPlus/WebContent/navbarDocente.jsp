
<nav class="navbar navbar-expand-md bg-light navbar-light">

	<div class="navbar-collapse collapse pt-2 pt-md-0" id="navbar2">
		<div class="container-fluid" style="display: contents;">
			<a href="/" class="navbar-brand"><img class="img-fluid"
				alt="logo" src="images/logo_school.png"
				style="width: 10em; border: 1px solid; border-radius: 1rem;">
			</a>
		</div>
		<ul class="navbar-nav">


			<li class="nav-item active">
				<div class="container-fluid">
					<a href="homePageDocente.jsp"><img class="nav-img imgzoom"
						id="home" src="images/icon/28home.png"> </a>
					<h6 class="mylink">Home</h6>
				</div>
			</li>

			<li class="nav-item">
				<div class="container-fluid">
					<a href="appelloPage.jsp"><img class="nav-img imgzoom appello"
						id="appello" src="images/icon/22book.png"></a>
					<h6 class="mylink">Appello</h6>
				</div>
			</li>
			<li class="nav-item">
				<div class="container-fluid">
					<a href="giustifichePage.jsp"><img class="nav-img imgzoom"
						id="giustifiche" src="images/icon/25checkbox.png"></a>
					<h6 class="mylink">Giustifiche</h6>
				</div>
			</li>
			<li class="nav-item">
				<div class="container-fluid">
					<a href="votiPage.jsp"><img class="nav-img imgzoom" id="voti"
						src="images/icon/4Grades.png"></a>
					<h6 class="mylink">Voti</h6>
				</div>
			</li>
			<li class="nav-item">
				<div class="container-fluid">
					<a href="argomentiPage.jsp"><img class="nav-img imgzoom"
						id="argomenti" src="images/icon/14teacher.png"></a>
					<h6 class="mylink">Argomenti</h6>
				</div>
			</li>
			<li class="nav-item">
				<div class="container-fluid">
					<a href="scrutiniPage.jsp"><img class="nav-img imgzoom"
						id="scrutini" src="images/icon/scrutini.png"></a>
					<h6 class="mylink">Scrutini</h6>
				</div>
			</li>
			<li class="nav-item">
				<div class="container-fluid">
					<a href="programmaPage.jsp"><img class="nav-img imgzoom"
						id="programma" src="images/icon/20Homework.png"></a>
					<h6 class="mylink">Programma</h6>
				</div>
			</li>
		</ul>
	</div>
</nav>


<style>
.imgzoom {
	filter: grayscale(100%);
	transition: transform .2s;
}

.imgzoom:hover {
	transform: scale(1.5);
	filter: grayscale(0%);
}

.appello:hover {
	transform: scale(1.2);
	filter: grayscale(0%);
}


</style>
