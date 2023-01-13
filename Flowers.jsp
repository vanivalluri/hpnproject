

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
<title>Flowers</title>

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
.h{
text-align:center;
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
.k1{

height:220px;
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
                        <li><img src="https://drive.google.com/uc?export=view&id=1L9WT-k1m9n2hPBELKkxZ_v4LdJX9yFL-" class="logo"></li>
                        
                            <li><a href="home.jsp" style="color:black">HOME</a></li>
                            <li><a href="home.jsp#wcuSection" style="color:black">ABOUT</a></li>
                            <!-- <li><a href="#">PLANT-TYPES</a></li>
                            <li><a href="#">CATEGORIES</a></li> -->
                            <li><a href="home.jsp#help" style="color:black">HELP</a></li>
                            <li><a href="" style="color:black" data-toggle="modal" data-target="#exampleModal">PROFILE</a></li>
                            
                            
                            
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
			
				<h1 class="page-title">Flowers</h1>

			
			<div class="term-description"><p>Live Flowers plants</p>
			
			</div>
</div>
<button class="btn"><a href="home.jsp">Back</a></button>

	<div class="container">
		<div class="row">
			<div class="col-12 col-md-6 col-lg-4">
			<form action="Addtocart5" method="post">
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="http://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-plants-plumeria-champa-pink-plant-16969213116556.jpg?v=1634226376"
						class="menu-item-image w-100 k1" />
<!-- 					<h1 class="menu-card-title">Plumeria Pink Flower <br> <span class="v1" >Rs.550</span></h1>
 -->					
					<input type="text" name="id" value="69" class="s1 d-none">
						<input type="text" name="name" value="Plumeria Pink Flower" class="s1"><br>
						Rs.<input type="text" name="price" value="550" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
			<form action="Addtocart5" method="post">
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="http://www.hiddenvalleyhibiscus.com/images/saffronbush.jpg"
						class="menu-item-image w-100 k1" />
<!-- 					<h1 class="menu-card-title">Red Australian Hibiscus <br> <span class="v1" >Rs.350</span></h1>
 -->					
					<input type="text" name="id" value="70" class="s1 d-none">
						<input type="text" name="name" value="Red Australian Hibiscus" class="s1"><br>
						Rs.<input type="text" name="price" value="350" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>


			<div class="col-12 col-md-6 col-lg-4">
			<form action="Addtocart5" method="post">
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0555/8363/7660/products/hardy_hibiscus_airbrush_effect_plant_377_detail_800x.jpg?v=1631011976"
						class="menu-item-image w-100 k1" />
<!-- 					<h1 class="menu-card-title"> Pink Australian Hibiscus <br> <span class="v1" >Rs.450</span></h1>
 -->					
					<input type="text" name="id" value="71" class="s1 d-none">
						<input type="text" name="name" value="Pink Australian Hibiscus" class="s1"><br>
						Rs.<input type="text" name="price" value="450" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>




			<div class="col-12 col-md-6 col-lg-4">
			<form action="Addtocart5" method="post">
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://5.imimg.com/data5/UQ/KB/MY-38022806/tea-rose-hybrid-and-bud-500x500.jpg"
						class="menu-item-image w-100 k1" />
<!-- 					<h1 class="menu-card-title">Hybrid rose Red and White shaded <br> <span class="v1" >Rs.400</span></h1>
 -->					
					<input type="text" name="id" value="72" class="s1 d-none">
						<input type="text" name="name" value="Hybrid rose Red and White shaded" class="s1"><br>
						Rs.<input type="text" name="price" value="399" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>

			<div class="col-12 col-md-6 col-lg-4">
			<form action="Addtocart5" method="post">
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLfnJznndA5KQaBvAqFZUrM2Qe3EmXtF-_qQ&usqp=CAU"
						class="menu-item-image w-100 k1" />
<!-- 					<h1 class="menu-card-title">Hybrid rose Purple and White shaded <br> <span class="v1" >Rs.300</span></h1>
 -->					
					<input type="text" name="id" value="73" class="s1 d-none">
						<input type="text" name="name" value="Hybrid rose Purple and White shaded" class="s1"><br>
						Rs.<input type="text" name="price" value="299" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
			<form action="Addtocart5" method="post">
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://ars.els-cdn.com/content/image/3-s2.0-B9780128140079000128-f12-273-9780128140079.jpg"
						class="menu-item-image w-100 k1" />
<!-- 					<h1 class="menu-card-title">Florist Kalanchoe Red <br> <span class="v1" >Rs.650</span></h1>
 -->					
					<input type="text" name="id" value="74" class="s1 d-none">
						<input type="text" name="name" value="Florist Kalanchoe Red " class="s1"><br>
						Rs.<input type="text" name="price" value="350" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
			<form action="Addtocart5" method="post">
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://thegardeningcook.com/wp-content/uploads/2013/08/rock-garden-gazanias.jpg"
						class="menu-item-image w-100 k1" />
<!-- 					<h1 class="menu-card-title">Gazania <br> <span class="v1" >Rs.250</span></h1>
 -->					
					<input type="text" name="id" value="75" class="s1 d-none">
						<input type="text" name="name" value="Gazania " class="s1"><br>
						Rs.<input type="text" name="price" value="299" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
			<form action="Addtocart5" method="post">
				<div class="shadow menu-item-card p-3 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0920/8638/products/zinniadahliacolored1_512x512.png?v=1616162069"
						class="menu-item-image w-100 k1" />
<!-- 					<h1 class="menu-card-title">Dahlia goldsmith <br> <span class="v1" >Rs.450</span></h1>
 -->					
					<input type="text" name="id" value="76" class="s1 d-none">
						<input type="text" name="name" value="Dahlia goldsmith" class="s1"><br>
						Rs.<input type="text" name="price" value="449" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
			<form action="Addtocart5" method="post">
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://smithsoniangardens.files.wordpress.com/2013/02/hellebore_pink_frost.jpg"
						class="menu-item-image w-100 k1" />
<!-- 					<h1 class="menu-card-title">Hellobore Winter <br> <span class="v1" >Rs.200</span></h1>
 -->					
				<input type="text" name="id" value="77" class="s1 d-none">
						<input type="text" name="name" value="Hellobore Winter" class="s1"><br>
						Rs.<input type="text" name="price" value="299" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
			<form action="Addtocart5" method="post">
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://www.growjoy.com/store/pc/catalog/rocket_bronze_snapdragon_plant_977_detail.jpg"
						class="menu-item-image w-100 k1" />
<!-- 					<h1 class="menu-card-title">Snapdragon Rocket <br> <span class="v1" >Rs.850</span></h1>
 -->					
					<input type="text" name="id" value="78" class="s1 d-none">
						<input type="text" name="name" value="Snapdragon Rocket" class="s1"><br>
						Rs.<input type="text" name="price" value="849" class="s1 s3"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a></button>
				</div>
				</form>
			</div>
		
		
		<div class="col-12 col-md-6 col-lg-4">
		<form action="Addtocart5" method="post">
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://florasiam.com/301-thickbox_default/amarcrinum-howardii.jpg"
						class="menu-item-image w-100 k1" />
<!-- 					<h1 class="menu-card-title">Amarcrinum <br> <span class="v1" >Rs.550</span></h1>
 -->					
					<input type="text" name="id" value="79" class="s1 d-none">
						<input type="text" name="name" value="Amarcrinum" class="s1"><br>
						Rs.<input type="text" name="price" value="549" class="s1 s3"><br>
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
