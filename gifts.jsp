
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
<title>Gifts</title>

<style>
.s11{
height:200px;
}
.s12{
height:155px;
}
.s1{
border:none;

}
.s3{
color:red;
}
.navbar {
	background-color: white;
	box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;
	height: 75;
	margin: auto;
}
.v1{
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
    width:100px;
    height: 70px;
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
                        <li><img src="https://drive.google.com/uc?export=view&id=1L9WT-k1m9n2hPBELKkxZ_v4LdJX9yFL-" class="logo"></li>
                        
                            <li><a href="home.jsp" style="color:black">HOME</a></li>
                            <li><a href="#aboutus" style="color:black">ABOUT</a></li>
                            <!-- <li><a href="#">PLANT-TYPES</a></li>
                            <li><a href="#">CATEGORIES</a></li> -->
                            <li><a href="home.jsp#help" style="color:black">HELP</a></li>
                            <li><a href="login.jsp" style="color:black" data-toggle="modal" data-target="#exampleModal">PROFILE</a></li>
                            
                            
                            
                            <li class="nav-item">
       <a>Plant&nbsp;Categories</a>
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
          
        </a>
        
        <div class="dropdown-menu">
          <a class="dropdown-item" href="summer.jsp">Summer Season Plants</a>
          <a class="dropdown-item" href="Winter.jsp">Winter Season Plants</a>
          <a class="dropdown-item" href="Rainy.jsp">Rainy Season Plants</a>
          <a class="dropdown-item" href="gifts.jsp">Plants for gifts</a>
          <a class="dropdown-item" href="Vegetables.jsp">Vegetables</a>
          <a class="dropdown-item" href="Fruits.jsp">Fruits</a>
          <a class="dropdown-item" href="Flowers.jsp">Flowers</a>

<li class="pl"><a href="register.html" style="color:green">CART</a></li> 
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
	
	
	<h2 style="text-align:center;" class="m-3"><b>Plants For Gifts</b></h2>
		<button class="btn"><a href="home.jsp">Back</a></button>
	
	<div class="container">
		<div class="row">
			<div class="col-12 col-md-6 col-lg-4">
	         <form action="Addtocart3" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://imgcdn.floweraura.com/cool-plants-to-gift-a-loved-one-cover-picture.jpg"
						class="menu-item-image w-100 s11"  />
<!-- 					<h1 class="menu-card-title">Orchids<br> <span class="v1" >Rs.199</span></h1>
 -->					<input type="text" name="id" value="37" class="s1 d-none">
						<input type="text" name="name" value="Orchids" class="s1"><br>
						Rs.<input type="text" name="price" value="199" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
			
			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart3" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://d3cif2hu95s88v.cloudfront.net/blog/wp-content/uploads/2021/05/04150624/Spider-plant.jpg"
						class="menu-item-image w-100 s11"  />
<!-- 					<h1 class="menu-card-title"> Spider Plant <br> Rs.<span class="v1" >159</span></h1>
 -->					
					
					<input type="text" name="id" value="38" class="s1 d-none">
						<input type="text" name="name" value="Spider Plant" class="s1"><br>
						Rs.<input type="text" name="price" value="159" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>


			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart3" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://d3cif2hu95s88v.cloudfront.net/blog/wp-content/uploads/2021/05/04150649/Red-Edged-Dracaena.jpg"
						class="menu-item-image w-100 s11"  />
<!-- 					<h1 class="menu-card-title">Red-Edged Dracaena <br> <span class="v1" >Rs.749</span></h1>
 -->					<input type="text" name="id" value="39" class="s1 d-none">
						<input type="text" name="name" value="Red-Edged Dracaena" class="s1"><br>
						Rs.<input type="text" name="price" value="749" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>




			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart3" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://d3cif2hu95s88v.cloudfront.net/blog/wp-content/uploads/2021/05/04150708/Peace-Lily.jpg"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title">Peace Lily<br> <span class="v1" >Rs.1,199</span></h1>
 -->					<input type="text" name="id" value="40" class="s1 d-none">
						<input type="text" name="name" value="Peace Lily" class="s1"><br>
						Rs.<input type="text" name="price" value="1,199" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>

			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart3" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://d3cif2hu95s88v.cloudfront.net/blog/wp-content/uploads/2021/05/04150725/Bamboo.jpg"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title">Bambo<br> <span class="v1" >Rs.150</span></h1>
 -->					<input type="text" name="id" value="41" class="s1 d-none">
						<input type="text" name="name" value="Bambo" class="s1"><br>
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
							<form action="Addtocart3" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://d3cif2hu95s88v.cloudfront.net/blog/wp-content/uploads/2021/05/04150805/Succulents.jpg"
						class="menu-item-image w-100 s11"  />
<!-- 					<h1 class="menu-card-title">Succulents <br> <span class="v1" >Rs.250</span></h1>
 -->					<input type="text" name="id" value="42" class="s1 d-none">
						<input type="text" name="name" value="Succulents " class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart3" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-air-purifying-rubber-plant-for-you-gift-plant-1_222x295.jpg?v=1635936146"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title">Air Purifying Rubber Plant For You <br> <span class="v1" >Rs.750</span></h1>
 -->					<input type="text" name="id" value="43" class="s1 d-none">
						<input type="text" name="name" value="Air Purifying Rubber Plant For You" class="s1"><br>
						Rs.<input type="text" name="price" value="750" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart3" method="post">
			
				<div class="shadow menu-item-card p-3 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-gifts-lovable-heart-shape-hoya-plants-to-celebrate-love-16969009725580_600x600.jpg?v=1634223393"
						class="menu-item-image w-100 s11 " />
<!-- 					<h1 class="menu-card-title"> Hoya Plants <br> <span class="v1" >Rs.4,450</span></h1>
 -->					<input type="text" name="id" value="44" class="s1 d-none">
						<input type="text" name="name" value="Hoya Plants" class="s1"><br>
						Rs.<input type="text" name="price" value="450" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart3" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-combo-packs-plants-top-6-plants-for-healthy-lifestyle-16969394159756_600x600.jpg?v=1634230437"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title">Top 6 plants for healthy lifestyle <br> <span class="v1" >Rs.1,999</span></h1>
 -->					<input type="text" name="id" value="45" class="s1 d-none">
						<input type="text" name="name" value="Top 6 plants for healthy lifestyle" class="s1"><br>
						Rs.<input type="text" name="price" value="1,999" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart3" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://www.bhg.com/thmb/FuDZ4CeZ9YSz6mGGIzFA5lalZhc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/houseplants-inside-during-winter-ea434732748e4be2ac51a9883aee3623.jpg"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title">Winter Home Plants <br> <span class="v1" >Rs.850</span></h1>
 -->					<input type="text" name="id" value="46" class="s1 d-none">
						<input type="text" name="name" value="Winter Home Plants " class="s1"><br>
						Rs.<input type="text" name="price" value="850" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart3" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-g-cuphea-hyssopifolia-white-plant_600x600.jpg?v=1634217953"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title">Cuphea Hyssopifolia (White)  <br> <span class="v1" >Rs.520</span></h1>
 -->					<input type="text" name="id" value="47" class="s1 d-none">
						<input type="text" name="name" value="Cuphea Hyssopifolia (White)" class="s1"><br>
						Rs.<input type="text" name="price" value="520" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart3" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-g-plant-kalanchoe-any-color-plant_600x600.jpg?v=1643343615"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title">Kalanchoe (Any Color) <br> <span class="v1" >Rs.750</span></h1>
 -->					<input type="text" name="id" value="48" class="s1 d-none">
						<input type="text" name="name" value="Kalanchoe (Any Color)" class="s1"><br>
						Rs.<input type="text" name="price" value="750" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
		


		</div>
	</div>



</body>
</html>
