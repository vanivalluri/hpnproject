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

@WebServlet("/EditProfile")
public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EditProfile() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
String i=request.getParameter("id");
int Id=Integer.parseInt(i);

		String Name=request.getParameter("name");
		String Email=request.getParameter("email");
		String PhoneNo=request.getParameter("phoneno");
		//String Password=request.getParameter("password");
		String Gender=request.getParameter("gender");
		String HouseNo=request.getParameter("houseno");
		String Street=request.getParameter("street");
		String Pincode=request.getParameter("pincode");
		String country=request.getParameter("country");
		String State=request.getParameter("state");
		String District=request.getParameter("district");
		PrintWriter out =response.getWriter();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hpn","root","Vani@123");
			
			//out.println("profile updated successfully");
			
//			PreparedStatement ps=con.prepareStatement("update register set name=?,email=?,phoneno=?,houseno=?,street=?,pincode=?,gender=?"
//					+ " country=?,state=?,district=? where id="+Id+"");
			PreparedStatement ps=con.prepareStatement("update register set name=?,email=?,phoneno=?,houseno=?,street=?,pincode=?,gender=?,country=?,state=?,district=? where userid="+Id+"");
			ps.setString(1, Name);
			ps.setString(2, Email);
			ps.setString(3, PhoneNo);
//		ps.setString(4, Password);
			ps.setString(4, HouseNo);
			ps.setString(5, Street);
			ps.setString(6, Pincode);
     		ps.setString(7, Gender);
//
			ps.setString(8, country);
		ps.setString(9, State);
			ps.setString(10, District);

		ps.executeUpdate();
		  response.sendRedirect("home.jsp");

		//out.println("profile updated successfully");

					//out.println("profile updated successfully");
				//out.println("<br>");
				//out.println("ur id number"+Id);
			
	
		}catch(Exception e) {
			out.println("profile updated failed");
			

		}
		
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
