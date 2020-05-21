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
  <div id = "menu">
    <ul>
      <li><a href="page_acceuil.html"> ACCEUIL </a> </li>
      <li><a href="bien_manger.html"> BIEN MANGER </a> </li>
      <li><a href="cuisine_recettes.html"> CUISINE ET RECETTES </a> </li>
      <li><a href="index.html"> BIEN-ÊTRE </a> </li>
    </ul>

  </div>
	<div id = "formulaire">
		  <table height = '1000' border='0'>
		  	<form method="post" action="formulairenutrition_Etape2.jsp">
<h1> Etape 1 du questionnaire</h1>
	      <tr><th><label for="age"> Votre age : </label></th><td> <input type="number" id="age" name="age" required="required"/> ans</td></tr><br>
	  
	      <tr><th><label for="poids"> Votre poids : </label></th><td><input type="number" id="poids" name="poids" required="required"/> kg</td></tr><br>

	     <tr><th><label for="taille"> Votre taille : </label></th><td> <input type="number" id="taille" name="taille" required="required"/> cm</td></tr><br>
	     
	      <tr><th>Vous &ecirctes : </th> 
	      <td><input type="radio" name="sexe" value="1" id="1" required="required"/> <label for="1"> un homme    </label>    
	      <input type="radio" name="sexe" value="2" id="2" required="required"/> <label for="2"> une femme    </label></td></tr> 
	  	  
	      <br>
	      <br>

	     <tr><th><label for="corpulence">Votre corpulence : </label></th>
	   	  <td><select name="corpulence" id="corpulence" placeholder="Choississez votre profil"required="required"> 
				<option value="1">Mince</option>
				<option value ="2">Normal</option>
				<option value="3">Large</option>
					
	      </select></td></tr>
	      <br>

          <tr><th>Tour de poignet :</th>
         <td> <input type="number" id="largeurpoignet" name="largeurpoignet"required="required" /> <label for ="largeurpoignet"> cm </label> </td></tr>
      	 
          <tr><th>Tour de buste : </th>
          <td><input type="number" id="largeurpoitrine" name="largeurpoitrine" required="required"/> <label for ="largeurpoitrine"> cm </label> </td></tr>
      	  
          <br>
          <br>

	     <tr><th><label for="profil">Vous &ecirctes plut&ocirct : </label></th>
	      <td>
	       <input type="radio" name="profil" value="1" id="1"required="required"> <label for="1"> V&eacuteg&eacutetarien   </label>              
	       <input type="radio" name="profil" value="2" id="2"required="required"> <label for="2"> Gourmand  </label>  
	       <input type="radio" name="profil" value="3" id="3"required="required"> <label for="3"> Petit mangeur  </label>     
	       <input type="radio" name="profil" value="4" id="4"required="required"> <label for="4"> Sportif  </label> 
	       <input type="radio" name="profil" value="5" id="5"required="required"> <label for="5"> S&eacutedentaire  </label> </td></tr>
	       <br>  
	       <br>
	       <tr></tr>
	      <tr><th></th><td> <input type="submit" id=valider" name="valider" value="Passez &agrave l'etape suivante" /></td></tr>

	      </form>

	</table>
	
	</div>
	 
	</body>
</html>