
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
<style>
body {
	/* display: flex;
	flex-direction: row;
	justify-content: center; */
	background-color:#cbe3c3;
}
.pp{
color:red;

}
.ff{
display: flex;
	flex-direction: row;
	justify-content: center;
}

.e {
	box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px
		-12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px
		12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
	
	background-color:#f0f7f0;
	padding: 30px;
	display: flex;
	flex-direction: row;
	justify-content: center;
	width: 600px;
	margin-top: 100px;
}
.logo {
    width:100px;
    height: 70px;
}

.p1 {
	width: 400px;
	height: 30px;
	background-color: white;
	   border: 1px solid #ffc107;
	
}

.b1 {
	color: black;
	transient: 0.4s ease-in-out;
	width: 150px;
	height: 35px;
	border-radius: 30px;
	    border: 1px solid #ffc107;
	
}

/* .b1:hover {
	background-color: #6dcc62;
} */

.b11 {
	text-align: center;
color:black;
}

.b11 a {
	text-decoration: none;
}
.navv{
}
</style>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<div>

<div class="ff">
	<div class="e">
		<form action="Login" method="post">
			<h1>Login Here</h1>
			<table>
				<tr>
					<td>Email:</td>
				</tr>
				<tr>
					<td><input class="p1" type="email" name="email1" id="u"
						placeholder="Enter Email " required></td>
						<p class="error"></p>
				</tr>
				<tr>
					<td>Password:</td>
				</tr>
				<tr>
					<td><input class="p1" type="text" id="p" name="password1"
						placeholder="Enter Password" required></td>						
						<p class="error1"></p>
						
				</tr>
			</table>

			<br>
		
 			<input  type="submit"  value="Login" onclick="b1()">
 			
<!-- 			<button name="Login">Login</button>
 -->
			<div>
				<i class="fa-brands fa-instagram"></i>
			</div>

			<br>
			<div class="i">
				Don't Have An Account <a href="Register.jsp"> Register? </a>  
			<p class="pp" id="error2"></p>
		</form>
	</div>
	</div>
	</div>

	</div>


</div>






</body>
</html>