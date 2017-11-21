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
	
	<%  
		/* myServlet servlet = new myServlet(); */
		CentralServlet serv = new CentralServlet();
		serv.doGet(request, response);
	%>

</body>
</html>