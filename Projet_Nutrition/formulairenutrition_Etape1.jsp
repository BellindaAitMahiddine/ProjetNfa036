<%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" errorPage="" %>
<%@page import="java.time.*"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" />
<meta charset="UTF-8">
    <title>Questionnaire nutritionnel : etape 1 </title>

    <link rel="stylesheet" href="style-css.css">
</head>
<body>
  <div id = "banner1">
    <img src="images/image-head.jpg">
  </div>
  <center>
  <div id="center"><div id = "menuform">
   <center> <ul>
      <li><a href="page_acceuil.html"> ACCEUIL </a> </li>
      <li><a href="bien_manger.html"> BIEN MANGER </a> </li>
      <li><a href="cuisine_recettes.html"> CUISINE ET RECETTES </a> </li>
      <li><a href="index.html"> BIEN-&EcircTRE </a> </li>
    </ul></center>
  </div></center>

	<div id = "formu">
			<center> <h1> Etape 1 du questionnaire</h1></center>
		  	<form method="post" action="formulairenutrition_Etape2.jsp">

		  	<center><progress id="bar"value="25" max="100">	</progress></center>

		  <center>	
	    <p> <label for="age"> Votre &acircge : </label>  <input type="number" id="age" name="age" required="required"/> ans</p><br>
	  
	    <p><label for="poids"> Votre poids : </label>   <input type="number" id="poids" name="poids" required="required"/> kg</p><br>

	     <p><label for="taille"> Votre taille : </label>    <input type="number" id="taille" name="taille" required="required"/> cm</p><br>
	     
	      <p>Vous &ecirctes : </p>
	      <p><input type="radio" name="sexe" value="1" id="1" required="required"/> <label for="1"> un homme  </label>    
	      <input type="radio" name="sexe" value="2" id="2" required="required"/> <label for="2"> une femme    </label></p>
	  	  
	      <br>
	      <br>

	    <p><label for="corpulence">Votre corpulence : </label>
	   	  <select name="corpulence" id="corpulence" placeholder="Choississez votre profil"required="required"> 
				<option value="1">Mince</option>
				<option value ="2">Normal</option>
				<option value="3">Large</option>
					
	      </select></p>
	      <br>

          <p><label for ="largeurpoignet"> Tour de poignet : </label> <input type="number" id="largeurpoignet" name="largeurpoignet"required="required" />  cm</p><br>
      	 
          <p><label for ="largeurpoitrine"> Tour de buste : </label> <input type="number" id="largeurpoitrine" name="largeurpoitrine" required="required"/> cm</p><br>
      	  
          <br>
          <br>

	     <p><label for="profil">Votre niveau d'activit&eacute physique : </label></p><p>
	       <input type="radio" name="profil" value="1" id="1"required="required"> <label for="1"> S&eacutedentaire </label>              
	       <input type="radio" name="profil" value="2" id="2"required="required"> <label for="2"> Activit&eacute normal </label>  
	       <input type="radio" name="profil" value="3" id="3"required="required"> <label for="3"> Activit&eacute importante  </label>     
	       <input type="radio" name="profil" value="4" id="4"required="required"> <label for="4"> Activit&eacute tres importante </label> </p>
	     <p>  <div class="indication">S&eacutedentaire : moins de 30 min d'activit&eacute physique par jour - Activit&eacute normale : entre 30 min et 1h - Activit&eacute importante : entre 1h et 2h - Activit&eacute tres importante : superieur a 2h</div></p></center>
	       <br>  
	       <br>
	       <br>
	      <table border="0" width="100%" margin-bottom = "20px"> <tr><th><p> <input type="button" value="Retour &agrave la page d'accueil" onclick="history.go(-1)"></p> </th><td><p><input type="submit" id=valider" name="valider" value="Passez &agrave l'etape suivante" /></p></td></tr></table>
	
	      </form>
	
	</div>
</div>
	 <div id = "footer">
	</div>
	</body>
</html>