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
		String[] triletter = {"Gly (G)", "Ala (A)", "Val (V)","Lue (L)","Ile (I)","Met (M)","Pro (P)","Phe (F)","Trp (W)","Ser (S)","Thr (T)","Asn (n)","Gln (Q)","Tyr (Y)",
				"Cys (C)", "Arg (R)", "His (H)", "Lys (K)","Asp (E)", "Glu (D)"};

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