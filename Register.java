package ss;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		 HttpSession session=request.getSession();

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
			
			PreparedStatement stmt=con.prepareStatement("insert into register(name,email,phoneno,password,repassword,houseno,street,pincode,gender,country,state,district) values(?,?,?,?,?,?,?,?,?,?,?,?)");
stmt.setString(1, name);
stmt.setString(2, email);
stmt.setString(3, phoneno);
stmt.setString(4, pass1);
stmt.setString(5, pass2);
stmt.setString(6, houseno);
stmt.setString(7, street);
stmt.setString(8, pincode);
stmt.setString(9, gender);
stmt.setString(10, country);
stmt.setString(11, state);
stmt.setString(12, district);
 


i=stmt.executeUpdate();
System.out.println("hi");
//session.setAttribute("user", email);
//session.setAttribute("gender",gender);
//session.setAttribute("name", name);
//session.setAttribute("phoneno", phoneno);
//session.setAttribute("country", country);
//session.setAttribute("state", state);
//session.setAttribute("district", district);
//session.setAttribute("houseno", houseno);
//session.setAttribute("street", street);
//session.setAttribute("pincode", pincode);



 if(i>0) {
	 // pw.println("<html><body><b>Registered Successfully</b></body></html>");
	  RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
	  //rd.include(request, response);
	  rd.forward(request, response);


		/*
		 * System.out.println("Login Successfully");
		 */ 
 }
 else {
	  pw.println("<html><body><b>Oops!</b></body></html>");
	  RequestDispatcher rd=request.getRequestDispatcher("Register.jsp");
	//  rd.include(request, response);
	  rd.forward(request, response);


 }
 
   
stmt.close();
con.close();	
		
	}catch(Exception e) {
		  //pw.println("<html><body><b>Already Registered</b></body></html>");
		  RequestDispatcher rd=request.getRequestDispatcher("Register.jsp");
		  rd.include(request, response);
		System.out.println(e);
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
