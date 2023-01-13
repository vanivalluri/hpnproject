package ss;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.xdevapi.Statement;

/**
 * Servlet implementation class remove
 */
@WebServlet("/remove")
public class remove extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public remove() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html");
		 PrintWriter pw=response.getWriter();
		 try {
			 String remove=request.getParameter("remove"); 

			  Class.forName("com.mysql.jdbc.Driver");
			  Connection
			  con=DriverManager.getConnection(
			  "jdbc:mysql://127.0.0.1:3306/hpn","root","Vani@123");
			  
			 PreparedStatement stmt=con.
			  prepareStatement("delete from addtocart where id1=?");
			  stmt.setString(1, remove);
			  RequestDispatcher rd=request.getRequestDispatcher("Addtocartraccess");
               rd.forward(request, response);
				stmt.executeUpdate(); 

			  
		 }
		 catch(Exception e) {
			 
		 }
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
