package ss;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Profile
 */
@WebServlet("/Profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phoneno=request.getParameter("phoneno");
		
		String pass1=request.getParameter("password");
		String pass2=request.getParameter("repassword");
		String gender=request.getParameter("gender");
		


		String country=request.getParameter("country");
		String state=request.getParameter("state");
		String district=request.getParameter("district");
		

		String houseno=request.getParameter("houseno");
		String street=request.getParameter("street");
		String pincode=request.getParameter("pincode");


		/*
		 * System.out.println(email+" "+password);
		 */		/*
		 * PrintWriter ps= response.getWriter();
		 */
		 
		PrintWriter pw=response.getWriter();
int i=0;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
					"jdbc:mysql://127.0.0.1:3306/hpn","root","Vani@123");
			
			PreparedStatement stmt=con.prepareStatement("select * from register;");

 

ResultSet rs=stmt.executeQuery();


while(rs.next()) {
	

}


	}catch(Exception e) {
		
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
