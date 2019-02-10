<script>
	
$(document).ready(function(){
	
	$('#logout').click(function(){
	var r=	confirm('Sei sicuro di voler effetuare il Logout?');
	 if(r==true){
			window.location.assign("loginPage.jsp");
	 } else;
	});
	});
	

</script>


<nav class="navbar navbar-expand-lg bg-light navbar-light">
    <div class="navbar-collapse collapse pt-2 pt-md-0" id="navbar2">
       <div class="container-fluid" style="display: contents;">
   	<a href="homePageGenitore.jsp" class="navbar-brand"><img class="img-fluid" alt="logo" src="images/logo_school.png" style="width: 10em;border: 1px solid;border-radius: 1rem;"> 
   	</a>
   	</div>
        <ul class="navbar-nav">
        
        	
            <li class="nav-item active">
                <div class="container-fluid">
   					<a href="homePageGenitore.jsp"><img class="nav-img imgzoom" src="images/icon/28home.png" id="home">
   					</a>
   					<h6 class="mylink">Home</h6>
   				</div>
            </li>
            
            <li class="nav-item">
               <div class="container-fluid">
    				<a href="valutazioniPageGenitore.jsp"><img class="nav-img imgzoom" src="images/icon/voti.png" id="valutazioni"></a>
    				<h6 class="mylink">Valutazioni</h6>
  				</div>
            </li>
            <li class="nav-item">
            	<div class="container-fluid">
   					 <a href="assegnoPage.jsp"><img class="nav-img imgzoom" src="images/icon/homework.png" id="assegno"></a>
   					 <h6 class="mylink">Assegno</h6>
  				</div>
            </li>
            <li class="nav-item">
            	  <div class="container-fluid">
   					<a href="ricevimentoPageGenitore.jsp"><img class="nav-img imgzoom" src="images/icon/handshake_ico.png" id="ricevimento"></a>
   					<h6 class="mylink">Ricevimento<br>docenti</h6>
   					</div>
            </li>
            <li class="nav-item">
            	 <div class="container-fluid">
    				<a href="assenzePageGenitore.jsp"><img class="nav-img imgzoom" src="images/icon/calendar.png" id="assenze"></a>
    				<h6 class="mylink">Assenze<br>Ritardi</h6>
  				</div>
            </li>
        </ul>
        <a href="#" id="logout"><img alt="logout" src="images/icon/logout.png"class="nav-img imgzoom">Logout</a>
	
    </div>
</nav>


<style>
.imgzoom {
	filter: grayscale(100%);
	transition: transform .2s;
}

.imgzoom:hover{
	transform: scale(1.5);
	filter: grayscale(0%);
}

.mylink{
	text-align: center;
	margin-top: -2rem;
}
</style>
