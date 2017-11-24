<%@ include file="head.jsp" %> 
<body>
<%@ include file="nav.html" %>
	<form action="authenticationServlet.java" method="post">
		Username: <input type="text" name="uname"><br>
		Password: <input type="password" name="password"><br>
		<input type="submit">		
	</form>
	<button id="show-reg-form">Sign Up</button>

</body>
