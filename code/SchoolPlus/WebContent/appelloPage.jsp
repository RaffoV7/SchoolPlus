<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="head.jsp"></jsp:include>
<style>
#appello{
filter: grayscale(0%);
}
</style>
<title>Appello</title>
</head>
<body>
	<jsp:include page="navbarDocente.jsp"></jsp:include>
	

	<div class="container" style=" margin-top: 5rem;padding: 2rem;">
		<table class="table table-striped table-bordered">
			<thead style="background-color: #c1c8e4;">
				<tr>
					<th scope="col">Studenti</th>
					<th scope="col">29/11</th>
					<th scope="col">30/11</th>
					<th scope="col">01/12</th>
					<th scope="col">02/12</th>
					<th scope="col">03/12</th>
					<th scope="col">04/12</th>
					<th scope="col">05/12</th>					
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Corinaldesi Marianna</td>
					<td>A</td>
					<td> </td>
					<td> </td>
					<td> </td>
					<td> </td>
					<td> </td>
					<td> </td>			
				</tr>
				<tr>
					<td>Cuccurullo Alessio</td>
					<td>A</td>
					<td> </td>
					<td> </td>
					<td> </td>
					<td> </td>
					<td> </td>
					<td> </td>
				</tr>
				<tr>
					<td>Giuliano Francesco</td>
					<td>A</td>
					<td> </td>
					<td>A </td>
					<td> </td>
					<td> </td>
					<td> </td>
					<td> </td>
				</tr>
				<tr>
					<td>Vitiello Raffaele</td>
					<td></td>
					<td> </td>
					<td> </td>
					<td> </td>
					<td>A</td>
					<td> </td>
					<td> </td>
				</tr>
				<tr>
					<td>Veniero Vincenzo</td>
					<td>A</td>
					<td>A</td>
					<td>A</td>
					<td>A</td>
					<td> </td>
					<td> </td>
					<td>A</td>
				</tr>
			</tbody>
		</table>

		
			<button class="float-right">Inserisci le assenze</button>
		
	</div>
	
	
	<div class="container">
		
		<button class="float-left"> <img src="images/icon/arrow-alt-left.png" style="width: 3rem;">Torna al Registro presenze</button>
		<table class="table table-striped">
			<thead style="background-color: #c1c8e4;">
				<tr>
					<th scope="col">Nome studente</th>
					<th scope="col">Assente</th>					
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Corinaldesi Marianna</td>
					<td><input type="checkbox"></td>		
				</tr>
				<tr>
					<td>Cuccurullo Alessio</td>
					<td><input type="checkbox"></td>					
				</tr>
				<tr>
					<td>Giuliano Francesco</td>
					<td><input type="checkbox"></td>	
					
				</tr>
				<tr>
					<td>Vitiello Raffaele</td>
					<td><input type="checkbox"></td>	
					
				</tr>
				<tr>
					<td>Veniero Vincenzo</td>
					<td><input type="checkbox"></td>		
				</tr>
				<tr>
					<td>Giorno Giovanna</td>
					<td><input type="checkbox"></td>		
				</tr>
			</tbody>
		</table>
		
		
	</div>
	

</body>
</html>