package ss;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Random;
import com.mysql.cj.protocol.Resultset;

/**
 * Servlet implementation class Payment
 */
@WebServlet("/Payment")
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Payment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String date= new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss").format(Calendar.getInstance().getTime());
		 response.setContentType("text/html");
		 String username=request.getParameter("username");
	     String cardNumber=request.getParameter("cardNumber");
	     String month=request.getParameter("month");
	     String year=request.getParameter("year");
	        String cvv=request.getParameter("cvv");
	        HttpSession session=request.getSession();
	        String a11= (String) session.getAttribute("id");
	        int mi = 65626;
	        int ma=86561;
	        Random dn = new Random();
	        int random=dn.nextInt(100000);
	String pp="Debit card";
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	 PrintWriter pw=response.getWriter();
		int i=0;
		  try {

	            Class.forName("com.mysql.jdbc.Driver");  
	            Connection con=DriverManager.getConnection(  
	            		"jdbc:mysql://127.0.0.1:3306/hpn","root","Vani@123");
	            PreparedStatement stmt2=con.prepareStatement("select * from addtocart where userid="+a11+"");
	            ResultSet rs1=stmt2.executeQuery();
	           

	            PreparedStatement stmt=con.prepareStatement("insert into Debitpay(username,cardNumber,month,year,cvv,date,userid,paymentmode) values(?,?,?,?,?,?,?,?);");
	          //  PreparedStatement stmt1=con.prepareStatement("insert into Debitpay values (date(curdate());");
	stmt.setString(1, username);
	stmt.setString(2, cardNumber);
	stmt.setString(3, month);
	stmt.setString(4, year);
	stmt.setString(5, cvv);
	stmt.setString(6, date);
	stmt.setString(7, a11);
	stmt.setString(8, pp);
	i=stmt.executeUpdate();


	if(i>0) {
		//String ee="Payment Success";


	      pw.println("<html><body><b>Payment Done Successfully</b></body></html>");
	      RequestDispatcher rd=request.getRequestDispatcher("orderfailed.jsp");
	      rd.include(request, response);
	      
	      
	      
	      
	      
	      
	      
		  }
	
	

	
	
	PreparedStatement stmt1=con.prepareStatement("insert into orders(orderid,productid,productname,price,qunatity,userid,date) values(?,?,?,?,?,?,?);");
	while(rs1.next()) {
		stmt1.setInt(1, random);
		stmt1.setInt(2,rs1.getInt(1));
		stmt1.setString(3, rs1.getString(2));
		stmt1.setInt(4, rs1.getInt(3));
		stmt1.setInt(5, rs1.getInt(4));
		stmt1.setString(6, rs1.getString(6));
	    stmt1.setString(7,date);
		stmt1.executeUpdate();
		
	}

	PreparedStatement stmt3=con.prepareStatement("truncate addtocart");
    stmt3.executeUpdate();
   
	
	
	
	
	stmt.close();
	con.close();    

	    }catch(Exception e) {
	          pw.println("<html><body><b>Payment Failed</b></body></html>");
	          RequestDispatcher rd=request.getRequestDispatcher("orderfailed.jsp");
	          rd.include(request, response);
	 

	        System.out.println(e);
	    }
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
