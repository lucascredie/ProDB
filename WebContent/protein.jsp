<%@ include file="head.jsp" %>  

<body>

<%@ include file="nav.html" %>   

<%@ page import="java.io.*" %>
<%@ page import="javaProject.*" %>
	
	<%  
		/* myServlet servlet = new myServlet(); */
		String proteinName = request.getParameter("searchQuery");
	%>
	
	<h1 id="proteinHeader"> <%= proteinName %> </h1>

</body>
</html>