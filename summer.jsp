
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
<title>Summer</title>

<style>
.s11 {
	height: 200px;
}

.s12 {
	height: 155px;
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
	color: #ff7200;
}

.menu-item-card {
	border-radius: 20px;
}

.logo {
	width: 100px;
	height: 70px;
}

.menu-card-title {
	color: "black";
	font-family: "sans-serif";
	font-size: 18px;
	font-weight: 500;
	margin-top: 24px;
}

.name {
	height: 150px;
}

.s1 {
	border: none;
	
}
.s3{
color:red;
}

.s2 {
	width: 10px;
}

.bv {
	border-radius: 10px;
	border: 1px solid #ed3245;
}

.bv:hover {
	background-color: #58ed80;
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
							<a href="home2.html">
								<li><img
									src="https://drive.google.com/uc?export=view&id=1L9WT-k1m9n2hPBELKkxZ_v4LdJX9yFL-"
									class="logo"></li>
							</a>

							<li><a href="home.jsp" style="color: green">HOME</a></li>
							<li><a href="home.jsp#wcuSection" style="color: green">ABOUT</a></li>



							<li><a href="home.jsp#help" style="color: green">HELP</a></li>
							<li><a href="profile.html" style="color: green" data-toggle="modal" data-target="#exampleModal">PROFILE</a></li>
							<li class="nav-item"><a>Plant&nbsp;Categories</a>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" role="button"
								data-toggle="dropdown" aria-expanded="false"> </a>

								<div class="dropdown-menu">
									<a class="dropdown-item" href="summer.html">Summer Season
										Plants</a> <a class="dropdown-item" href="Winter.jsp">Winter
										Season Plants</a> <a class="dropdown-item" href="Rainy.jsp">Rainy
										Season Plants</a> <a class="dropdown-item" href="gifts.jsp">Plants
										for Gifts</a> <a class="dropdown-item" href="Vegetables.jsp">Vegetables</a>
									<a class="dropdown-item" href="Flowers.jsp">Flowers</a> <a
										class="dropdown-item" href="Fruits.jsp">Fruits</a>


									<li class="pl"><a href="Addtocartraccess" style="color: green">CART</a></li>
									<span style="color:red"><%out.println(session.getAttribute("count"));%></span>
									<li class="pl"><a href="Login.jsp" style="color: green">LOGOUT</a></li>
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

<h2 style="text-align: center;" class="m-3">
		<b>Summer Season Plants</b>
	</h2>
	<button class="btn">
		<a href="home.jsp">Back</a>
	</button>



	<div class="container">
		<div class="row">
			<div class="col-12 col-md-6 col-lg-4">
				<form action="Addtocart" method="post">

					<div class="shadow menu-item-card p-2 mb-5">
						<img
							src="https://th.bing.com/th/id/OIP.Wb9WNP4NYsyoylHb90T1BgHaFk?pid=ImgDet&rs=1"
							class="menu-item-image w-100 name" />
						<!-- 					<h1 class="menu-card-title" name="productname">Sun Flower-Plant <br>Rs.<span class="v1" >250</span></h1>
 -->
						<input type="text" name="id" value="1" class="s1 d-none">
						<input type="text" name="name" value="Sunflower" class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>

					</div>
				</form>
			</div>





			<div class="col-12 col-md-6 col-lg-4">
				<form action="Addtocart" method="post">

					<div class="shadow menu-item-card p-2 mb-3">
						<img
							src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-plants-guava-tree-amrud-psidium-guajava-sardar-l49-grown-through-seeds-plant-16968910831756_295x295.jpg?v=1634220909"
							class="menu-item-image w-100 name" />
						<!-- 					<h1 class="menu-card-title">Guava Tree-Plant <br>Rs.<span class="v1" >399</span></h1>
 -->
						<input type="text" name="id" value="2" class="s1 d-none">

						<input type="text" name="name" value="Guava" class="s1"><br>
						Rs.<input type="text" name="price" value="399" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
					</div>
				</form>

			</div>


			<div class="col-12 col-md-6 col-lg-4">
				<form action="Addtocart" method="post">

					<div class="shadow menu-item-card p-2 mb-3">
						<img
							src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-plants-mango-tree-grown-through-seeds-plant-16969021128844_295x295.jpg?v=1634223739"
							class="menu-item-image w-100 name" />
						<!-- 					<h1 class="menu-card-title">Mango Tree-Plant <br>Rs.<span class="v1" >699</span></h1>
 -->
						<input type="text" name="id" value="3" class="s1 d-none">

						<input type="text" name="name" value="mango" class="s1"><br>
						Rs.<input type="text" name="price" value="699" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
					</div>
				</form>
			</div>

			<div class="col-12 col-md-6 col-lg-4">
				<form action="Addtocart" method="post">

					<div class="shadow menu-item-card p-2 mb-5">
						<img
							src="https://lambdageeks.com/wp-content/uploads/2022/04/images-47-300x225.jpeg?ezimgfmt=ng:webp/ngcb41"
							class="menu-item-image w-100 name" />
						<!-- 					<h1 class="menu-card-title">Meyer lemon-Plants
 -->
						<input type="text" name="id" value="4" class="s1 d-none">

						<input type="text" name="name" value="Meyer lemon-Plant" class="s1"><br>
						Rs.<input type="text" name="price" value="350" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
					</div>
				</form>
			</div>


			<div class="col-12 col-md-6 col-lg-4">
				<form action="Addtocart" method="post">

					<div class="shadow menu-item-card p-2 mb-5">
						<img
							src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-plants-papaya-papita-grown-through-seeds-plant-16969157214348_295x295.jpg?v=1634225428"
							class="menu-item-image w-100 name" />
						<!-- 					<h1 class="menu-card-title">Papaya-Plant<br>Rs.<span class="v1" >299</span></h1>
 -->
						<input type="text" name="id" value="5" class="s1 d-none">

						<input type="text" name="name" value="Papaya-Plant" class="s1"><br>
						Rs.<input type="text" name="price" value="299" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
					</div>
				</form>
			</div>





			<div class="col-12 col-md-6 col-lg-4">
				<form action="Addtocart" method="post">

					<div class="shadow menu-item-card p-2 mb-5">
						<img
							src="https://lambdageeks.com/wp-content/uploads/2022/04/images-52-300x163.jpeg?ezimgfmt=ng:webp/ngcb41"
							class="menu-item-image w-100 name " />
						<!-- 					<h1 class="menu-card-title">Jostaberry-Plant <br>Rs.<span class="v1" >150</span></h1>
 -->
						<input type="text" name="id" value="6" class="s1 d-none">

						<input type="text" name="name" value="Jostaberry-Plant" class="s1"><br>
						Rs.<input type="text" name="price" value="150" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>

					</div>
				</form>
			</div>



			<div class="col-12 col-md-6 col-lg-4">
				<form action="Addtocart" method="post">

					<div class="shadow menu-item-card p-2 mb-5">
						<img
							src="https://lambdageeks.com/wp-content/uploads/2022/04/images-53-300x200.jpeg?ezimgfmt=ng:webp/ngcb41"
							class="menu-item-image w-100 name" />
						<!-- 					<h1 class="menu-card-title">Oroblanco-Plant<br>Rs.<span class="v1" >650</span></h1>
 -->
						<input type="text" name="id" value="7" class="s1 d-none">

						<input type="text" name="name" value="Oroblanco-Plant" class="s1"><br>
						Rs.<input type="text" name="price" value="650" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
					</div>
				</form>
			</div>


			<div class="col-12 col-md-6 col-lg-4">
				<form action="Addtocart" method="post">

					<div class="shadow menu-item-card p-2 mb-5">
						<img
							src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-plants-portulaca-9-o-clock-any-color-plant-16969219768460_295x295.jpg?v=1634226724"
							class="menu-item-image w-100 name" />
						<!-- 					<h1 class="menu-card-title">Portulaca-Plant <br>Rs.<span class="v1" >199</span></h1>
 -->
						<input type="text" name="id" value="8" class="s1 d-none">

						<input type="text" name="name" value="Portulaca-Plant" class="s1"><br>
						Rs.<input type="text" name="price" value="199" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
					</div>
				</form>
			</div>







			<div class="col-12 col-md-6 col-lg-4">
				<form action="Addtocart" method="post">

					<div class="shadow menu-item-card p-2 mb-5">
						<img
							src="https://lambdageeks.com/wp-content/uploads/2022/04/images-50-199x300.jpeg?ezimgfmt=ng:webp/ngcb41"
							class="menu-item-image w-100 name" />
						<!-- 					<h1 class="menu-card-title">Blood Lime-Plant<br>Rs.<span class="v1" >250</span></h1>
 -->
						<input type="text" name="id" value="9" class="s1 d-none">

						<input type="text" name="name" value="Blood Lime-Plant" class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
						</button>
					</div>
				</form>
			</div>



			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart" method="post">
			
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-rose-red-plant_295x295.jpg?v=1634228232"
						class="menu-item-image w-100 name" />
					<!-- 					<h1 class="menu-card-title">Red Rose-Plant <br>Rs.<span class="v1" >299</span></h1>
 -->
					<input type="text" name="id" value="10" class="s1 d-none">

					<input type="text" name="name" value="Red Rose-Plant " class="s1"><br>
					Rs.<input type="text" name="price" value="299" class="s1 s3"><br>
					Quantity:<input type="text" name="quantity" value="1"><br>
					<br> <input type="submit" value="Addto cart">
					<button class="btn btn-success bv">
						<a>Buy Now</a>
					</button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart" method="post">
			
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-tamarind-imli-tamarindus-indica-plant_295x295.jpg?v=1634202553"
						class="menu-item-image w-100 name" />
					<!-- 					<h1 class="menu-card-title">Tamarind-Plant <br>Rs.<span class="v1" >399</span></h1>
 -->
					<input type="text" name="id" value="11" class="s1 d-none">

					<input type="text" name="name" value="Tamarind-Plant" class="s1"><br>
					Rs.<input type="text" name="price" value="399" class="s1 s3"><br>
					Quantity:<input type="text" name="quantity" value="1"><br>
					<br> <input type="submit" value="Addto cart">
					<button class="btn btn-success bv">
						<a>Buy Now</a>
					</button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart" method="post">
			
				<div class="shadow menu-item-card p-2 mb-5">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-jamun-plant_295x295.jpg?v=1634222564"
						class="menu-item-image w-100 name" />
					<!-- 					<h1 class="menu-card-title">Jamun Tree, Syzygium cumini - Plant <br>Rs.<span class="v1" >399</span></h1>
 -->
					<input type="text" name="id" value="12" class="s1 d-none">

					<input type="text" name="name"
						value="Jamun Tree, Syzygium  " class="s1"><br>
					Rs.<input type="text" name="price" value="399" class="s1 s3"><br>
					Quantity:<input type="text" name="quantity" value="1"><br>
					<br> <input type="submit" value="Addto cart">
					<button class="btn btn-success bv">
						<a>Buy Now</a>
					</button>
				</div>
				</form>
			</div>

			</form>

		</div>
	</div>

</body>
</html>