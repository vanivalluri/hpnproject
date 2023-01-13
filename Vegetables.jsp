

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
<title>Vegetables</title>

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
.s1{
border:none;
}
.s3{
color:red;
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
							<li><a href="home.jsp#help" style="color: black">HELP</a></li>
							<li><a href="login.jsp" style="color: black" data-toggle="modal" data-target="#exampleModal">PROFILE</a></li>



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
									<a class="dropdown-item" href="Fruits.jsp">Fruits</a> <a
										class="dropdown-item" href="Flowers.jsp">Flowers</a> 
										
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
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
	














	<div class="col-md-12 rsrc-main">
		<div class="woocommerce">
			<div class="h">

				<h1 class="page-title">Vegetables Plants</h1>


				<div class="term-description">
					<p>Live Vegetables plants</p>
					
				</div>
			</div>
<button class="btn"><a href="home.jsp">Back</a></button>

			<div class="container">
				<div class="row">
					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://m.media-amazon.com/images/I/51+uFdvlS3L._SX466_.jpg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Blood Lime <br> <span class="v1">Rs.250</span>
							</h1> -->
							<input type="text" name="id" value="49" class="s1 d-none">
						<input type="text" name="name" value="Blood Lime" class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</div>
						</form>
					</div>
					
					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart4" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://healthiersteps.com/wp-content/uploads/2022/03/broccoli-plant.jpeg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Brocco Flower <br> <span class="v1">Rs.350</span>
							</h1> -->
							<input type="text" name="id" value="50" class="s1 d-none">
						<input type="text" name="name" value="Brocco Flower" class="s1"><br>
						Rs.<input type="text" name="price" value="350" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
						</div>
						</form>
					</div>


					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart4" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://media.plantinstructions.com/wp-content/uploads/2020/04/pomato-plant-1024x940.png"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Pomato <br> <span class="v1">Rs.550</span>
							</h1> -->
							<input type="text" name="id" value="51" class="s1 d-none">
						<input type="text" name="name" value="Pomato " class="s1"><br>
						Rs.<input type="text" name="price" value="550" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
						</div>
						</form>
					</div>




					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart4" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://www.dhresource.com/albu_199938719_00/1.0x0.jpg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Early Sunglow <br> <span class="v1">Rs.400</span>
							</h1> -->
							<input type="text" name="id" value="52" class="s1 d-none">
						<input type="text" name="name" value="Early Sunglow " class="s1"><br>
						Rs.<input type="text" name="price" value="350" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
						</div>
						</form>
					</div>

					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart4" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://kj1bcdn.b-cdn.net/media/55249/grafting.jpg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Brimato <br> <span class="v1">Rs.300</span>
							</h1> -->
							<input type="text" name="id" value="53" class="s1 d-none">
						<input type="text" name="name" value="Brimato " class="s1"><br>
						Rs.<input type="text" name="price" value="300" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
						</div>
						</form>
					</div>
					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart4" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://i.pinimg.com/736x/ca/9b/ee/ca9beeec51dbabfd73393ec826664d72.jpg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Rabbage <br> <span class="v1">Rs.650</span>
							</h1> -->
							<input type="text" name="id" value="54" class="s1 d-none">
						<input type="text" name="name" value="Rabbage" class="s1"><br>
						Rs.<input type="text" name="price" value="650" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
						</div>
						</form>
					</div>
					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart4" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://sproutedgarden.com/wp-content/uploads/2020/05/cucamelons-072116.jpg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Cucamelon <br> <span class="v1">Rs.200</span>
							</h1> -->
							<input type="text" name="id" value="55" class="s1 d-none">
						<input type="text" name="name" value="Cucamelon" class="s1"><br>
						Rs.<input type="text" name="price" value="200" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
						</div>
						</form>
					</div>
					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart4" method="post">
						<div class="shadow menu-item-card p-3 mb-3">
							<img
								src="https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMWHITE-LITTLERDRO688555D1F05856/1563035888341_1..jpg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								White Little Brinjal <br> <span class="v1">Rs.450</span>
							</h1> -->
							<input type="text" name="id" value="56" class="s1 d-none">
						<input type="text" name="name" value="White Little Brinjal" class="s1"><br>
						Rs.<input type="text" name="price" value="450" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
						</div>
						</form>
					</div>
					<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart4" method="post">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://i.etsystatic.com/18774012/r/il/f37126/2702245105/il_570xN.2702245105_hse8.jpg"
								class="menu-item-image w-100 k1" />
							<!-- <h1 class="menu-card-title">
								Purple Carrot <br> <span class="v1">Rs.200</span>
							</h1> -->
							<input type="text" name="id" value="57" class="s1 d-none">
						<input type="text" name="name" value="Purple Carrot" class="s1"><br>
						Rs.<input type="text" name="price" value="200" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
						</div>
						</form>
					</div>
					<!-- <div class="col-12 col-md-6 col-lg-4">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://newnessplant.in/wp-content/uploads/2022/06/images-2-28-247x296.jpeg"
								class="menu-item-image w-100 k1" />
							<h1 class="menu-card-title">
								Apricot <br> <span class="v1">Rs.850</span>
							</h1>
							<a href="" class="menu-item-link"> More Details  <path
									fill-rule="evenodd"
									d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z" />
								</svg>
							</a>
						</div>
					</div>


					<div class="col-12 col-md-6 col-lg-4">
						<div class="shadow menu-item-card p-2 mb-3">
							<img
								src="https://blog.nurserylive.com/wp-content/uploads/2016/08/step0001-80-1.jpg"
								class="menu-item-image w-100" />
							<h1 class="menu-card-title">
								Pineberry <br> <span class="v1">Rs.1150</span>
							</h1>
							<a href="" class="menu-item-link">More Details  <path
									fill-rule="evenodd"
									d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z" />
								</svg>
							</a>
						</div>
					</div>


				</div>
			</div> -->
</body>
</html>
