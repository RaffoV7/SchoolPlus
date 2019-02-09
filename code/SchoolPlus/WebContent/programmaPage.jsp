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

		$('#modificaBtn').click(function() {
console.log('ive been clicked');
			$('#modProg').val($('#progCont').text());

		});
	});
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
					<p class="card-text" id="progCont">DOPO UNA INTRODUZIONE ALLA
						PROGRAMMAZIONE ORIENTATA AGLI OGGETTI, EVIDENZIANDO ANCHE LE
						DIFFERENZE PRINCIPALI CON ALTRI APPROCCI (PER ESEMPIO QUELLO
						PROCEDURALE), IL CORSO SI CONCENTRERÀ SUI SEGUENTI ARGOMENTI: LA
						PROGRAMMAZIONE ORIENTATA AGLI OGGETTI E CONCETTI DI ASTRAZIONE DEI
						DATI E DI INCAPSULAMENTO INTRODUZIONE A JAVA E AL PROCESSO DI
						COMPILAZIONE INTRODUZIONE AL TOOLKIT DI PROGRAMMAZIONE JDK 8.0
						OGGETTI,VARIABILI, RIFERIMENTI; CLASSI E METODI, COMUNICAZIONE FRA
						OGGETTI, PARAMETRI ESPLICITI E IMPLICITI; IL RIFERIMENTO THIS TIPI
						DI DATI FONDAMENTALI. ARITMETICA E FUNZIONI MATEMATICHE
						INVOCAZIONE DI METODI STATICI LA CLASSE STRING FILE E FLUSSI.
						LEGGERE E SCRIVERE FILE DI TESTO; FORMATO BINARIO E FORMATO DI
						TESTO RICHIAMI SUI COSTRUTTI DI CONTROLLO LE COLLEZIONI IN JAVA
						CENNI SUI TIPI GENERICI, SUI TIPI ENUMERATIVI E SUI MECCANISMI DI
						‘AUTOBOXING’ E ‘UNBOXING’. FOR GENERICO (FOR EACH) PROGETTAZIONE
						DI CLASSI. CONCETTI DI COESIONE E ACCOPPIAMENTO INTERFACCE E
						POLIMORFISMO EREDITARIETÀ E RIUSO MECCANISMO DI GESTIONE DELLE
						ECCEZIONI TESTING: VERIFICA DEL COMPORTAMENTO DEGLI OGGETTI;
						SCELTA DEI CASI DI TEST; INTEGRAZIONE DI CLASSI. DEBUGGING
						ESPRESSIONI LAMBDA PER LA DEFINIZIONE DI FUNZIONI ANONIME
						PROGRAMMAZIONE GRAFICA PROGRAMMARE AD EVENTI</p>
				</div>
				<button type="button" class="btn btn-primary" data-toggle="modal" id="modificaBtn"
					data-target="#modificaProgramma">Modifica</button>
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
							<textarea class="form-control" id="modProg" style="resize: none; height: 350px;"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary mx-3"
						data-dismiss="modal" id="annulla">Annulla</button>
						<button type="button" class="btn btn-primary"
						data-dismiss="modal" id="salva">Salva</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>