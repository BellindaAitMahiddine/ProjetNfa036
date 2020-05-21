<%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" errorPage="" %>
<%@page import="java.time.*"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" />
<meta charset="UTF-8">
    <title>Questionnaire nutritionnel : etape 3 </title>
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
<body>
  <header>
       
  </header>
  <%
  //RECUPERATION DES DONNEES DES DEUX DERNIERS FORMULAIRE
  int age = Integer.parseInt(request.getParameter("age"));
  int poids = Integer.parseInt(request.getParameter("poids"));
  int taille = Integer.parseInt(request.getParameter("taille"));
  int sexe =  Integer.parseInt(request.getParameter("sexe"));
  int corpulence =  Integer.parseInt(request.getParameter("corpulence"));
  int largeurpoignet = Integer.parseInt(request.getParameter("largeurpoignet"));
  int largeurpoitrine = Integer.parseInt(request.getParameter("largeurpoitrine"));
  int profil = Integer.parseInt(request.getParameter("profil"));
  int legumes = Integer.parseInt(request.getParameter("legumes"));
  int fruits = Integer.parseInt(request.getParameter("fruits"));
  int saison = Integer.parseInt(request.getParameter("saison"));
  int bio = Integer.parseInt(request.getParameter("bio"));
  int viandes = Integer.parseInt(request.getParameter("viandes"));
  int feculents = Integer.parseInt(request.getParameter("feculents"));
  int pain = Integer.parseInt(request.getParameter("pain"));
  int legusecs = Integer.parseInt(request.getParameter("legusecs"));
  int lait = Integer.parseInt(request.getParameter("lait"));
  int omega3 = Integer.parseInt(request.getParameter("omega3"));
  int mgrasse = Integer.parseInt(request.getParameter("mgrasse"));
  int friture = Integer.parseInt(request.getParameter("friture"));


  


  %>
   <div id = "formulaire">
    <h1>Derniere etape du questionnaire</h1>
  <table height = '1500' border='0'>
    <form method="post" action="????">


        <%
        //LES DONNEES DES ETAPES PRECEDENTES SONT INTEGREES DANS FORMULAIRE EN CACHE  : input type hidden

          out.println("<input type ='hidden'name = 'age' id ='age' value='"+age+"'>");
          out.println("<input type ='hidden'name = 'poids' id ='poids' value='"+poids+"'>");
          out.println("<input type ='hidden'name = 'taille' id ='taille' value='"+taille+"'>");
          out.println("<input type ='hidden'name = 'sexe' id ='sexe' value='"+sexe+"'>");
          out.println("<input type ='hidden'name = 'corpulence' id ='corpulence' value='"+corpulence+"'>");
          out.println("<input type ='hidden'name = 'largeurpoignet' id ='largeurpoignet' value='"+largeurpoignet+"'>");
          out.println("<input type ='hidden'name = 'largeurpoitrine' id ='largeurpoitrine' value='"+largeurpoitrine+"'>");
          out.println("<input type ='hidden'name = 'profil' id ='profil' value='"+profil+"'>");
          out.println("<input type ='hidden'name = 'legumes' id ='legumes' value='"+legumes+"'>");
          out.println("<input type ='hidden'name = 'fruits' id ='fruits' value='"+fruits+"'>");
          out.println("<input type ='hidden'name = 'saison' id ='saison' value='"+saison+"'>");
          out.println("<input type ='hidden'name = 'bio' id ='bio' value='"+bio+"'>");
          out.println("<input type ='hidden'name = 'viandes' id ='viandes' value='"+viandes+"'>");
          out.println("<input type ='hidden'name = 'feculents' id ='feculents' value='"+feculents+"'>");
          out.println("<input type ='hidden'name = 'pain' id ='pain' value='"+pain+"'>");
          out.println("<input type ='hidden'name = 'legusecs' id ='legusecs' value='"+legusecs+"'>");
          out.println("<input type ='hidden'name = 'lait' id ='lait' value='"+lait+"'>");
          out.println("<input type ='hidden'name = 'omega3' id ='omega3' value='"+omega3+"'>");
          out.println("<input type ='hidden'name = 'mgrasse' id ='mgrasse' value='"+mgrasse+"'>");
          out.println("<input type ='hidden'name = 'friture' id ='friture' value='"+friture+"'>");

      %>

         <tr><th colspan="2"><h1>Produits sucr&eacutes et sucre : </h1></th></tr>
         <tr><th>Manger vous des prouits sucr&eacutes :  barre chocolat&eacutes, bonbons, confiture, sodas, jus, morceaux de sucre dans le caf&eacute ou le th&eacute :
       <br></th>
         <td><br><br><br><br><br><p><input type="number" id="sucre" name="sucre"required="required" /><label for="sucre"> g</label> </p>
          <p> A titre indicatif :<br>un mars(45g) contient 30g, une petite poign&eacutee de bonbon = 40g , 1 morceaux de sucre : 5g, soda: une canette (33cl)= 35g :</p></td></tr>

         <tr><th colspan="2"><h1> Alcool</h1></th></tr>
         <tr><th>A quelle fr&eacutequence consommez-vous de l'alcool ? </th>
              <label for="alcool"></label>
                <td><p><select name="alcool" id="alcool"required="required"> 

                  <option value= "0"> Jamais ou rarement</option>
                  <option value= "1"> 2 fois par semaine</option>
                  <option value= "2"> 4 fois par semaine</option>
                  <option value= "3"> Tous les jours</option>
                  <option value=" 4"> Plusieurs fois par jour</option>
                  
                </select></p></td></tr>

          <tr><th colspan="2"><h1>Boisson </h1></th></tr>
          <tr><th> Quelle quantit&eacute de boisson (caf&eacute, th&eacute, eau...) prenez-vous par jour? </th>
          <td><p><input type="number" id="eau" name="eau" required="required"/><label for="sucre"> ml</label></p> <p>A titre indicatif: <br>(Un mug a caf&eacute = 200ml)</p></td></tr>

          <br>

          <tr><th colspan="2"><h1>Cuisine</h1></th></tr>
          <tr><th> Vous consommez fr&eacutequemment des plats tout fait, industriels plut&ocirct que cuisinez vous m&ecircme soit par manque de temps ou d'envie </th>
       
         <td><p><input type="radio" name="cuisine" value="2" id="2"required="required" /> <label for="2">Oui  </label>
          <input type="radio" name="cuisine" value="1" id="1"required="required" /> <label for="1">Non</label><br></p></td></tr>

          <tr><th>Mangez - vous au Fast food (pizza, kebab, macdo....) : </th>          
          <td><p><br><input type="radio" name="fastfood" value="3" id="3" required="required" /> <label for="3">Plusieurs par semaines</label><br>
          <input type="radio" name="fastfood" value="1" id="1"required="required" /> <label for="1">1 fois toutes les deux semaines</label><br>
          <input type="radio" name="fastfood" value="0" id="0" required="required"/> <label for="0">Jamais ou Rarement</label><br><br></p></td></tr>


          <tr><th>Agr&eacutementez-vous fr&eacutequemment vos repas d'&eacutepices (curcuma, gingembre, cumin...) ?</th>
           <td><p><input type="radio" name="epices" value="0" id="0" required="required"/> <label for="0"> Oui </label>
          <input type="radio" name="epices" value="1" id="1" required="required"/> <label for="1"> Non </label></p></td></tr>
       
          <tr><th></th><td> <br><br><br><input type="submit" id=valider" name="valider" value="valider le questionnaire" /></td></tr>
        </form>
        </table>
  </body>
</html>