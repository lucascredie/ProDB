package javaProject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class myServlet extends HttpServlet {

public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		
	}
	
public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	
	out.print("<h1>" + request.getParameter("searchQuery") + "</h1>");
		
	}


}


