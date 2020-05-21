<%@page contentType="text/html" language="java" import="java.sql.*,java.text.*" errorPage="" %>
<%@page import="java.time.*"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" />
<meta charset="UTF-8">
    <title>Questionnaire nutritionnel : etape 2 </title>
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

  
<%
//Recuperation des données du formulaire de la premiere étape
  int age = Integer.parseInt(request.getParameter("age"));
  int poids = Integer.parseInt(request.getParameter("poids"));
  int taille = Integer.parseInt(request.getParameter("taille"));
  int sexe =  Integer.parseInt(request.getParameter("sexe"));
  int corpulence =  Integer.parseInt(request.getParameter("corpulence"));
  int largeurpoignet = Integer.parseInt(request.getParameter("largeurpoignet"));
  int largeurpoitrine = Integer.parseInt(request.getParameter("largeurpoitrine"));
  int profil = Integer.parseInt(request.getParameter("profil"));
  
  

  %>
  <div id = "formulaire">
  
  <h1> Etape 2 du questionnaire:</h1>
  <table height = '2000' border='0'>
  <form method="post" action="formulairenutrition_Etape3.jsp">
<%
        //QUESTIONNAIRE EN PLUSIEURS ETAPES : MOINS DECOURAGEANT POUR l'UTILISATEUR
       //LES DONNEES DE LA PREMIERE ETAPES SONT INTEGREES DANS FORMULAIRE EN CACHE  : input type hidden puis envoyer avec le reste des données de ce formulaire 

      out.println("<input type ='hidden'name = 'age' id ='age' value='"+age+"'>");
      out.println("<input type ='hidden'name = 'poids' id ='poids' value='"+poids+"'>");
      out.println("<input type ='hidden'name = 'taille' id ='taille' value='"+taille+"'>");
      out.println("<input type ='hidden'name = 'sexe' id ='sexe' value='"+sexe+"'>");
      out.println("<input type ='hidden'name = 'corpulence' id ='corpulence' value='"+corpulence+"'>");
      out.println("<input type ='hidden'name = 'largeurpoignet' id ='largeurpoignet' value='"+largeurpoignet+"'>");
      out.println("<input type ='hidden'name = 'largeurpoitrine' id ='largeurpoitrine' value='"+largeurpoitrine+"'>");
      out.println("<input type ='hidden'name = 'profil' id ='profil' value='"+profil+"'>");
%>
       <tr><th colspan="2"><h1>L&eacutegumes :</h1></th></tr>
       <tr><th>Quelle quantit&eacute journali&egravere consommez-vous ? <br>
       A Titre indicatif : 1 cuillere &agrave soupe = 30g, 1 courgette = 200g, 1 carotte = 100g :</th>
        <td><p><input type="number" id="legumes" name="legumes" required="required"/> <label for ="legumes"> g</label></p></td></tr>
       <tr><th colspan="2"><h1> Fruits : </h1></th></tr>
        <tr><th>Quelle quantit&eacute journali&egravere consommez-vous ? <br>A titre indicatif : 1 pomme = 150g, fruits cuits ou crus, en compote ou entiers!</th>
       <td><p><input type="number" id="fruis" name="fruits"required="required" /> <label for="fruits"> g</label>  </p></td></tr>
  
       <tr><th > Mettez vous un point d'honneur &agrave consommer des fruits ou l&eacutegumes de saison ?</th>
       <td><p><input type="radio" name="saison" value="1" id="1"required="required"/> <label for="1">oui  </label>
       <input type="radio" name="saison" value="2" id="2" required="required"/> <label for="2">non  </label></p></td></tr>

       <tr><th colspan="2"><h1> Bio</h1></th></tr>
      <tr><th><label for="bio">Consommez-vous des produits biologique ?</label></th>
         <td><p><select name="bio" id="bio" placeholder="Choississez une frequence"required="required">
            <option value ="3"> Jamais ou rarement</option>
            <option value= "2"> Deux fois par semaine</option>
            <option value= "1"> 4 fois par semaine</option>
            <option value= "0"> Tous les jours</option>
              
          </select></p></td></tr>
        
           <tr><th colspan="2"><h1>Viandes - Oeufs - Poisson :</h1></th></tr>
          <tr><th>A titre indicatif : 1 oeuf = 50g, un steack hach&eacute/pav&eacute de saumon : 120g</th>
          
          <td><p><input type="number" id="viandes" name="viandes" required="required"/> <label for="viandes"> g </label></p></td></tr>

           <tr><th colspan="2"><h1> F&eacuteculents : </h1></th></tr>
          <tr><th>Riz - Pates - L&eacutegumes secs - Pomme de terre : <br>
          A titre indicatif : 1 pomme de terre moyenne = 100g, 1 cuill&eacutere à soupe = 30g  </th>         
          <td><p><input type="number" id="feculents" name="feculents"required="required" />   <label for="feculent"> g </label> </p></td></tr>
         
           <tr><th> Consommer des l&eacutegumes secs (poids chiche, lentilles, haricot...) ? </th>
          <td><p><input type="radio" name="legusecs" value="1" id="1"required="required" /> <label for="oui">Oui  </label>
          <input type="radio" name="legusecs" value="2" id="2" required="required"/> <label for="non">Non</label></p></td></tr>
                 
           <tr><th colspan="2"><h1>Pain:</h1> </th></tr>
          <tr><th>A titre indicatif : 1 baguette = 250g, 1 tartine = 30g</th>
          <td><p><label for="pain">Quantit&eacute de pain  :  </label> <br><br> <input type="number" id="pain" name="pain" /> g</p></td></tr>

         
          <tr><th colspan="2"><h1>Produits laitier</h1></th></tr>
          <tr><th>Combien de produit laitier consommez-vous par jour :</th>
          <td><p><input type="radio" name="lait" value="0" id="0" required="required"/> <label for="0">aucun</label><br>
          <input type="radio" name="lait" value="1" id="1" required="required"/> <label for="1">1 fois</label><br>
          <input type="radio" name="lait" value="2" id="2" required="required"/> <label for="2">2 fois</label><br>
          <input type="radio" name="lait" value="3" id="3" required="required"/> <label for="3">3 fois</label><br>
          <input type="radio" name="lait" value="4" id="4" required="required"/> <label for="4">plus de 3 fois</label></p></td></tr>
          

          <tr><th colspan="2"><h1>Mati&eacutere grasse :</h1></th></tr>
          <tr><th>Consommez vous des huiles de types Colza, noix, olive, p&eacutepin de raisin <br>ou bien des poissons gras (saumon,sardines, maqueraux) :</th>
          <td><p><input type="radio" name="omega3" value="1" id="1" required="required"/> <label for="1">Oui  </label>
          <input type="radio" name="omega3" value="2" id="2" required="required"/> <label for="2">Non</label></p></td></tr>
          <tr><th></th></tr>
          <tr><th>Ajoutez-vous des mati&eacuteres grasse (beurre, cr&eacuteme, huile) dans votre alimentation,<br> notamment pendant la cuisson?</th>
          <td><p><input type="radio" name="mgrasse" value="3" id="3" required="required"/> <label for="3">A chaque repas</label><br>
          <input type="radio" name="mgrasse" value="2" id="2" required="required"/> <label for="2">2 fois par jour</label><br />
          <input type="radio" name="mgrasse" value="1" id="1" required="required"/> <label for="1">1 fois par jour</label><br>
          <input type="radio" name="mgrasse" value="0" id="0" required="required"/> <label for="0">Jamais ou rarement</label></p></td></tr>

          <tr><th>Vous arrive t-il de consommez des chips,gateau ap&eacuteritif, friture ? A quelle fr&eacutequence : </th>         
          <td><p><input type="radio" name="friture" value= "3" id="3" required="required"/> <label for="3">Tous les jours    </label><br>
          <input type="radio" name="friture" value= "2" id="2" required="required"/> <label for="2">3fois par semaine   </label><br>
          <input type="radio" name="friture" value= "1" id="1" required="required"/> <label for="1">2fois par semaine   </label><br>
          <input type="radio" name="friture" value= "0" id="0" required="required"/> <label for="0">Jamais ou Rarement</label><br /></p></td></tr>
           
          <tr><th></th><td><br><br><br><input type="submit" id=valider" name="valider" value="Passez &agrave la derniere etape" /></td></tr>
        </form>
    </table>
  </body>
</html>