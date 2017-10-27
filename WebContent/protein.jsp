<%@ include file="head.jsp" %>  

<body>

<%@ include file="nav.html" %>   

<%@ page import="java.io.*" %>
<%@ page import="javaProject.*" %>
	
	<%  
		myServlet servlet = new myServlet();
		servlet.doGet(request, response);
	%>

</body>
</html>