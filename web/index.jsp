


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
        <title>Accueil</title>

        <!-- Style -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/index.css"/>

        <!-- Libraries CSS BEGIN -->
        <link rel="stylesheet"  href="${pageContext.request.contextPath}/Libraries/font-awesome/css/font-awesome.min.css"/>
        <!-- Libraries CSS END -->



    </head>


    <body class="background-image">

        <%@include file="Header/Header.jsp" %>



        <!-- Carousel Slider BEGIN (items will be inserted with jQuery) -->
        <div class="carousel">

        </div>
        <!-- Carousel Slider END -->


        <div class="containers2">


            <div class="right">
                <div>
                    <h1 style="color: #39a6a3;">LES BESOINS<br>SONT QUOTIDIENS.</h1>
                    <p style="margin-bottom: 80px;">Chaque jour, nous avons besoin de sang pour accompagner une femme qui accouche, une personne accidentée de la route, un malade atteint de cancer... Les situations sont aussi variées que régulières. L’acte volontaire et bénévole de donner son sang est donc irremplaçable. Vous êtes irremplaçables ! </p>
                    

                    <%                         // if user is not logged in, ask him/her to register and become a donor
                         if (session.getAttribute("id_donneur") == null) {%>
                         <div class="je-donne"><a href="${pageContext.request.contextPath}/Register/Register.jsp">Je donne mon sang</a></div> 
                    <%}
                    %>
                </div>
            </div>

            <img class="left" src="${pageContext.request.contextPath}/Resources/Images/girl.jpg" >
        </div>










        <div class="donors-by-region-container">
            <div class="donors-by-region-container-title" style="text-transform: uppercase;">Le nombre de donneurs par ville :</div>

            <%                String req = "select  distinct t.id_ville , s.ville , s.total from  (SELECT ville , COUNT(distinct id_donneur) as total FROM Donneur  NATURAL JOIN Ville  WHERE disponible = 'oui' GROUP BY ville ORDER BY total DESC) s join (select * from Donneur natural join Ville ) t  on s.ville = t.ville order by s.total DESC";
                ResultSet R = Connexion.Seconnecter().createStatement().executeQuery(req);
                while (R.next()) {%>

            <div class="donors-by-region-item">
                <div class="donors-by-region-item-title"><%= R.getString("ville")%></div>
                <div class="divider"></div>
                <div class="donors-by-region-item-total">
                    <%= R.getString("total")%> Donneurs
                </div> 
               
            </div>
            <%}
            %>
        </div>

        <div class="faqs-container">
            <div>VOUS AVEZ DES QUESTIONS SUR LE DON DE SANG ?</div>
            <a href="${pageContext.request.contextPath}/FAQs/faqs.jsp">Lisez nos FAQ pour répondre à vos questions </a>
        </div>




        <%
            // if user is not logged in, ask him/her to register and become a donor
            if (session.getAttribute("id_donneur") == null) {%>
        <div class="become-donor-container">
            <div>VOTRE DON 
                DE SANG SAUVERA DES VIES.</div>
            <a href="${pageContext.request.contextPath}/Register/Register.jsp">Devenez un donneur de sang et faites une différence</a>
        </div>
        <%}
        %>


        <%@include file="Footer/Footer.jsp" %>



        <!-- Libraries JS BEGIN -->
        <script type="text/javascript" src="${pageContext.request.contextPath}/Libraries/jquery/jquery-3.6.0.min.js"></script>
        <!-- Slick (Carousel Slider Library) BEGIN -->
        <!-- Add the slick-theme.css if you want default styling -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Libraries/slick/slick.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Libraries/slick/slick-theme.css"/>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Libraries/slick/slick.min.js"></script>
        <!-- Slick (Carousel Slider Library) END -->
        <!-- Libraries JS END -->

        <!-- Default Scripts BEGIN -->
        <script type="text/javascript" src="${pageContext.request.contextPath}/Carousel.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Alerts.js"></script>
        <!-- Default Scripts END -->

    </body>




</html>
