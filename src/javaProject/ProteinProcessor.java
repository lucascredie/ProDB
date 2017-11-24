package javaProject;
import java.util.ArrayList;
import java.util.HashMap;
public class ProteinProcessor {
	HashMap<String, ArrayList<Integer>> hm = new HashMap<String, ArrayList<Integer>>(20);
	String[] aminoKeys = {"G","A","V","L","I","M","P","F","W","S","T","N","Q","Y","C","R","H"
						,"K","E","D"};
	ArrayList<Integer> printArray;
	String[] output;
	ArrayList<Integer> G = new ArrayList<Integer>(); ArrayList<Integer> A = new ArrayList<Integer>();
	ArrayList<Integer> V = new ArrayList<Integer>(); ArrayList<Integer> L = new ArrayList<Integer>();
	ArrayList<Integer> I = new ArrayList<Integer>(); ArrayList<Integer> M = new ArrayList<Integer>();
	ArrayList<Integer> P = new ArrayList<Integer>(); ArrayList<Integer> F = new ArrayList<Integer>();
	ArrayList<Integer> W = new ArrayList<Integer>(); ArrayList<Integer> S = new ArrayList<Integer>();
	ArrayList<Integer> T = new ArrayList<Integer>(); ArrayList<Integer> N = new ArrayList<Integer>();
	ArrayList<Integer> Q = new ArrayList<Integer>(); ArrayList<Integer> Y = new ArrayList<Integer>();
	ArrayList<Integer> C = new ArrayList<Integer>(); ArrayList<Integer> R = new ArrayList<Integer>();
	ArrayList<Integer> H = new ArrayList<Integer>(); ArrayList<Integer> K = new ArrayList<Integer>();
	ArrayList<Integer> E = new ArrayList<Integer>(); ArrayList<Integer> D = new ArrayList<Integer>();
	int seqlength = 0;
	
	public ProteinProcessor(String seq) {
		
		hm.put("G", G); hm.put("A", A); hm.put("V", V); hm.put("L", L); hm.put("I", I);
		hm.put("M", M); hm.put("P", P); hm.put("F", F); hm.put("W", W); hm.put("S", S);
		hm.put("T", T); hm.put("N", N); hm.put("Q", Q); hm.put("Y", Y); hm.put("C", C);
		hm.put("R", R); hm.put("H", H); hm.put("K", K); hm.put("E", E); hm.put("D", D);
		String[] sequence = seq.toUpperCase().split("");
		
		for (int i = 0; i < sequence.length; i++) {
			//System.out.print(i + " ");
			hm.get(sequence[i]).add(i);
			seqlength++;
		}
		
	}
	
	public String toString() {
		String result = "" ;
		for (int i =0; i < seqlength; i++) {
			if( i >= 10 && i%10 == 0) {
				result += " ";
				
			}
			if ( i >= 40 && i%40 == 0) {
				result += "\n";
			}
			result += getKeyWhere(i);
		}
		return result;
	}
	
	public int[] getResidueCounts() {
		int[] results = new int[20];
		for ( int i = 0; i < hm.size(); i ++) {
			results[i] = hm.get(aminoKeys[i]).size();
		}
		return results;
	}
	
	
	public String getKeyWhere(int searched) {
		ArrayList<Integer> x;
		String result = "";
		for (int i = 0; i < aminoKeys.length; i++) {
			x = hm.get(aminoKeys[i]);
			for(int j = 0; j < x.size(); j++ ) {
				if (searched == x.get(j)) {
					result = aminoKeys[i];
					break;
				}
				
			}
		}
		return result;
	}
	
	public int getSeqLength() {
		return seqlength;
	}

}
