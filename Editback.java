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
 * Servlet implementation class Editback
 */
@WebServlet("/Editback")
public class Editback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Editback() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession();
        String a= (String) session.getAttribute("id");
        response.setContentType("text/html");
         String jdbcURL="jdbc:mysql://127.0.0.1:3306/hpn";
         String jdbcUsername="root";
        String jdbcPassword="Vani@123";
        try {

            Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection(jdbcURL,jdbcUsername,jdbcPassword);
          PreparedStatement pss=con.prepareStatement("select count(*) from addtocart where userid="+a+"");                  
            ResultSet rs2 = pss.executeQuery();              
             if(rs2.next()) {
          int  count = rs2.getInt(1);
            session.setAttribute("count",count);
             }

        RequestDispatcher rd=request.getRequestDispatcher("summer.jsp");
        rd.forward(request,response);
        
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
