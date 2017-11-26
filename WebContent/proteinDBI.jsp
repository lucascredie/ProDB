<%@ page import="java.io.*" %>
<%@ page import="javaProject.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%
	String proteinName = request.getParameter("searchQuery");
//RESULTSET VARIABLES
	ResultSet rs = Dbi.fetchProtein(proteinName);
	ResultSet rsSeq = Dbi.fetchProteinSeq(proteinName);
	ResultSet rsDisease = Dbi.fetchDiseaseInfo(proteinName);
	//
	//VARIABLES FOR PROTEIN NAMES
		String name = "";
		String local = "";
		int molWeight = 0;
		String type = "";
		String geneLoc = "";
		String seq = "";
		String formattedSeq ="";
		String structurefile = "";
		double ip = 0.0;
		String[][] results = new String[11][6]; 
		String[] aminoKeys = {"G","A","V","L","I","M","P","F","W","S","T","N","Q","Y","C","R","H"
				,"K","E","D"};
		String[] triletter = {"Gly (G)", "Ala (A)", "Val (V)","Lue (L)","Ile (I)","Met (M)","Pro (P)","Phe (F)","Trp (W)","Ser (S)","Thr (T)","Asn (n)","Gln (Q)","Tyr (Y)",
				"Cys (C)", "Arg (R)", "His (H)", "Lys (K)","Asp (E)", "Glu (D)"};
		//
		//PROCESS RESULTSET FOR PROTEIN
		int[] residueCounts = new int[20];
		int protlength = 0;
		String [] percentcomp = new String[20];
		try {
			 rs.next();
			 rsSeq.next();
			 //RAW PROTEIN DATA
			 name = rs.getString("name");
			 local  = rs.getString("localization");
			 molWeight  = rs.getInt("mol_weight");
			 type = rs.getString("type");
			 geneLoc  = rs.getString("gene_loc");
			 seq = rsSeq.getString("sequence");
			 System.out.println(seq);
			 structurefile = rs.getString("3d_file");
			 ip = rs.getDouble("iP");
			 
			 //
			 //PROCESS PROTEIN DATA/ VARIABLES TO USE IN PAGE
			 ProteinProcessor pp = new ProteinProcessor(seq);
			 formattedSeq = pp.toString(); 
			 residueCounts = pp.getResidueCounts();
			 System.out.println(residueCounts);
			 protlength = pp.getSeqLength();
			 DecimalFormat df = new DecimalFormat("#0.00");
			 for(int i = 0; i < residueCounts.length; i++){
				 percentcomp[i] = df.format(((residueCounts[i]/(double)protlength)*100));
			 }
			 //
			 
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			System.out.println(e.getMessage());
		}
		
		//PROCESS DISEASE INFO INTO ARRAY
		 		rsDisease.last();
			 	int size = rsDisease.getRow();
			 	rsDisease.first();
			 	
		 	try {
		 		System.out.println(size + "");
			 	for (int i = 1 ; i < 6; i++){
			 		results[rsDisease.getRow()][i] = rsDisease.getString(i);
			 		//USE results IN PAGE
			 	}
			 
			}
		 	//
		 	catch (SQLException e) {
			// TODO Auto-generated catch block
				System.out.println(e.getMessage());
			 }
%>