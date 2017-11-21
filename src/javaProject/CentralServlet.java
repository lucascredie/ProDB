package javaProject;
import javaProject.Dbi;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/CentralServlet")
public class CentralServlet extends HttpServlet {

public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	ProteinProcessor pp;
	String requestedProtein = request.getParameter("searchQuery").toLowerCase();
	ResultSet protein = Dbi.fetchProtein(requestedProtein);
	
	try {
		protein.next();
		out.println("<html>"+ protein.getString("gene_loc")+"</html>");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		System.out.println("here i am");
		e.printStackTrace();
	}
	
	
		
		
		
	}
	
public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
	doPost(request, response);
		
	}
}


