<%@ page import="java.io.*" %>
<%@ page import="javaProject.*" %>
<%@ page import="java.sql.*" %>
<%
 String[][] results; 
 	try {
	 	rsDisease.last();
	 	int size = rsDisease.getRow();
	 	rsDisease.first();
	 	results = new String[size][6];
	 	for (int i = 1 ; i < 6; i++){
	 		results[rsDisease.getRow()][i] = rsDisease.getString(i);	
	 	}
	 
	} 
 	catch (SQLException e) {
	// TODO Auto-generated catch block
		System.out.println(e.getMessage());
	 }
 


%> 