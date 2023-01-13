<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.navbar {
	background-color:white;
	box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;
	height: 75;
	margin: auto;
}


.menu {
	width: 400px;
	float: flex;
	height: 70px;
}

ul {
	float: left;
	display: flex;
	justify-content: center;
	align-items: center;
}

ul li {
	list-style: none;
	margin-left: 62px;
	margin-top: 27px;
	font-size: 14px;
}

ul li a {
	text-decoration: none;
	font-family: arial;
	font-weight: bold;
	transient: 0.4s ease-in-out;
}

ul li a:hover {
	color: red;
}

.v1{
color:red;
}
.bv{

border-radius:10px;
border:1px solid #ed3245;


}

.menu-card-title {

	font-family: "sans-serif";
	font-size: 18px;
	font-weight: 500;
	margin-top: 24px;

}
.name{
height:180px;
}
.logo {
    width:100px;
    height: 70px;
}
.s1 {
	border: none;
}
</style>
</head>
<body>
	<div class="p2">
		<div class="main">
			<div class="navbar">
				<div class="icon">
					<div class="menu">
						<ul>
						<li><img src="https://drive.google.com/uc?export=view&id=1L9WT-k1m9n2hPBELKkxZ_v4LdJX9yFL-" class="logo"></li>
						
							<li><a href="home.jsp" style="color:green">HOME</a></li>
							<li><a href="home.jsp#wcuSection" style="color:green">ABOUT</a></li>
							
						
							
							<li><a href="register.html" style="color:green">HELP</a></li>
							 <li><a href="register.html" style="color:green" data-toggle="modal" data-target="#exampleModal">PROFILE</a></li> 
							  
							 <li class="nav-item">
       <a>PLANT&nbsp;CATEGORIES</a>
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
          
        </a>
        
        <div class="dropdown-menu">
          <a class="dropdown-item" href="summer.jsp">Summer Season Plants</a>
          <a class="dropdown-item" href="Winter.jsp">Winter Season Plants</a>
          <a class="dropdown-item" href="Rainy.jsp">Rainy Season Plants</a>
          <a class="dropdown-item" href="gifts.jsp">Plants for Gifts</a>
          <a class="dropdown-item" href="Vegetables.jsp">Vegetables</a>
          <a class="dropdown-item" href="Flowers.jsp">Flowers</a>
           <a class="dropdown-item" href="Fruits.jsp">Fruits</a>
            <li class="pl"><a href="Addtocartraccess" style="color:green">CART</a></li>
            <span style="color:red"><%out.println(session.getAttribute("count"));%></span>
             
			<li class="pl"><a href="Login.jsp" style="color:green">LOGOUT</a></li> 
						</ul>
					</div>

				</div>

			</div>
		</div>
	</div> 

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Profile</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       
      <table class="table">
  <thead>
    <tr>
      <th scope="col">Name:</th>
      <td><% out.println(session.getAttribute("name"));%></td>
     
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Email:</th>
      <td><% out.println(session.getAttribute("user"));%></td>
      
    </tr>
    <tr>
      <th scope="row">Gender:</th>
      <td><% out.println(session.getAttribute("gender"));%></td>
      
    </tr>
    <tr>
      <th scope="row">Phoneno:</th>
      <td><% out.println(session.getAttribute("phoneno"));%></td>
     
    </tr>
    <tr>
      <th scope="row">Hno:</th>
      <td><% out.println(session.getAttribute("houseno"));%></td>
     
    </tr>
      <tr>
      <th scope="row">Street:</th>
      <td><% out.println(session.getAttribute("street"));%></td>
     
    </tr>
      <tr>
      <th scope="row">Country:</th>
      <td><% out.println(session.getAttribute("country"));%></td>
     
    </tr>
      <tr>
      <th scope="row">State:</th>
      <td><% out.println(session.getAttribute("state"));%></td>
     
    </tr>
      <tr>
      <th scope="row">district:</th>
      <td><% out.println(session.getAttribute("district"));%></td>
     
    </tr>
    <tr>
      <th scope="row">Pincode:</th>
      <td><% out.println(session.getAttribute("pincode"));%></td>
     
    </tr>
  </tbody>
</table> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Edit</button>
      </div>
    </div>
  </div>
</div>
	

<h2 style="text-align:center;" class="m-3"><b>Rainy Season Plants</b></h2>
		<button class="btn"><a href="home.jsp">Back</a></button>






<div class="container">
	<div class="row">
			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart2" method="post">
			
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://indiagardening.com/wp-content/uploads/2021/05/Plumeria.jpg"
						class="menu-item-image w-100 name" />
<!-- 					<h1 class="menu-card-title"> Plumeria <br>Rs.<span class="v1" >250</span></h1>
 -->					<input type="text" name="id" value="25" class="s1 d-none">
						<input type="text" name="name" value="Plumeria " class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
				</div>
				</form>
			</div>
			
			
				
			<div class="col-12 col-md-6 col-lg-4">
										<form action="Addtocart2" method="post">
			
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://indiagardening.com/wp-content/uploads/2021/05/Pink-Rain-lily.jpg"
						class="menu-item-image w-100 name" />
<!-- 					<h1 class="menu-card-title">Pink Rain lily <br>Rs.<span class="v1" >250</span></h1>
 -->					<input type="text" name="id" value="26" class="s1 d-none">
						<input type="text" name="name" value="Pink Rain lily " class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
				</div>
				</form>
			</div>
			
			
			
			
					<div class="col-12 col-md-6 col-lg-4">
												<form action="Addtocart2" method="post">
					
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://indiagardening.com/wp-content/uploads/2021/05/Purslane.jpeg"
						class="menu-item-image w-100 name" />
<!-- 					<h1 class="menu-card-title">Purslane <br>Rs.<span class="v1" >250</span></h1>
 -->					<input type="text" name="id" value="27" class="s1 d-none">
						<input type="text" name="name" value="Purslane " class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
				</div>
				</form>
			</div>
			
			
					<div class="col-12 col-md-6 col-lg-4">
				<form action="Addtocart2" method="post">
					
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://indiagardening.com/wp-content/uploads/2021/05/Hibiscus-2.jpg"
						class="menu-item-image w-100 name" />
<!-- 					<h1 class="menu-card-title">Hibiscus <br>Rs.<span class="v1" >250</span></h1>
 -->					<input type="text" name="id" value="28" class="s1 d-none">
						<input type="text" name="name" value="Hibiscus " class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
				</div>
				</form>
			</div>
			
			
					<div class="col-12 col-md-6 col-lg-4">
						<form action="Addtocart2" method="post">
					
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://indiagardening.com/wp-content/uploads/2021/05/Jasmine2.jpg"
						class="menu-item-image w-100 name" />
<!-- 					<h1 class="menu-card-title">Jasmine <br>Rs.<span class="v1" >250</span></h1>
 -->					<input type="text" name="id" value="29" class="s1 d-none">
						<input type="text" name="name" value="Jasmine " class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
				</div>
				</form>
			</div>
			
			
					<div class="col-12 col-md-6 col-lg-4">
												<form action="Addtocart2" method="post">
					
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://indiagardening.com/wp-content/uploads/2021/05/Oleander-1.jpg"
						class="menu-item-image w-100 name" />
<!-- 					<h1 class="menu-card-title">Oleander <br>Rs.<span class="v1" >250</span></h1>
 -->					<input type="text" name="id" value="30" class="s1 d-none">
						<input type="text" name="name" value="Oleander " class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
				</div>
				</form>
			</div>
			
			<div class="col-12 col-md-6 col-lg-4">
										<form action="Addtocart2" method="post">
			
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://indiagardening.com/wp-content/uploads/2020/06/Lotus.jpg"
						class="menu-item-image w-100 name" />
<!-- 					<h1 class="menu-card-title">Lotus <br>Rs.<span class="v1" >250</span></h1>
 -->					<input type="text" name="id" value="31" class="s1 d-none">
						<input type="text" name="name" value="Lotus " class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
				</div>
				</form>
			</div>
			
			
			
			<div class="col-12 col-md-6 col-lg-4">
										<form action="Addtocart2" method="post">
			
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://cdn.shopify.com/s/files/1/1380/2059/files/Radish.jpg?v=1593068643"
						class="menu-item-image w-100 name" />
<!-- 					<h1 class="menu-card-title">Radish<br>Rs.<span class="v1" >250</span></h1>
 -->					<input type="text" name="id" value="32" class="s1 d-none">
						<input type="text" name="name" value="Radish " class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
										<form action="Addtocart2" method="post">
			
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://plantic.in/image/blog/vegs.jpg"
						class="menu-item-image w-100 name" />
<!-- 					<h1 class="menu-card-title">Chickpeas <br>Rs.<span class="v1" >250</span></h1>
 -->					<input type="text" name="id" value="33" class="s1 d-none">
						<input type="text" name="name" value="Chickpeas " class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
				</div>
				
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
										<form action="Addtocart2" method="post">
			
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://plantic.in/image/blog/tomatoes.jpg"
						class="menu-item-image w-100 name" />
<!-- 					<h1 class="menu-card-title">Tomato<br>Rs.<span class="v1" >150</span></h1>
 -->					<input type="text" name="id" value="34" class="s1 d-none">
						<input type="text" name="name" value="Tomato " class="s1"><br>
						Rs.<input type="text" name="price" value="150" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
										<form action="Addtocart2" method="post">
			
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://plantic.in/image/blog/green-chillies.jpg"
						class="menu-item-image w-100 name" />
<!-- 					<h1 class="menu-card-title">Beans <br>Rs.<span class="v1" >250</span></h1>
 -->					<input type="text" name="id" value="35" class="s1 d-none">
						<input type="text" name="name" value="Beans " class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
				</div>
				</form>
			</div>
			
			<div class="col-12 col-md-6 col-lg-4">
										<form action="Addtocart2" method="post">
			
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://cdn.shopify.com/s/files/1/1380/2059/files/Cucumber.jpg?v=1593067283"
						class="menu-item-image w-100 name" />
<!-- 					<h1 class="menu-card-title">Cucumber<br>Rs.<span class="v1" >250</span></h1>
 -->					<input type="text" name="id" value="36" class="s1 d-none">
						<input type="text" name="name" value="Cucumber " class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
				</div>
				</form>
			</div>
			
			</div>
		
			</div>
			
</body>
</html>