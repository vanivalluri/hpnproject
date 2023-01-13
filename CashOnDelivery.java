package ss;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CashOnDelivery
 */
@WebServlet("/CashOnDelivery")
public class CashOnDelivery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CashOnDelivery() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String date=new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss").format(Calendar.getInstance().getTime());
		
		response.setContentType("text/html");
		HttpSession session=request.getSession();
        String a11= (String) session.getAttribute("id");
		 PrintWriter pw=response.getWriter();
		 int mi = 65626;
			int ma=86561;
			Random rn = new Random();
			int dna=rn.nextInt(100000);
		//	System.out.println(dna);	
			PreparedStatement pst=null;
			int i=0;
			  try {

		            Class.forName("com.mysql.jdbc.Driver");  
		            Connection con=DriverManager.getConnection(  
		            		"jdbc:mysql://127.0.0.1:3306/hpn","root","Vani@123");
		            PreparedStatement stmt1=con.prepareStatement("Select * from shippingaddress ORDER BY Id DESC LIMIT 1");
		            ResultSet rs1 = stmt1.executeQuery();
		            PreparedStatement stmt2=con.prepareStatement("select * from addtocart where userid="+a11+"");
		            ResultSet rs2=stmt2.executeQuery();
		           
		       // i=stmt1.executeUpdate();
				
		    


		           
		           
		            pw.println("<html><body><b>Payment Done Successfully</b></body></html>");
		  		      RequestDispatcher rd=request.getRequestDispatcher("orderplaced.jsp");
		  		      rd.include(request, response);
		  			  
		  		 
		  		    
		  		    PreparedStatement stmt=con.prepareStatement("Insert into CashOnDelivery(userId,Order_Id,HouseNo,Street,state,District,Pincode,date,paymentmode) values(?,?,?,?,?,?,?,?,?);");
					while(rs1.next()) {
						stmt.setString(1, a11);
						stmt.setInt(2, dna);
						stmt.setString(3, rs1.getString(2));
						stmt.setString(4, rs1.getString(3));
						stmt.setString(5, rs1.getString(6));
						stmt.setString(6, rs1.getString(7));
						stmt.setString(7, rs1.getString(4));
					    stmt.setString(8,date);	
					    stmt.setString(9,"CashOnDelivery");	

						stmt.executeUpdate();
					
					}
					
				  	  
		  		    
					 PreparedStatement stmt3=con.prepareStatement("insert into orders(orderid,productid,productname,price,qunatity,userid,date) values(?,?,?,?,?,?,?);");
						while(rs2.next()) {
							stmt3.setInt(1, dna);
							stmt3.setInt(2,rs2.getInt(1));
							stmt3.setString(3, rs2.getString(2));
							stmt3.setInt(4, rs2.getInt(3));
							stmt3.setInt(5, rs2.getInt(4));
							stmt3.setString(6, rs2.getString(6));
						    stmt3.setString(7,date);
							stmt3.executeUpdate();
							
						}
					
						PreparedStatement stmt4=con.prepareStatement("truncate addtocart");
					    stmt4.executeUpdate();

					stmt.close();
			  		con.close();	
					
			  
	}
			  catch(Exception e) {
		          pw.println("<html><body><b>Payment Failed</b></body></html>");
		          RequestDispatcher rd=request.getRequestDispatcher("orderfailed.jsp");
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
