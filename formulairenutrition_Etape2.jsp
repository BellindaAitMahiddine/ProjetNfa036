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
  <section>
  <h1> ETAPE 2 DU QUESTIONNAIRE :</h1>
  <form method="post" action="formulairenutritionEtape3.jsp">
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
       <h2>Legumes :</h2>
       <p>Quelle quantit&eacute journali&egravere consommez-vous ? <br>
       A Titre indicatif : 1 cuillere &agrave soupe = 30g, 1 courgette = 200g, 1 carotte = 100g :</p>
       <br>
       <input type="number" id="legumes" name="legumes" /> <label for ="legumes"> gramme </label>  
      
       <br>
       <br>
       <h2> Fruits : </h2>
       <p>Quelle quantit&eacute journali&egravere consommez-vous ? A titre indicatif : 1 pomme = 150g, fruits cuits ou crus, en compote ou entiers!</p>
       <br>
       <input type="number" id="fruis" name="fruits" /> <label for="fruits"> gramme </label>  
       
       <br>
       <p> Vous mettez un point d'honneur &agrave consommer des fruits ou l&eacutegumes de saison ? <p>
       <input type="radio" name="saison" value="1" id="1" /> <label for="1">oui  </label>
       <input type="radio" name="saison" value="2" id="2" /> <label for="2">non  </label>
       <br>
       <br>

       <h2> Bio</h2>
       <label for="bio">Consommez-vous des produits biologique ?</label>
         <select name="bio" id="bio" placeholder="Choississez une frequence"> 
            <option value ="3"> Jamais ou rarement</option>
            <option value= "2"> Deux fois par semaine</option>
            <option value= "1"> 4 fois par semaine</option>
            <option value= "0"> Tous les jours</option>
              
          </select>
          <br>
          <br>
        
          <h2>Viandes - Oeufs - Poisson :</h2>
          <p>A titre indicatif : 1 oeuf = 50g, un steack hach&eacute/pav&eacute de saumon : 120g</p>
          
          <input type="number" id="viandes" name="viandes" /> <label for="viandes"> grammes </label>  
          <br>
          <br> 

          <h2> Feculents : </h2>
          <p> Riz - Pates - L&eacutegumes secs - Pomme de terre : <br>
          A titre indicatif : 1 pomme de terre moyenne = 100g, 1 cuill&eacutere à soupe = 30g  </p>         
          <input type="number" id="feculents" name="feculents" />   <label for="feculent"> gramme </label>  
          <br>
          <p> Consommer des l&eacutegumes secs (poids chiche, lentilles, haricot...) ? <p>
          <input type="radio" name="legusecs" value="1" id="1" /> <label for="oui">Oui  </label>
          <input type="radio" name="legusecs" value="2" id="2" /> <label for="non">Non</label>
          <br>
          <br>
        
          <h1>Pain:</h1> 
          <p>A titre indicatif : 1 baguette = 250g, 1 tartine = 30g</p>
          <br>
          <p><label for="pain">Quantit&eacute de pain :  </label> <input type="number" id="pain" name="pain" /> gramme</p> <br>

          <br>
          <h2>Produits laitier</h2>
          <p>Combien de produit laitier consommez-vous par jour :</p>
          <input type="radio" name="lait" value="0" id="0" /> <label for="0">aucun</label><br />
          <input type="radio" name="lait" value="1" id="1" /> <label for="1">1 fois</label><br />
          <input type="radio" name="lait" value="2" id="2" /> <label for="2">2 fois</label><br />
          <input type="radio" name="lait" value="3" id="3" /> <label for="3">3 fois</label><br />
          <input type="radio" name="lait" value="4" id="4" /> <label for="4">plus de 3 fois</label>
          <br>
          <br>

          <h2>Mati&eacutere grasse :</h2>
          <p> Consommez vous des huiles de types Colza, noix, olive, p&eacutepin de raisin ou bien des poissons gras (saumon,sardines, maqueraux) :</p>
          <input type="radio" name="omega3" value="1" id="1" /> <label for="1">Oui  </label>
          <input type="radio" name="omega3" value="2" id="2" /> <label for="2">Non</label><br />

         
          <p>Ajoutez-vous des mati&eacuteres grasse (beurre, cr&eacuteme, huile) dans votre alimentation et notamment pendant la cuisson:</p>
          <input type="radio" name="mgrasse" value="3" id="3" /> <label for="3">A chaque repas</label><br />
          <input type="radio" name="mgrasse" value="2" id="2" /> <label for="2">2 fois par jour</label><br />
          <input type="radio" name="mgrasse" value="1" id="1" /> <label for="1">1 fois par jour</label><br />
          <input type="radio" name="mgrasse" value="0" id="0" /> <label for="0">Jamais ou rarement</label><br />

          <p>Vous arrive t-il de consommez des chips,gateau ap&eacuteritif, friture ? A quelle fr&eacutequence : <p> 
          <input type="radio" name="friture" value= "3" id="3" /> <label for="3">Tous les jours</label><br />
          <input type="radio" name="friture" value= "2" id="2" /> <label for="2">3fois par semaine</label><br />
          <input type="radio" name="friture" value= "1" id="1" /> <label for="1">2fois par semaine</label><br />
          <input type="radio" name="friture" value= "0" id="0" /> <label for="0">Jamais ou Rarement</label><br />

          <br>

          <input type="submit" id=Valider" name="Valider" value="Passez &agrave la derniere etape" />
        </form>
     </section>
  </body>
</html>