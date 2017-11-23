package javaProject;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

public class Dbi {
		static Connection dbconn;
		ResultSet results = null;
		static PreparedStatement sql;
		static String dbPath = "jdbc:mysql://localhost:3306";
		
		
		public static Connection newConnection() {
			try {
				Class.forName("com.mysql.jdbc.Driver").newInstance();

				try {
					dbconn = DriverManager.getConnection(dbPath, "root", "GBP@ck3rs#1");
					System.out.println("gain the connection");
					return dbconn;
				} catch (Exception s) {
					System.out.println(s.getStackTrace().toString());
				}
			} catch (Exception err) {
				System.out.println(err.getStackTrace().toString());
			}
			return null;
		}
		
		public static  ResultSet fetchProtein(String protName) {
			try {
				String selectProt = "SELECT * FROM prot_db.protein WHERE name = ?";
				dbconn = newConnection();
				sql = dbconn.prepareStatement(selectProt);
				sql.setString(1, protName);
				ResultSet results = sql.executeQuery();
				return results;
			} catch (Exception err) {
				System.out.println("it is a database connection problem");
				System.out.println(err.getMessage());
				return null;
			}
		}
		
		public static  ResultSet fetchProteinSeq(String protName) {
			try {
				String selectProt = "SELECT sequence FROM prot_db.protein NATURAL JOIN prot_db.sequence WHERE name = ?";
				dbconn = newConnection();
				sql = dbconn.prepareStatement(selectProt);
				sql.setString(1, protName);
				ResultSet results = sql.executeQuery();
				return results;
			} catch (Exception err) {
				System.out.println("it is a database connection problem");
				System.out.println(err.getMessage());
				return null;
			}
		}
		public static ResultSet fetchDiseaseInfo(String protName) {
			try {
				String selectProt = "SELECT * FROM prot_db.disease WHERE prot_name = ?";
				dbconn = newConnection();
				sql = dbconn.prepareStatement(selectProt);
				sql.setString(1, protName);
				ResultSet results = sql.executeQuery();
				return results;
			} catch (Exception err) {
				System.out.println("it is a database connection problem");
				System.out.println(err.getMessage());
				return null;
			}
			
		}

	}


