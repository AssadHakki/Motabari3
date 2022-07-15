
<!--
Détails du donateur page
On click at donor in search result, visitor will be sent here with request attribute of donor's id
-->

<%
    // Check if we received Donneur id with request, otherwise go back to index.jsp or Search.jsp in future
    if (request.getParameter("id_donneur") == null) {

        request.setAttribute("type", "error");
        request.setAttribute("message", "Aucun identifiant de donneur n'a été spécifié");
        request.getRequestDispatcher("/Chercher/Chercher.jsp").forward(request, response);
        return;
    }
    // check if donor disponible
    // check if donor is current logged in donor
%>


<%@page import="Backend.Connexion"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="icon" href="${pageContext.request.contextPath}/Resources/Images/BloodDrop.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Voir Donateur</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ViewDonor/ViewDonor.css"/>

        <!-- Libraries BEGIN -->
        <link rel="stylesheet"  href="${pageContext.request.contextPath}/Libraries/font-awesome/css/font-awesome.min.css"/>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Libraries/jquery/jquery-3.6.0.min.js"></script>
        <!-- Libraries END -->

        <!-- Default Scripts BEGIN -->
        <script type="text/javascript" src="${pageContext.request.contextPath}/Alerts.js"></script>
        <!-- Default Scripts END -->
    </head>


    <body class="background-image">
        <%@include file="../Header/Header.jsp" %>

        <%            // get doneur id from request attribute
            String id_donneur = request.getParameter("id_donneur").toString();

            String req = "SELECT * FROM Donneur NATURAL JOIN Ville  NATURAL JOIN GroupeSanguin WHERE LOWER(disponible)='oui' AND id_donneur = " + id_donneur;
            System.out.println(req);
            ResultSet R = Connexion.Seconnecter().createStatement().executeQuery(req);
            if (!R.next()) {
                request.setAttribute("type", "error");
                request.setAttribute("message", "Le donneur a été supprimé ou n'est pas disponible pour recevoir des demandes de don de sang.");
                request.getRequestDispatcher("/Chercher/Chercher.jsp").forward(request, response);
                return;
            }

            String prenom = R.getObject("prenom").toString();
            String nom = R.getObject("nom").toString();
            String ville = R.getObject("ville").toString();
            String groupe_sanguin = R.getObject("groupe_sanguin").toString();
            String date_naissance = R.getObject("date_naissance").toString();
            String telephone = R.getObject("telephone").toString();
            String email = R.getObject("email").toString();
            String disponible = R.getObject("disponible").toString();

        %>







        <!-- TEEEEEEEEEEEEEEEEEEEEEESSSSSSSSSSSSSTTTTTTTTTTIIIIIIIIIIIIIIIIIIIINNNNNNGGGG -->     




        <div class="container">
            <div class="donneur-details">
                <div class="donneur-details-header">
                    <img src="${pageContext.request.contextPath}/Resources/Images/DefaultProfileImage.png" class="profile-image"/>


                    <div class=<%= disponible.equals("oui") ? "profile-disponible" : "profile-indisponible"%>   >
                        <%= disponible.equals("oui") ? "Disponible" : "Indisponible"%>
                    </div> 
                </div>

                <div class="info-container" style="display: flex;    flex-direction: row;    justify-content: space-around;  align-items: flex-start; flex-wrap: wrap;    margin-top: 30px;">
                    <div class="info-container-left">

                        <label class="label-title">Nom et prénom :</label>
                        <p style="text-transform: capitalize;"><%= nom%> <%=prenom%> </p>

                        <label class="label-title">Age :</label>
                        <p><%= Calendar.getInstance().get(Calendar.YEAR) - (java.sql.Date.valueOf(date_naissance).getYear() + 1900) %> ans</p>
                         

                        <label class="label-title">Habite à :</label>
                        <p style="text-transform: capitalize;"><%= ville%></p>


                    </div>


                    <div class="info-container-right">

                        <label class="label-title">Groupe Sanguin :</label>
                        <p id="bloodtype" style="color: white; width: fit-content; background-color: #e62b40; margin-top:10px; margin-bottom: 35px; padding: 0 8px; border-radius: 15%;"><strong><%= groupe_sanguin%></strong></p>
                        

                        <label class="label-title">Adresse email :</label>
                        <p style="text-transform: lowercase;"><%= email%></p>

                        <label class="label-title">Numéro de téléphone :</label>
                        <p><%= telephone%></p>

                    </div>
                </div>

                <div class="divider"></div>


                <div class="notice" style="">
                    <span>ATTENTION :</span> <br> <br>
                    <div> <span style="color: #f05454;">•</span> N'oubliez pas de préciser que vous avez trouvé son annonce sur <strong>MOTABARI3</strong> et merci !</div><br>
                    <div> <span style="color: #f05454;">•</span> Veuillez vérifier si <strong>le groupe sanguin</strong> auquel vous êtes à la recherche est <strong>compatible</strong>, Voici un tableau qui vous aidera :</div> <br>
                     
                    <img src="${pageContext.request.contextPath}/Resources/Images/BloodType.jpg" style="display: block;  margin-left: auto;  margin-right: auto; max-width: 70%;"/>
                     
                </div>



            </div>
        </div> 

      


        <%@include file="../Footer/Footer.jsp" %>
    </body>
</html>
