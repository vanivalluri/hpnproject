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



@WebServlet("/AddToCartDelete")
public class AddToCartDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public AddToCartDelete() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
			 String jdbcURL="jdbc:mysql://127.0.0.1:3306/hpn";
		     String jdbcUsername="root";
		    String jdbcPassword="Vani@123";	
			HttpSession session=request.getSession();
		       String a= (String)session.getAttribute("id");

			PreparedStatement pst=null;
			try {		
				Connection con=DriverManager.getConnection(jdbcURL,jdbcUsername,jdbcPassword);
				PreparedStatement ps=con.prepareStatement("select * from addtocart where userid="+a+"");
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {					
					//rs.getInt("id");				
				
				 pst=con.prepareStatement("delete from addtocart where id="+rs.getInt("id")+"");
			break;
					
					}	
				  //RequestDispatcher rd=request.getRequestDispatcher("");

				//out.println("one item deleted");

				pst.executeUpdate();
				  response.sendRedirect("Addtocartraccess");

	}catch(Exception e) {
		
	}
			
			
			
			
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
