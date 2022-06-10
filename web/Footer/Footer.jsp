

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Footer</title>
        
       <!-- Libraries BEGIN -->
         <!-- FontAwesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />

        <script type="text/javascript" src="${pageContext.request.contextPath}/Libraries/jquery/jquery-3.6.0.min.js"></script>
       <!-- Libraries END -->

    </head>
   
   
    
    <body>
        <footer>
            <div class="footer-top">
            
              <div class="footer-top-items">
                
                <!--<img src="${pageContext.request.contextPath}/Resources/Images/LogoLight.png" width="234">!-->
                <h2>MOTABARI3</h2>

                <p class="website-description">
                    C'est une plateforme qui facilite le processus de recherche d'un donneur de sang et de gagner du temps en particulier dans les cas critiques où cela peut sauver des vies.
                </p>
                <br>
               
                <h2>SUIVEZ NOUS</h2>
                <i class=""></i>
                <a class="fab fa-facebook-f social-icon" href="https://www.facebook.com/"></a>
                <a class="fab fa-twitter social-icon" href="http://www.twitter.com/"></a>
                <a class="fab fa-instagram social-icon" href="http://www.instagram.com/"></a>
                
              </div>
               
              <div class="footer-top-items">
                <h2>LIENS UTILES</h2>
                <ul class="links-list">
                  <li><a href="${pageContext.request.contextPath}/index.jsp">Accueil</a></li>
                  <li><a href="${pageContext.request.contextPath}/Chercher/Chercher.jsp">Chercher des Donateurs</a></li>
                  <li><a href="${pageContext.request.contextPath}/About/About.jsp">Qui Sommes-Nous?</a></li>
                  <%
                      // if donor is logged in, show profile link
                      if(session.getAttribute("id_donneur") != null)
                      {%>
                            <li><a href="${pageContext.request.contextPath}/Profile/Profile.jsp">Mon Profil</a></li>
                      <%}
                       else // otherwise, show register & login links
                        {%>
                            <li><a href="${pageContext.request.contextPath}/Login/Login.jsp">Connexion</a></li>
                            <li><a href="${pageContext.request.contextPath}/Register/Register.jsp">Devenir Donateur? S'inscrire</a></li>
                        <%}
                  %>
                    <li><a href="${pageContext.request.contextPath}/FAQs/faqs.jsp">FAQ</a></li>

                </ul>
              </div>
              <div class="footer-top-items">
                <h2>RETROUVEZ-NOUS</h2>
                  <div class="row"><i class="fa fa-map-pin icon" aria-hidden="true"></i><span style="font-size: 18px;">&nbsp;&nbsp;&nbsp;Numéro 372 Boulevard Al Qods Sidi Maârouf 20190 Casablanca</span></div>
                  <br>
                  <br>
                  <div class="row"><i class="fa fa-phone icon" aria-hidden="true"></i><span style="font-size: 18px;">&nbsp;&nbsp;&nbsp;+212 5 22 22 22 22</span></div>
                  <br>
                  <br>
                  <div><i class="fa fa-envelope icon" aria-hidden="true"></i><span style="font-size: 18px;">&nbsp;&nbsp;&nbsp;contact@motabari3.ma</span></div>
              </div>
            </div>
            <div class="footer-bottom">
              © <% out.print(Calendar.getInstance().get(Calendar.YEAR)); %> Motabari3  |  All Rights Reserved.
            </div>
        </footer>
    </body>
    
    <style type="text/css">
        /* ///////////////////////////=================== Theme.css which includes defaults =================//////////////////////////////////////////////// */
        @import "${pageContext.request.contextPath}/Theme.css";
        /* ///////////////////////////=======================================================================//////////////////////////////////////////////// */
    
        /* FOOTER BEGIN */
        footer
        {
            display: flex;
            flex-direction: column;
            font-weight: 100;
            margin-top:150px; 
        }
        .footer-top
        {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: space-around;
            align-items: flex-start;
            background-color: #16406a;
            color: whitesmoke;
            width: 100%;
        }
        .footer-top-items
        {
            min-width: 300px;
            width: 25%;
            padding: 20px 50px 50px;
        }
        .website-description
        {
            font-size: 18px;
            font-family:  "SF-Pro-Display-Light" !important;
        }
       
        .footer-bottom
        {
            background-color: #12223a;
            color: whitesmoke;
            text-align: center;
            text-transform: uppercase;
            padding: 10px;
            font-family: "SF-Pro-Display-Light" !important;
        }
        .footer-top-items ul {
            padding: 0px;
            list-style: none;
        }
        .footer-top-items ul li {
            margin-bottom: 16px;
        }
        .footer-top-items ul li a{
            font-size: 18px;
            font-weight: 100;
            text-decoration: none;
            color: whitesmoke;

        }
        .icon{
            color: #f05454;
            background-color: none;
        }
        .social-icon
        {
            color: #f05454;
            background-color: none;
            text-decoration: none;
            font-size: 30px;
            padding-right: 30px;
        }
      
        .links-list a:hover
        {
            color: #f05454;
        }
        /* FOOTER END */

    </style>

</html>