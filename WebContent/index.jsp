<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/app.css">
    <link rel="stylesheet" href="css/logo.css">
    <title>The Complete Protein Database</title>
</head>
<body id="particles-js">
    <nav>
        <div id="headerLogoTitle">
            <img id="headerLogo" src="images/dbIcon.svg" alt="">
            <a id="homeButton" href="index.php"> Pro<span class="red">.</span>DB</a>
        </div>

        <a id="infoButton" href="about.html"><i class="fa fa-question-circle" aria-hidden="true"></i></a>
    </nav>
  
    <div id="mainContent">
        <div class="logoBox">
        
            <%@ include file="logo.html" %>
            
        </div>
    <!-- FORM -->
        <form action="protein.php" action="GET">
            <input type="text" name="searchQuery" id="searchBar" placeholder="Search protein..." required="true">
            <input type="submit" id="submitButton" value="GO!">
        </form>
    </div>


</body>
<script src="https://cdn.jsdelivr.net/npm/particles.js@2.0.0/particles.js"></script>
<script src="js/particleApp.js"></script>
</html>