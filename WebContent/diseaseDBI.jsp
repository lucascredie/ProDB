<%@ page import="java.io.*" %>
<%@ page import="javaProject.*" %>
<%@ page import="java.sql.*" %>
<%
 String proteinName = request.getParameter("searchQuery");
 ResultSet rs = Dbi.fetchProtein(proteinName);
 	try {
	 	rs.last();
	 	int size = rs.getRow();
	 	rs.first();
	 	String[][] results = new String[size][6];
	 	for (int i = 0; i < results.length; i++){
	 			
	 	}
	 	
	 
	} 
 	catch (SQLException e) {
	// TODO Auto-generated catch block
		System.out.println(e.getMessage());
	 }
 


%> 