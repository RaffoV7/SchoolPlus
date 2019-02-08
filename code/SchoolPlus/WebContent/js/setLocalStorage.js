$(document).ready(function(){


	$('#logButton').click(function(){

		
		
		var email= $('#inputEmail').val();
		var passw= $('#inputPassword').val();

		if(email=='genitore@school.plus'&&password=='genitore'){

			var genitoreData= {
					nomeGenitore:'Mario',
					cognomeGenitore:'Rossi',
					nomeAlunno:'Marco',
					cognomeAlunno:'Rossi',
					voti:{
						'italiano':'7',
						'storia':'7',
						'geografia':'7',
						'inglese':'6',
						'matematica':'8',
						'fisica':'8',
						'informatica':'10',
						'arte':'8',
						'ginnastica':'5',	
					}

			};

			localStorage.setItem("genitoreData", JSON.stringify(genitoreData));

			window.location.assign("homePage.jsp");


		} else if(email=='docente@school.plus'&&password=='docente'){

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

			window.location.assign("homePage.jsp");

			
			
		} else {
			alert('Siamo spiacenti, i dati inseriti non sono corretti. Riprovare.');
			email.val('');
			passw.val('');
		}

		


	});


});
/*







//Questa funzione cerca tra tutti i cookie caricati nel documento e restituisce il contenuto desiderato

function getCookie(cname) {
	var name = cname + '=';
	var decodedCookie = decodeURIComponent(document.cookie);
	var ca = decodedCookie.split(';');
	for(var i = 0; i <ca.length; i++) {
		var c = ca[i];
		while (c.charAt(0) == ' ') {
			c = c.substring(1);
		}
		if (c.indexOf(name) == 0) {
			return c.substring(name.length, c.length);
		}
	}
	return '';
}



//Questa funzione aggiunge un nuovo cookie a quelli nel documento

function setCookie(cname, cvalue, exdays) {
	var d = new Date();
	d.setTime(d.getTime() + (exdays*24*60*60*1000));
	var expires = 'expires='+ d.toUTCString();
	document.cookie = cname + '=' + cvalue + ';' + expires + ';path=/';
}  //*/