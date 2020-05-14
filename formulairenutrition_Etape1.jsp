<%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" errorPage="" %>
<%@page import="java.time.*"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" />
    <meta charset="UTF-8">
    <title>Questionnaire nutritionnel </title>

</head>

<body>

	 <header>
		       
		</header>
	    
		<section>
		  <p> Ce formulaire  permet de cerner votre alimentation</p>
		  <p> Munissez-vous d'un m&eacutetre ruban, vous allez en avoir besoin pour r&eacutealiser des mesures anthropometrique...</p>
		  <p> A la suite de ce formulaire, vous aurez votre bilan et les recettes adapt&eacutees a votre alimentation<br>  </p>

		  <form method="post" action="formulairenutrition etape2.jsp">
	   	  <br>
	      <p> <label for="age"> Votre age : </label> <input type="number" id="age" name="age" /> ans</p><br>

	      <p> <label for="poids"> Votre poids : </label><input type="number" id="poids" name="poids" /> kg</p> <br>

	      <p><label for="taille"> Votre taille : </label><input type="number" id="taille" name="taille" /> cm</p> <br> 
	     
	      <p>Vous &ecirctes : </p>
	      <input type="radio" name="sexe" value="1" id="1" /> <label for="1"> un homme    </label>    
	      <input type="radio" name="sexe" value="2" id="2" /> <label for="2"> une femme    </label> 
	      <br>
	      <br>

	      <label for="corpulence">Votre coruplence : </label>
	   	  <select name="corpulence" id="corpulence" placeholder="Choississez votre profil"> 
				<option value="1">Mince</option>
				<option value ="2">Normal</option>
				<option value="3">Large</option>
					
	      </select>
	      <br>

          <p>Votre largeur de poignet : </p>
          <input type="number" id="largeurpoignet" name="largeurpoignet" /> <label for ="largeurpoignet"> cm </label>  
      
          <p>Votre largeur de poitrine : </p>
          <input type="number" id="largeurpoitrine" name="largeurpoitrine" /> <label for ="largeurpoitrine"> cm </label>  
          <br>
          <br>

	      <label for="profil">Vous &ecirctes plut&ocirct : </label><br>
	       <INPUT type="radio" name="profil" value="1" id="1"> <label for="1"> 1   </label>              
	       <INPUT type="radio" name="profil" value="2" id="2"> <label for="2"> Gourmand  </label>  
	       <INPUT type="radio" name="profil" value="3" id="3"> <label for="3"> Petit mangeur  </label>     
	       <INPUT type="radio" name="profil" value="4" id="4"> <label for="4"> Sportif  </label> 
	       <INPUT type="radio" name="profil" value="5" id="5"> <label for="5"> S&eacutedentaire  </label>  
	       <br>  
	       <br>
	       <input type="submit" id=Valider" name="Valider" value="Passez &agrave l'etape suivante" />
	    </form>
	  </section>
	 
	</body>
</html>