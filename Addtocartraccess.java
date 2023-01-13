package ss;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Addtocartraccess
 */
@WebServlet("/Addtocartraccess")
public class Addtocartraccess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addtocartraccess() {
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
		 */	
		response.setContentType("text/html");
		HttpSession session=request.getSession();
	      PrintWriter pw=response.getWriter();
	       String a1= (String)session.getAttribute("id");

	try {
		Class.forName("com.mysql.jdbc.Driver");  

				Connection con=DriverManager.getConnection(  
						"jdbc:mysql://127.0.0.1:3306/hpn","root","Vani@123");
				String q="select * from addtocart where userid="+a1+"";
				HttpSession se=request.getSession();
				PreparedStatement pst=con.prepareStatement(q);
				ResultSet rs=pst.executeQuery();
			

				pw.print("<html>"
						+ "<body>"
						+"<a href='Editback'>"+"<input type='button' value='Back'>"+"</a>"
						+"<style>"
						+"table{margin-bottom:10px;}"
						+"th{margin:20px;}"
						+"a{margin-left:10px;text-decoration:none;}"+"td{margin:10px;}"+"table{border:solid 5px black;padding:5px;margin-top:0px}"+"button{margin-left:5px;}"
						+"h5{margin-left:150px;}"
						+""
						+"</style>"
						+"<table><tr>"
						//+"<th>Product Id</th>"
						+"<th>Product name</th><th>Quantity</th>"
						+"<th>Price</th>"
						+""
						+"<th>Total</th>"
						+"</tr>"
						);
				
				
				
				
				
			int sum=0;	
			//PreparedStatement stmt=con.prepareStatement("delete from addtocart where id=?");
			
int a=0;
	  while(rs.next()) {
		   a=rs.getInt(1);


		  pw.print("<tr>"
		  +"<td>"+rs.getString(2)+"</td>"
				  +"<td>"+rs.getString(4)+"</td>"
						//  +"<td>"+rs.getInt(1)+"</td>"

				  +"<td>"+rs.getInt(3)+"</td>"
				  +"<td>"+rs.getInt(3)*rs.getInt(4)+"</td>"
				  +"<td>"+"<a href='AddToCartDelete'><button>remove</button></a>"
				  //+"<td>"+"<form action='remove method='post'>"
				  //+"<input type='submit' value='remove'>"+"</form>"
				  +"</td>"+"</tr>"

				 );
		  
		  //int i=stmt.executeUpdate();
		  

		  //int i=rs.getInt(1);
		  //stmt.setInt(1, i);
		  //i=stmt.executeUpdate();
		     sum=sum+(rs.getInt(3)*rs.getInt(4));
		 // pw.print("<button> Remove</button"+"</tr>");
		  pw.print("<br>");		  
		     
	  }
	  
//		PreparedStatement stmt=con.prepareStatement("delete from addtocart where id=?");
//    	stmt.setString(1,rs.getString(1));
//		  int i=stmt.executeUpdate();
	  session.setAttribute("sum", sum);
	  
	  pw.print("</table>"
			
			  
			 +"<h5>Total Price:  "+sum
			 +"<button><a href="+"Shipping.html"+">Buy Now</a>"
			 +"</button>"
			 +"</h5>"
			 +"<script>"+"function fun(a){ 	"
//			 		+ "PreparedStatement stmt=con.prepareStatement("delete from addtocart where id="+a+");"
//			ResultSet rs1=pst.executeQuery();"
//			 
			 	
	  		+ "</body></html>");
	  
//  se.setAttribute("a", sum);

	}
	catch(Exception e) {
		
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
