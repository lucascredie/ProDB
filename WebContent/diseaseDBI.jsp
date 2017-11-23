<%@ page import="java.io.*" %>
<%@ page import="javaProject.*" %>
<%@ page import="java.sql.*" %>
<%
 String proteinName = request.getParameter("searchQuery");
 ResultSet rs = Dbi.fetchProtein(proteinName);
	String[][] = new String[]
 	try {
	 	rs.next();
	 	for (int i = 0; i < rs.getFetchSize(); i++){
	 		rs. 
	 	}
	 	
	 
	} 
 	catch (SQLException e) {
	// TODO Auto-generated catch block
	
		System.out.println(e.getMessage());
	}
 


%>