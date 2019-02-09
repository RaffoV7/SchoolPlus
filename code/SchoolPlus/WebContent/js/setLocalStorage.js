
function check(){

	var email= $('#inputEmail').val();
	var passw= $('#inputPassword').val();

	if(email=='genitore@school.plus'&&passw=='genitore'){

		var genitoreData= {
				nomeGenitore:'Mario',
				cognomeGenitore:'Rossi',
				nomeAlunno:'Marco',
				cognomeAlunno:'Rossi'
		};


		var votiAlunno={
				'italiano':'7',
				'storia':'7',
				'geografia':'7',
				'inglese':'6',
				'matematica':'8',
				'fisica':'8',
				'informatica':'10',
				'arte':'8',
				'ginnastica':'5',	
		};

		localStorage.setItem("genitoreData", JSON.stringify(genitoreData));
		localStorage.setItem("votiAlunno", JSON.stringify(votiAlunno));

		window.location.assign("homePageGenitore.jsp");


	} else if(email=='docente@school.plus'&&passw=='docente'){

		var programma="DOPO UNA INTRODUZIONE ALLA PROGRAMMAZIONE ORIENTATA AGLI OGGETTI, EVIDENZIANDO ANCHE LE DIFFERENZE PRINCIPALI CON ALTRI APPROCCI (PER ESEMPIO QUELLO PROCEDURALE), IL CORSO SI CONCENTRERÀ SUI SEGUENTI ARGOMENTI: LA PROGRAMMAZIONE ORIENTATA AGLI OGGETTI E CONCETTI DI ASTRAZIONE DEI DATI E DI INCAPSULAMENTO INTRODUZIONE A JAVA E AL PROCESSO DI COMPILAZIONE INTRODUZIONE AL TOOLKIT DI PROGRAMMAZIONE JDK 8.0 OGGETTI,VARIABILI, RIFERIMENTI; CLASSI E METODI, COMUNICAZIONE FRA OGGETTI, PARAMETRI ESPLICITI E IMPLICITI; IL RIFERIMENTO THIS TIPI DI DATI FONDAMENTALI. ARITMETICA E FUNZIONI MATEMATICHE INVOCAZIONE DI METODI STATICI LA CLASSE STRING FILE E FLUSSI. LEGGERE E SCRIVERE FILE DI TESTO; FORMATO BINARIO E FORMATO DI TESTO RICHIAMI SUI COSTRUTTI DI CONTROLLO LE COLLEZIONI IN JAVA CENNI SUI TIPI GENERICI, SUI TIPI ENUMERATIVI E SUI MECCANISMI DI ‘AUTOBOXING’ E ‘UNBOXING’. FOR GENERICO (FOR EACH) PROGETTAZIONE DI CLASSI. CONCETTI DI COESIONE E ACCOPPIAMENTO INTERFACCE E  POLIMORFISMO EREDITARIETÀ E RIUSO MECCANISMO DI GESTIONE DELLE ECCEZIONI TESTING: VERIFICA DEL COMPORTAMENTO DEGLI OGGETTI; SCELTA DEI CASI DI TEST; INTEGRAZIONE DI CLASSI. DEBUGGING ESPRESSIONI LAMBDA PER LA DEFINIZIONE DI FUNZIONI ANONIME PROGRAMMAZIONE GRAFICA PROGRAMMARE AD EVENTI";


		localStorage.setItem("programma", programma);
		window.location.assign("homePageDocente.jsp");



	} else {
		alert('Siamo spiacenti, i dati inseriti non sono corretti. Riprovare.');
		$('#inputEmail').val('');
		$('#inputPassword').val('');
		return false;
	}
	
};
