<%@ include file="head.jsp" %>  

<body id="particles-js">

    <%@ include file="nav.html" %>    
  
    <div id="mainContent">
    
        <div class="logoBox">   
            <%@ include file="logo.html" %>       
        </div>
        
    		<!-- FORM -->
        <form action="protein.jsp" action="GET">
            <input type="text" name="searchQuery" id="searchBar" placeholder="Search protein..." required="true">
            <input type="submit" id="submitButton" value="GO!">
        </form>
    </div>

</body>
	<script src="https://cdn.jsdelivr.net/npm/particles.js@2.0.0/particles.js"></script>
	<script src="js/particleApp.js"></script>
</html>