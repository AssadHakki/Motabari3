
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="icon" href="${pageContext.request.contextPath}/Resources/Images/BloodDrop.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Qui Sommes-Nous?</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/About/About.css"/>

    </head>
    <body class="background-image">
        <%@include file="../Header/Header.jsp" %>


        <div class="header-container">
            Qui est MOTABARI3 ?
        </div>

    <div class="container">
        <div class="containers1">
            <img class="left"  src="${pageContext.request.contextPath}/Resources/Images/undraw_doctors_hwty.png" >

            <div class="right">
                <div>
                    <span style="color: #f05454"> Motabari3</span> est une plateforme fondée en 2022, dont l'objectif principal est de faciliter les procédures de recherche d'un donneur et de don de sang et de pouvoir les contacter le plus rapidement possible pour sauver des vies dans les cas critiques afin de réduire le nombre de décès attribués à la pénurie de sang en Maroc.<br><br>
                    <span style="color: #f05454"> Motabari3</span> s'efforce de devenir la plateforme où les patients et les donneurs peuvent obtenir des informations sur les personnes vivant dans leur région qui peuvent être aidées et sauvées en donnant du sang.
                </div>
            </div>
        </div>


        <div class="containers2">


            <div class="right">
                <div>
                    Nous sommes une initiative sociale purement non commerciale visant à faciliter les choses pour les personnes ayant besoin de donneurs de sang, afin que, par une intervention rapide, une vie puisse être sauvée. <br><br>
                   N'hésitez pas à nous faire part de vos commentaires sur  <span style="color: #f05454"> Motabari3</span>. Contactez-nous à  <span style="color: #2242b7"> contact@motabari3.ma</span> si vous avez des questions ou avez besoin d'informations concernant notre projet.
                    
                </div>
            </div>

            <img class="left" src="${pageContext.request.contextPath}/Resources/Images/undraw_gifts_btw0.png" >
        </div>

    </div>
        <%@include file="../Footer/Footer.jsp" %>
    </body>
</html>
