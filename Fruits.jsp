

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
<title>Fruits</title>

<style>
.logo {
	width: 80px;
	height: 70px;
}

.navbar {
	background-color: white;
	box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;
	height: 75;
	margin: auto;
}

.v1 {
	color: red;
}
.s3{
color:red;
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

.h {
	text-align: center;
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

.k1 {
	height: 220px;
}

ul li a:hover {
	color: #ff7200;
}

.menu-item-card {
	border-radius: 20px;
}
.s1 {
	border: none;
}


.menu-card-title {
	color: "black";
	font-family: "sans-serif";
	font-size: 18px;
	font-weight: 500;
	margin-top: 24px;
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
							<li><img
								src="https://drive.google.com/uc?export=view&id=1L9WT-k1m9n2hPBELKkxZ_v4LdJX9yFL-"
								class="logo"></li>

							<li><a href="home.jsp" style="color: black">HOME</a></li>
							<li><a href="home.jsp#wcuSection" style="color: black">ABOUT</a></li>
							<!-- <li><a href="#">PLANT-TYPES</a></li>
                            <li><a href="#">CATEGORIES</a></li> -->
							<li><a href="register.html" style="color: black">HELP</a></li>
							<li><a href="login.html" style="color: black" data-toggle="modal" data-target="#exampleModal">PROFILE</a></li>



							<li class="nav-item"><a>Plant&nbsp;Categories</a>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" role="button"
								data-toggle="dropdown" aria-expanded="false"> </a>

								<div class="dropdown-menu">
									<a class="dropdown-item" href="summer.jsp">Summer Season
										Plants</a> <a class="dropdown-item" href="Winter.jsp">Winter
										Season Plants</a> <a class="dropdown-item" href="Rainy.jsp">Rainy
										Season Plants</a> <a class="dropdown-item" href="gifts.jsp">Plants
										for gifts</a> <a class="dropdown-item" href="Vegetables.jsp">Vegetables</a>
									<a class="dropdown-item" href="Fruits.jsp">Fruits</a> 
									<a class="dropdown-item" href="Flowers.jsp">Flowers</a> 
									
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


	<div class="col-md-12 rsrc-main">
		<div class="woocommerce">
			<div class="h">

				<h1 class="page-title">Fruit Plants</h1>


				<div class="term-description">
					<p>Live fruit plants</p>
					
				</div>
			</div>
			<button class="btn"><a href="home.jsp">Back</a></button>

			<div class="container">
				<div class="row">
					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart6" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://bonsaiplantsnursery.com/wp-content/uploads/2020/07/mango-1.jpg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Grafted Mango <br> <span class="v1">Rs.800</span>
							</h1> -->
							<input type="text" name="id" value="58" class="s1 d-none">
						<input type="text" name="name" value="Grafted Mango " class="s1"><br>
						Rs.<input type="text" name="price" value="800" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
						</div>
						</form>
					</div>
					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart6" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://m.media-amazon.com/images/I/71sKa4j2GtL._SL1080_.jpg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Litchi <br> <span class="v1">Rs.450</span>
							</h1> -->
							<input type="text" name="id" value="59" class="s1 d-none">
						<input type="text" name="name" value="Litchi" class="s1"><br>
						Rs.<input type="text" name="price" value="450" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</div>
						</form>
					</div>


					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart6" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://www.getsview.com/market/wp-content/uploads/sites/8/2021/02/American-Palmer-Mango-Plant-For-Sale-in-BD.jpg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Mango Palmer <br> <span class="v1">Rs.499</span>
							</h1> -->
								<input type="text" name="id" value="60" class="s1 d-none">
						<input type="text" name="name" value="Mango Palmer" class="s1"><br>
						Rs.<input type="text" name="price" value="499" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
						</div>
						</form>
					</div>




					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart6" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://5.imimg.com/data5/YX/CB/MY-65939203/pomegranate-fruit-plant-500x500.jpg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Pomogranate Bhagwa <br> <span class="v1">Rs.950</span>
							</h1> -->
								<input type="text" name="id" value="61" class="s1 d-none">
						<input type="text" name="name" value="Pomogranate Bhagwa" class="s1"><br>
						Rs.<input type="text" name="price" value="950" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
						</div>
						</form>
					</div>

					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart6" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://i0.wp.com/globalplantsmarket.in/wp-content/uploads/2022/04/97299296-1b36-4071-b368-1ae74af6d751.jpg?fit=794%2C794&ssl=1"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Red Banana <br> <span class="v1">Rs.750</span>
							</h1> -->
							<input type="text" name="id" value="62" class="s1 d-none">
						<input type="text" name="name" value="Red Banana" class="s1"><br>
						Rs.<input type="text" name="price" value="750" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
						</div>
						</form>
					</div>
					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart6" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://rukminim1.flixcart.com/image/416/416/kt8zb0w0/plant-sapling/b/0/h/yes-annual-yes-pot-suitable-mangosteen-garcinia-mangostana-live-original-imag6n4dvp5vzbjt.jpeg?q=70"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Mangosteen <br> <span class="v1">Rs.650</span>
							</h1> -->
							<input type="text" name="id" value="63" class="s1 d-none">
						<input type="text" name="name" value="Mangosteen" class="s1"><br>
						Rs.<input type="text" name="price" value="650" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
						</div>
						</form>
					</div>
					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart6" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://media.plantinstructions.com/wp-content/uploads/2017/01/passion-fruit-in-a-pot.jpg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Passion Fruit <br> <span class="v1">Rs.500</span>
							</h1> -->
							<input type="text" name="id" value="64" class="s1 d-none">
						<input type="text" name="name" value="Passion Fruit " class="s1"><br>
						Rs.<input type="text" name="price" value="500" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
						</div>
						</form>
					</div>
					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart6" method="post">
						<div class="shadow menu-item-card p-3 mb-3">
							<img
								src="https://m.media-amazon.com/images/I/81QVeIU3PEL._SL1500_.jpg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Guava Pink <br> <span class="v1">Rs.450</span>
							</h1> -->
							<input type="text" name="id" value="65" class="s1 d-none">
						<input type="text" name="name" value="Guava Pink" class="s1"><br>
						Rs.<input type="text" name="price" value="450" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a href="Addtocartraccess">Buy Now</a></button>
						</div>
						</form>
					</div>
					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart6" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://live.staticflickr.com/7358/12270172473_a023b6ab6f_b.jpg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Strawberry Guava <br> <span class="v1">Rs.800</span>
							</h1> -->
							<input type="text" name="id" value="66" class="s1 d-none">
						<input type="text" name="name" value="Strawberry Guava" class="s1"><br>
						Rs.<input type="text" name="price" value="800" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a href="Addtocartraccess">Buy Now</a></button>
						</div>
						</form>
					</div>
					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart6" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://newnessplant.in/wp-content/uploads/2022/06/images-2-28-247x296.jpeg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Apricot <br> <span class="v1">Rs.850</span>
							</h1> -->
							<input type="text" name="id" value="67" class="s1 d-none">
						<input type="text" name="name" value="Apricot" class="s1"><br>
						Rs.<input type="text" name="price" value="850" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a href="Addtocartraccess">Buy Now</a></button>
						</div>
						</form>
					</div>


					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart6" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://blog.nurserylive.com/wp-content/uploads/2016/08/step0001-80-1.jpg"
								class="menu-item-image w-100" />
							<!-- <h1 class="menu-card-title">
								Pineberry <br> <span class="v1">Rs.1150</span>
							</h1> -->
							<input type="text" name="id" value="68" class="s1 d-none">
						<input type="text" name="name" value="Pineberry" class="s1"><br>
						Rs.<input type="text" name="price" value="1150" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a href="Addtocartraccess">Buy Now</a></button>
					                          <button class="btn btn-success bv"><a>Buy Now</a></button>
						</div>
						</form>
					</div>


				</div>
			</div>
</body>
</html>
