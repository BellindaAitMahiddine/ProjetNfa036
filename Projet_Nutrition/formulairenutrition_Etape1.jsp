<%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" errorPage="" %>
<%@page import="java.time.*"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" />
    <meta charset="UTF-8">
    <title>Questionnaire nutritionnel </title>
	<link rel="stylesheet" href="style-css.css">
</head>

	<div id = "banner1">
		<img src="images/image-head.jpg">
	</div>
	<div id = "menu">
		<ul>
			<li><a href="page_acceuil.html"> ACCEUIL </a> </li>
			<li><a href="bien_manger.html"> BIEN MANGER </a> </li>
			<li><a href="cuisine_recettes.html"> CUISINE ET RECETTES </a> </li>
			<li><a href="index.html"> BIEN-ÊTRE </a> </li>
		</ul>

	</div>


<body>

	 <header>
		       
		</header>
	    <div id = "formulaire">
		<section>
		<h1> Vous concernant </h1>


		  <form method="post" action="formulairenutrition_Etape2.jsp">
	   	  <br>
	      <p> <label for="age"> Votre age : </label> <input type="number" id="age" name="age" required="required"/> ans</p><br>

	      <p> <label for="poids"> Votre poids : </label><input type="number" id="poids" name="poids" required="required"/> kg</p> <br>

	      <p><label for="taille"> Votre taille : </label><input type="number" id="taille" name="taille" required="required"/> cm</p> <br> 
	     
	      <p>Vous &ecirctes :   
	      <input type="radio" name="sexe" value="1" id="1" required="required"/> <label for="1"> un homme    </label>    
	      <input type="radio" name="sexe" value="2" id="2" required="required"/> <label for="2"> une femme    </label> 
	  	  </p>
	      <br>
	      <br>

	     <p> <label for="corpulence">Votre corpulence : </label>
	   	  <select name="corpulence" id="corpulence" placeholder="Choississez votre profil"required="required"> 
				<option value="1">Mince</option>
				<option value ="2">Normal</option>
				<option value="3">Large</option>
					
	      </select></p>
	      <br>

          <p>Largeur de poignet : 
          <input type="number" id="largeurpoignet" name="largeurpoignet"required="required" /> <label for ="largeurpoignet"> cm </label>  
      	  </p>
          <p>Largeur de poitrine : 
          <input type="number" id="largeurpoitrine" name="largeurpoitrine" required="required"/> <label for ="largeurpoitrine"> cm </label>  
      	  </p>
          <br>
          <br>

	      <p><label for="profil">Vous &ecirctes plut&ocirct : </label></p>
	      <p>
	       <input type="radio" name="profil" value="1" id="1"required="required"> <label for="1"> V&eacuteg&eacutetarien   </label>              
	       <input type="radio" name="profil" value="2" id="2"required="required"> <label for="2"> Gourmand  </label>  
	       <input type="radio" name="profil" value="3" id="3"required="required"> <label for="3"> Petit mangeur  </label>     
	       <input type="radio" name="profil" value="4" id="4"required="required"> <label for="4"> Sportif  </label> 
	       <input type="radio" name="profil" value="5" id="5"required="required"> <label for="5"> S&eacutedentaire  </label>  </p>
	       <br>  
	       <br>
	      <p> <input type="submit" id=valider" name="valider" value="Passez &agrave l'etape suivante" /></p>
	    </form>
	  </section>
	</div>
	 
	</body>
</html>