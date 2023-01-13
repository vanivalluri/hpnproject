package ss;

import java.io.IOException;
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
 * Servlet implementation class Addtocart
 */
@WebServlet("/Addtocart2")
public class Addtocart2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addtocart2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * response.getWriter().append("Served at: ").append(request.getContextPath());
		 */		int quantity=Integer.parseInt(request.getParameter("quantity"));
			HttpSession session=request.getSession();
		         String productname=request.getParameter("name");
		         int price=Integer.parseInt(request.getParameter("price"));
		       int id=Integer.parseInt(request.getParameter("id"));
		       //int id=Integer.parseInt(id1);
		       //session.getAttribute("id")
		       //String some= (String)request.getAttribute("user");
		       //System.out.println(some);
		       String a= (String) session.getAttribute("id");
		 try {
			 Connection con=DriverManager.getConnection(  
						"jdbc:mysql://127.0.0.1:3306/hpn","root","Vani@123");
			 PreparedStatement ps=con.prepareStatement("insert into addtocart(id,productname,price,qunatity,userid) values(?,?,?,?,?);");
	   ps.setInt(1,id);
		ps.setString(2,productname);
		ps.setInt(3,price);
		ps.setInt(4, quantity);
		 ps.setString(5,a);

		ps.executeUpdate();
		
		
		  PreparedStatement pss=con.prepareStatement("select count(*) from addtocart where userid="+a+"");                  
	        ResultSet rs2 = pss.executeQuery();              
	         while(rs2.next()) {
	      int  count = rs2.getInt(1);
	        session.setAttribute("count",count);
	        
	         }
	         RequestDispatcher rd=request.getRequestDispatcher("Rainy.jsp");
			 
			  rd.forward(request, response);
		  //con.close();
		 }
		catch(Exception e) {
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
