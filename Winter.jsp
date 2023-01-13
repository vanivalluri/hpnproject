
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
<title>Winter</title>

<style>
.s11{
height:200px;
}
.s12{
height:200px;
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
.s1 {
	border: none;
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
                            <li><a href="home.jsp#wcuSection" style="color:black">ABOUT</a></li>
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
	
	<h2 style="text-align:center;" class="m-3"><b>Winter Season Plants</b></h2>
		<button class="btn"><a href="home.jsp">Back</a></button>
	<div class="container">
		<div class="row">
			<div class="col-12 col-md-6 col-lg-4">
				<form action="Addtocart1" method="post">
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://m.media-amazon.com/images/I/71VFXawHuLL._SL1500_.jpg"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title">Synogonium<br> <span class="v1" >Rs.250</span></h1>
 -->					<input type="text" name="id" value="13" class="s1 d-none">
						<input type="text" name="name" value="Synogonium" class="s1"><br>
						Rs.<input type="text" name="price" value="250" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>
			
			
			<div class="col-12 col-md-6 col-lg-4">
							<form action="Addtocart1" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-g-beautiful-flowers-of-the-season_300x@2x.jpg?v=1637238460"
						class="menu-item-image w-100 s12" />
					<!-- <h1 class="menu-card-title"> 1, Dianthus (Any Color) Plant in 5 inch (13 cm) Pot, 1, 2, Zinnia (Any Color) Plant in 5 <br> Rs.<span class="v1" >350
					
					<span  style="color:red;margin:2px height:10px;">Cambo Pack</h1></span></h1>
					 -->
					<input type="text" name="id" value="14" class="s1 d-none">
						<input type="text" name="name" value="Dianthus" class="s1"><br>
						Rs.<input type="text" name="price" value="350" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>


			<div class="col-12 col-md-6 col-lg-4">
					<form action="Addtocart1" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-anthurium-andreanum-princess-amalia-elegance-plant_600x600.jpg?v=1634213376"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title">Anthurium (Pink) - Plant <br> <span class="v1" >Rs.749</span></h1>
 -->					<input type="text" name="id" value="15" class="s1 d-none">
						<input type="text" name="name" value="Anthurium (Pink) - Plant" class="s1"><br>
						Rs.<input type="text" name="price" value="749" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>




			<div class="col-12 col-md-6 col-lg-4">
								<form action="Addtocart1" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-g-wow-winter-bulbs-25-bulbs-pack_600x600.jpg?v=1664268937"
						class="menu-item-image w-100 " style="height:170px;" />
<!-- 					<h1 class="menu-card-title">Wow Winter Bulbs (20 Bulbs Pack)<br> <span class="v1" >Rs.1,199</span></h1>
 -->					<input type="text" name="id" value="16" class="s1 d-none">
						<input type="text" name="name" value="Wow Winter Bulbs" class="s1"><br>
						Rs.<input type="text" name="price" value="199" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>

			<div class="col-12 col-md-6 col-lg-4">
								<form action="Addtocart1" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/g-nurserylive-top-5-dazzling-flowering-plants-pack-3_600x600.jpg?v=1661871608"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title"> Dazzling Flowering Plants Pack <br> <span class="v1" >Rs.450</span></h1>
 -->					<input type="text" name="id" value="17" class="s1 d-none">
						<input type="text" name="name" value="Dazzling Flowering Plants Pack" class="s1"><br>
						Rs.<input type="text" name="price" value="450" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
								<form action="Addtocart1" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-g-tulip-random-color-bulbs_600x600.jpg?v=1663847709"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title">Tulip (Random Color) <br> <span class="v1" >Rs.650</span></h1>
 -->					<input type="text" name="id" value="18" class="s1 d-none">
						<input type="text" name="name" value="Tulip (Random Color)" class="s1"><br>
						Rs.<input type="text" name="price" value="650" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
								<form action="Addtocart1" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-g-plants-poinsettia-christmas-flower-red-plant_600x600.jpg?v=1635595790"
						class="menu-item-image w-100 " style="height:180px"/>
<!-- 					<h1 class="menu-card-title">Poinsettia, Christmas Flower (Red) - Plant<br> <span class="v1" >Rs.750</span></h1>
 -->					<input type="text" name="id" value="19" class="s1 d-none">
						<input type="text" name="name" value="Poinsettia, Christmas Flower (Red) - Plant" class="s1"><br>
						Rs.<input type="text" name="price" value="750" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
								<form action="Addtocart1" method="post">
			
				<div class="shadow menu-item-card p-3 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-rose-red-plant_295x295.jpg?v=1634228232"
						class="menu-item-image w-100 "style="height:180px" />
<!-- 					<h1 class="menu-card-title">Rose <br> <span class="v1" >Rs.450</span></h1>
 -->					<input type="text" name="id" value="20" class="s1 d-none">
						<input type="text" name="name" value="Rose" class="s1"><br>
						Rs.<input type="text" name="price" value="450" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
								<form action="Addtocart1" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-combo-packs-plants-top-6-plants-for-healthy-lifestyle-16969394159756_600x600.jpg?v=1634230437"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title">Top 6 plants for healthy lifestyle <br> <span class="v1" >Rs.1,999</span></h1>
 -->					<input type="text" name="id" value="21" class="s1 d-none">
						<input type="text" name="name" value="Top 6 plants for healthy lifestyle" class="s1"><br>
						Rs.<input type="text" name="price" value="450" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
								<form action="Addtocart1" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://www.bhg.com/thmb/FuDZ4CeZ9YSz6mGGIzFA5lalZhc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/houseplants-inside-during-winter-ea434732748e4be2ac51a9883aee3623.jpg"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title">Winter Home Plants <br> <span class="v1" >Rs.850</span></h1>
 -->					<input type="text" name="id" value="22" class="s1 d-none">
						<input type="text" name="name" value="Winter Home Plants" class="s1"><br>
						Rs.<input type="text" name="price" value="850" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
								<form action="Addtocart1" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-g-cuphea-hyssopifolia-white-plant_600x600.jpg?v=1634217953"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title">Cuphea Hyssopifolia (White)  <br> <span class="v1" >Rs.520</span></h1>
 -->					<input type="text" name="id" value="23" class="s1 d-none">
						<input type="text" name="name" value="Cuphea Hyssopifolia (White)" class="s1"><br>
						Rs.<input type="text" name="price" value="520" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>
			<div class="col-12 col-md-6 col-lg-4">
								<form action="Addtocart1" method="post">
			
				<div class="shadow menu-item-card p-2 mb-3">
					<img
						src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-g-plant-kalanchoe-any-color-plant_600x600.jpg?v=1643343615"
						class="menu-item-image w-100 s11" />
<!-- 					<h1 class="menu-card-title">Kalanchoe (Any Color) <br> <span class="v1" >Rs.750</span></h1>
 -->					<input type="text" name="id" value="24" class="s1 d-none">
						<input type="text" name="name" value="Kalanchoe (Any Color)" class="s1"><br>
						Rs.<input type="text" name="price" value="750" class="s1"><br>
						Quantity:<input type="text" name="quantity" value="1"><br>
						<br> <input type="submit" value="Addto cart">
						<button class="btn btn-success bv">
							<a>Buy Now</a>
				</div>
				</form>
			</div>
		
<

		</div>
	</div>



</body>
</html>
