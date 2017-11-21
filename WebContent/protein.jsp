<%@ page import="java.io.*" %>
<%@ page import="javaProject.*" %>
<%@ page import="java.sql.*" %>
<%  
		String proteinName = request.getParameter("searchQuery");
		ResultSet rs = Dbi.fetchProtein(proteinName);
		ResultSet rsSeq = Dbi.fetchProteinSeq(proteinName);
		String name = "";
		String local = "";
		int molWeight = 0;
		String type = "";
		String geneLoc = "";
		String seq = "";
		String formattedSeq ="";
		try {
			 rs.next();
			 rsSeq.next();
			 name = rs.getString("name");
			 local  = rs.getString("localization");
			 molWeight  = rs.getInt("mol_weight");
			 type = rs.getString("type");
			 geneLoc  = rs.getString("gene_loc");
			 
			 seq = rsSeq.getString("sequence");
			 ProteinProcessor pp = new ProteinProcessor(seq);
			 formattedSeq = pp.toString();
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
%>
<%@ include file="head.jsp" %>  

<body>

<%@ include file="nav.html" %>   
	<h1 id="proteinHeader"> <%= name %> </h1>
	<h1 id="proteinHeader"> <%= local %> </h1>
	<h1 id="proteinHeader"> <%= molWeight %> </h1>
	<h1 id="proteinHeader"> <%= type %> </h1>
	<h1 id="proteinHeader"> <%= geneLoc %> </h1>
	<p> <%= formattedSeq %> </p> 

</body>
</html>