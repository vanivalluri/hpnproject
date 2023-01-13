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

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet{
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	
	protected void doGet(HttpServletRequest request, HttpServletResponse
	 response) throws ServletException, IOException {
	
	  // TODO Auto-generated method stub
	 response.setContentType("text/html");
	HttpSession session=request.getSession();
	 String Email=request.getParameter("email1"); String
	  Password=request.getParameter("password1");
	 PrintWriter pw=response.getWriter();
     String a11= (String) session.getAttribute("id");

	 
	 
	  try {
	 
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection
	  con=DriverManager.getConnection(
	  "jdbc:mysql://127.0.0.1:3306/hpn","root","Vani@123");
	  
	 PreparedStatement stmt=con.
	  prepareStatement("select * from register where email=? and password=?");
	  //String s="select * from register";
	  PreparedStatement stmt1=con.
			  prepareStatement("select * from register ");
	     ResultSet rs1=stmt1.executeQuery();
	     while(rs1.next()) {
	    	 String a=rs1.getString("email");
	   	  String b=rs1.getString("password");

	   	  if((Email.equals(a))&&(Password.equals(b))){
		     session.setAttribute("id",rs1.getString(1));
	    	 session.setAttribute("user",rs1.getString(3));
	    	 session.setAttribute("gender",rs1.getString(10));
	    	 session.setAttribute("name", rs1.getString(2));
	    	 session.setAttribute("phoneno", rs1.getString(4));
	    	 session.setAttribute("country", rs1.getString(11));
	    	 session.setAttribute("state", rs1.getString(12));
	    	 session.setAttribute("district", rs1.getString(13));
	    	 session.setAttribute("houseno", rs1.getString(7));
	    	 session.setAttribute("street", rs1.getString(8));
	    	 session.setAttribute("pincode", rs1.getString(9));
	    	
	   	  }
	     }


	  stmt.setString(1, Email);
	  stmt.setString(2, Password); 
	  ResultSet i=stmt.executeQuery(); 
	  while(i.next())
	  { 
		  String a=i.getString("email");
	  String b=i.getString("password");

	  if((Email.equals(a))&&(Password.equals(b)))
	  {

	// pw.println("<html><body><b>User Exist</b></body></html>");
	
	  RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
	  //rd.include(request, response);
	  rd.forward(request, response);
	 // response.sendRedirect("home.jsp");
	 
			  // ResultSet rs=
				  
	 
	  }
	  else {
		  RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
		  rd.forward(request, response);
	       System.out.println("all ok");

		  
	  }
	  
	  }
 	 
	 
	 
	  
	
	  
	  PreparedStatement pss=con.prepareStatement("select count(*) from addtocart where userid="+a11+"");                  
      ResultSet rs2 = pss.executeQuery();              
       while(rs2.next()) {
    int  count = rs2.getInt(1);
      session.setAttribute("count",count);
	 
	  }
      //stmt.close();
     // con.close();
	  }
	 catch( Exception e) {

		 pw.println("<html><body><b> Register Please</b></body></html>");
	
		 RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
		  rd.forward(request, response);

	  }
	  
	 
	  }
	 
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);

		doGet(request,response);

}
}
