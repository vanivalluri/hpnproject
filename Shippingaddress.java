package ss;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Shippingaddress
 */
@WebServlet("/Shippingaddress")
public class Shippingaddress extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Shippingaddress() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	String HouseNo=request.getParameter("HouseNo");
	String Street =request.getParameter("Street");
	String Pincode=request.getParameter("Pincode");
	String Country=request.getParameter("Country");
	String State=request.getParameter("state");
	String District=request.getParameter("District");
	
	PrintWriter out =response.getWriter();
	HttpSession session=request.getSession();
    String a11= (String) session.getAttribute("id");

    
    
	int i=0;
	try {
		  Class.forName("com.mysql.jdbc.Driver");  
          Connection con=DriverManager.getConnection(  
        		  "jdbc:mysql://127.0.0.1:3306/hpn","root","Vani@123");
		PreparedStatement ps=con.prepareStatement("Insert into shippingaddress(HouseNo,Street,Pincode,Country,state,District,userid)values(?,?,?,?,?,?,?);");
		ps.setString(1,HouseNo);
		ps.setString(2,Street);
		ps.setString(3,Pincode);
		ps.setString(4,Country);
		ps.setString(5,State);
		ps.setString(6,District);
		ps.setString(7, a11);
		i=ps.executeUpdate();
		if(i>0) {
		//out.println("added shipping address");
			RequestDispatcher rd=request.getRequestDispatcher("Payment.jsp");
			rd.include(request,response);
		}
		
		PreparedStatement ps1=con.prepareStatement("select * from shippingaddress where userid="+a11+"");
	     ResultSet rs1=ps1.executeQuery();

while(rs1.next()) {
	session.setAttribute("HNO", rs1.getString(2));
	session.setAttribute("STREET", rs1.getString(3));
	session.setAttribute("PINCODE", rs1.getString(4));
	session.setAttribute("COUNTRY", rs1.getString(5));
	session.setAttribute("STATE", rs1.getString(6));
	session.setAttribute("DISTRICT", rs1.getString(7));



}
		
		
		
		ps.close();
		con.close();  
		
		
		
	}catch(Exception e) {
		out.println("please add shipping details");
		RequestDispatcher rd=request.getRequestDispatcher("Shipping.html");
		rd.include(request,response);
	}
	
	
	
	
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
