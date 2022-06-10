
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Header</title>
        
       <!-- Libraries BEGIN -->
        <link rel="stylesheet"  href="${pageContext.request.contextPath}/Libraries/font-awesome/css/font-awesome.min.css"/>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Libraries/jquery/jquery-3.6.0.min.js"></script>
       <!-- Libraries END -->

    </head>


    <body>
        <header>
            <div class="toggle-btn" onclick="$('nav').toggle('show');">
                <span></span>
                <span></span>
                <span class="bottom-span"></span>
            </div>
            <div class="logo">
                <a href="${pageContext.request.contextPath}/index.jsp"><img class="header-logo" src="${pageContext.request.contextPath}/Resources/Images/LogoLight.png" alt="Motabari3 Logo"></a>
            </div>
            <nav id="nav">
                <ul>
                    <!-- Acceuil, always visible -->
                    <li><a href="${pageContext.request.contextPath}/index.jsp" id="${pageContext.request.requestURI.equals('/Motabari3/index.jsp') ? 'active-tab' : ''}">Accueil</a></li>
                   
                   
                    <!-- Qui Somme Nous ?, always visible -->
                    <li><a href="${pageContext.request.contextPath}/About/About.jsp" id="${pageContext.request.requestURI.equals('/Motabari3/About/About.jsp') ? 'active-tab' : ''}">Qui Somme Nous ?</a></li>

                    <!-- Qui Somme Nous ?, always visible -->
                    <li><a href="${pageContext.request.contextPath}/FAQs/faqs.jsp" id="${pageContext.request.requestURI.equals('/Motabari3/FAQs/faqs.jsp') ? 'active-tab' : ''}">FAQ</a></li>

                    
                    <!-- Chercher des donateurs, always visible -->
                    <li><a href="${pageContext.request.contextPath}/Chercher/Chercher.jsp" id="${(pageContext.request.requestURI.equals('/Motabari3/Chercher/Chercher.jsp') || pageContext.request.requestURI.equals('/Motabari3/ViewDonor/ViewDonor.jsp')) ? 'active-tab' : ''}">Trouver un Donneur</a></li>

                    <%
                         final boolean isLoggedIn = session.getAttribute("id_donneur") != null;
                        // If donneur is logged in, show [Profil] | [Se Déconnecter] nav items
                        if(isLoggedIn) // Logged in
                        {%>
                             <li><a href="${pageContext.request.contextPath}/Profile/Profile.jsp" id="${pageContext.request.requestURI.equals('/Motabari3/Profile/Profile.jsp') ? 'active-tab' : ''}">Mon Profil</a></li>  
                             <li>
                               <form action="${pageContext.request.contextPath}/Authentication" method="POST">
                                 <!--<li><a href="${pageContext.request.contextPath}/Logout/Logout.jsp" name="operation" value="Se Deconnecter">Se Déconnecter</a></li> -->
                                   <input type="submit" name="operation" value="Se Deconnecter" class="se-deconnecter-button" /> 
                                </form>
                             </li>
                      <%} 
                        else // Donneur is not logged in, show [Connexion] | [Devenir donateur ? S'inscrire]
                        {%>
                            <li><a href="${pageContext.request.contextPath}/Register/Register.jsp" id="${pageContext.request.requestURI.equals('/Motabari3/Register/Register.jsp') ? 'active-tab' : ''}">Devenir un Donateur</a></li> 
                            <li><a href="${pageContext.request.contextPath}/Login/Login.jsp" id="${pageContext.request.requestURI.equals('/Motabari3/Login/Login.jsp') ? 'active-tab' : ''}">Connexion</a></li>  
                               
                      <%}
                    %>
                         
                </ul>
            </nav>
        </header>
    </body>
    
    
    
    
        <style type="text/css">
        /* ///////////////////////////=================== Theme.css which includes defaults =================//////////////////////////////////////////////// */
        @import "${pageContext.request.contextPath}/Theme.css";
        /* ///////////////////////////=======================================================================//////////////////////////////////////////////// */

       header
       {
            display: inline-block;
            width: 100%;
            padding: 0px 32px;
            position: relative;
            background-color: #d73e3e;
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;   
            z-index: 10;
       }
        .logo
        {
            float: left;
            transition: 500ms;
        }
        .logo:hover
        {
           
            transition: 500ms;
        }
        .header-logo
        {
            width: 200px;
            padding:  25px 0px 25px;
        }
        nav
        {
            float: right;
        }
       
         nav ul
         {
             margin:0px;
         }
        nav ul li
        {
            display: inline-block;
            padding: 0px 25px ;

        }
        
        nav ul li a
        {
              font-family: "SF-Pro-Display-Regular" !important;
            text-decoration: none;
            display: inline-block;
            font-size: 17px;
            color: whitesmoke;
            text-transform: uppercase;
             margin:30px 0px;

            
        }
        nav ul li a:hover, #active-tab{
            
            color: #233546;
            transition: 400ms;
            font-family: "SF-Pro-Display-Regular" !important;


        }
        
        .toggle-btn
        {
            display: none;
            position: absolute;
            width: 33px;
            right: 26px;
            top: 23px;
            /*      
            right: 26px;
            top: 27px;
            */
        }
        .toggle-btn span
        {
            display: inline-block;
            float: left;
            width: 100%;
            height: 3px;
            background-color: whitesmoke;
            margin-bottom: 8px;
            border-radius: 8px;
        }
  
       
        
        @media (max-width: 1347px) 
        {
            .toggle-btn
            {
                display: block;
            }
            nav
            {
                display: none;
                width: 100%;
                border-top: 1px solid whitesmoke;
                padding-top: 20px;
                margin-top: 20px;
                text-align: center;
            }
            nav ul
            {
                padding: 0;
            }
            nav ul li 
            {
                padding: 15px;
                width: 100%;
            }
            nav.show
            {
                display: block;
            }
        }
        
        .se-deconnecter-button
        {
            background-color: #d73e3e;
            color: whitesmoke;
            text-transform: uppercase;
            font-size: 17px;
            border-radius: 6px;
            padding: 5px;
            border: 0;
        }
        .se-deconnecter-button:hover
        {
           font-weight: 700;
            color: #233546;
           
            cursor: pointer;
            transition: 400ms;
        }
    </style>
</html>
