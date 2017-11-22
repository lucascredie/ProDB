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
		String[] aminoKeys = {"G","A","V","L","I","M","P","F","W","S","T","N","Q","Y","C","R","H"
				,"K","E","D"};
		String[] triletter = {"Gly (G)", "Ala (A)", "Val (V)","Lue (L)","Ile (I)","Met (M)","Pro (P)","Phe (F)","Trp (W)","Ser (S)","thr(t)","asn(n)","gln(q)","tyr(y)",
				"cys(c)", "arg(r)", "his(h)", "lys(k)","asp(e)", "glu(d)"};

		int[] residueCounts = new int[20];
		int protlength = 0;
		double [] percentcomp = new double[20];
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
			 residueCounts = pp.getResidueCounts();
			 protlength = pp.getSeqLength();
			 for(int i = 0; i < residueCounts.length; i++){
				 percentcomp[i] = (residueCounts[i]/protlength)*100;
			 }
			 
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			System.out.println(e.getMessage());
		}
%>
<%@ include file="head.jsp" %>  

<body>

<%@ include file="nav.html" %>   
	
	<h1 id="proteinHeader"><%=name %></h1>
	<h1 id="proteinHeader"><%=local %></h1>
	<h1 id="proteinHeader"><%=molWeight %></h1>
	<h1 id="proteinHeader"><%=type %></h1>
	<h1 id="proteinHeader"><%=geneLoc %></h1>
	<table>
		<tr>
			<th>Amino Acid</th>
			<th>Count</th>
			<th>Percent</th>
		</tr>
		
		<%for (int i = 0; i< residueCounts.length; i++) {%>
			<tr>
				<td><%=triletter[i] %></td>
				<td><%=residueCounts[i] %></td>
				<td><%= percentcomp[i] %></td>
			</tr>
		
		<% } %>
	</table>
	<input type="text" id="sequence-query" placeholder="Find Motif..."><br>
	<pre id="formatted-sequence"><code id="inner-pre-text"><%=formattedSeq%></code></pre> 
	<input type="hidden" id="pretag-reset" value="<%=formattedSeq%>">

	

</body>
</html>