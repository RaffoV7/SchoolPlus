<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="head.jsp"></jsp:include>
<style>
#home{
filter: grayscale(0%);
}
</style>
<title>School+ - Home Page</title>
</head>
<body>
	<jsp:include page="navbarDocente.jsp"></jsp:include>
	<div class="row">
		<div class="col-md-8">
			<div class="card" style="margin: 2em;">
				<h4 class="card-header">Avvisi</h4>
				
				
				
				<div class="card-body">
					<p class="card-text">PLS CHIMICA - Alunni partecipanti e
						Calendario delle attività In linea i nominativi degli alunni che
						parteciperanno alle attività previste dal progetto Piano Lauree
						Scientifiche di Chimica, realizzato in rete con il Dipartimento di
						Chimica e Biologia dell’Università degli Studi di Salerno.</p>
					<p class="card-text">PLS BIOLOGIA - Alunni partecipanti e
						Calendario delle Attività In linea i nominativi degli alunni che
						parteciperanno alle attività previste dal progetto Piano Lauree
						Scientifiche di Scienze Biologiche, realizzato in rete con il
						Dipartimento di Chimica e Biologia dell’Università degli Studi di
						Salerno..</p>
					<p class="card-text">Reclutamento alunni OLIMPIADI DI SCIENZE
						NATURALI - I docenti di Scienze Naturali possono comunicare, entro
						Giovedì 14 Febbraio 2019, al prof. Annarumma Raffaele, i
						nominativi degli alunni che, per un alto rendimento in Scienze,
						possono partecipare alle Olimpiadi di SCIENZE NATURALI.</p>
				</div>
			</div>
		</div>

		<div class="col-md-4">
			<div class="card" style="margin: 2em;">
				<h4 class="card-header">Benvenuto, Prof. Corinaldesi</h4>
				<div class="text-center">
					<img class="card-img-top " src="images/icon/1Studentmale.png"
						alt="Card image" style="width: 10em;background-color: #5ab9ea;border: 1px solid #8860d0;border-radius: 10em;margin-top: 1em;">
				</div>
				<div class="card-body">
					<p class="card-text">
						<span class="font-weight-bold">Nome: </span>Franco
					</p>
					<p class="card-text">
						<span class="font-weight-bold">Cognome: </span>Corinaldesi
					</p>
					<p class="card-text">
						<span class="font-weight-bold">Data di nascita: </span>21/12/1960
					</p>
					<p class="card-text">
						<span class="font-weight-bold">Insegna presso: </span>Liceo de
						Chirico
					</p>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>