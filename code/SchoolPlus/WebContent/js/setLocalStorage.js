
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

		var docenteData= {
				nomeDocente:'Gennaro',
				cognomeDocente:'Frassi',
				classe:'III A',
				materia: 'Informatica',
				alunni:[
					'Alberto Avitabile', 
					'Dino Benevento',
					'Patty Bravo',
					'Bruno Bucciarati',
					'Paolo Di Sirio',
					'Giorno Giovanna',
					'Guido Mista', 
					'Giammarco Primato',
					'Amelia Strega'],
					assenze:[],
					argomenti:[
						'Il paradigma O-O',
						'Introduzione a Java e "Hello, World!"',
						'Le classi'
						]
		};

		localStorage.setItem("docenteData", JSON.stringify(docenteData));

		window.location.assign("homePageDocente.jsp");



	} else {
		alert('Siamo spiacenti, i dati inseriti non sono corretti. Riprovare.');
		$('#inputEmail').val('');
		$('#inputPassword').val('');
		return false;
	}
	
};
