<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="javax.servlet.RequestDispatcher"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.annotation.WebServlet"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="java.sql.Statement"%>
<%@ page import=" java.math.BigInteger"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Calendar"%>



<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url("https://static.vecteezy.com/system/resources/previews/002/677/459/large_2x/nature-of-fresh-green-leaf-on-blurred-greenery-background-and-sun-with-copy-space-for-text-natural-green-plant-for-environment-ecology-and-fresh-concept-using-as-background-cover-page-and-wallpaper-free-photo.jpg");
}
th{
padding:10px;
}
div{
 display: grid;
  justify-content: center;
  align-content: center;
  margin-left:200px;
  margin-right:200px;
}
th, td {
  border: 2px solid black;
  padding: 15px;
  text-align: left;
}
a{
text-decoration:none;
color:black;
}
button{

}
</style>
</head>
<body>

</body>
<form method="post">
    <button><a href="home.jsp">Home</a></button>

<div>
<marquee><h1>Your Orders</h1></marquee>
<table>
<tr>
<th>OrderId</th>
<th>Product Id</th>
<th>Product Name</th>


<th>Price</th>
<th>Quantity</th>

<th>Date & Time</th>

</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String a11= (String) session.getAttribute("id");

String url="jdbc:mysql://127.0.0.1/hpn";
String username="root";
String password="Vani@123";
String query="select * from orders where userid="+a11+"";
String date= new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss").format(Calendar.getInstance().getTime());
Connection conn=DriverManager.getConnection(url,username,password);
PreparedStatement stmt=conn.prepareStatement(query);

ResultSet rs=stmt.executeQuery();
while(rs.next())
{
%>
	

    <tr>
    <td><%out.println(rs.getInt(1));%></td>
    <td><%out.println(rs.getInt(2)); %></td>
        <td><%out.println(rs.getString(3)); %></td>
                   
         <td><%out.println(rs.getInt(5)); %></td>
          <td><%out.println(rs.getInt(4)); %></td>
          
                <td><%out.println(rs.getString(7)); %></td></tr>
    
        <%

}

%>
    </table>
</div>

    <%
}
catch(Exception e)
{
 e.printStackTrace();
}




%>

</form>
</html> 

