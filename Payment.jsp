<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Payment</title>
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
/* .l{
width=500px;
} */
/* .w{
display: flex;
	flex: row;
	justify-content:center;
} */

body{background: #f5f5f5}.rounded{border-radius: 1rem}.nav-pills .nav-link{color: #555}.nav-pills .nav-link.active{color: white}input[type="radio"]{margin-right: 5px}.bold{font-weight:bold}
</style>
</head>

<body>
<!-- <div class="p2">
		<div class="main">
			<div class="navbar">
				<div class="icon">
					<div class="menu">
						<ul>
							<li><img
								src="https://cdn.xxl.thumbs.canstockphoto.com/green-lowercase-h-letter-with-leaf-logo-vector-template-vector-clip-art_csp89535410.jpg"
								class="logo"></li>

							<li><a href="#" style="color: black">HOME</a></li>
							<li><a href="#aboutus" style="color: black">ABOUT</a></li>
							<li><a href="#">PLANT-TYPES</a></li>
                            <li><a href="#">CATEGORIES</a></li>
							<li><a href="register.html" style="color: black">HELP</a></li>
							<li><a href="login.html" style="color: black">PROFILE</a></li>



							<li class="nav-item"><a>Plant&nbsp;Categories</a>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" role="button"
								data-toggle="dropdown" aria-expanded="false"> </a>

								<div class="dropdown-menu">
									<a class="dropdown-item" href="summer.html">Summer Season
										Plants</a> <a class="dropdown-item" href="Winter.html">Winter
										Season Plants</a> <a class="dropdown-item" href="gifts.html">Rainy
										Season Plants</a> <a class="dropdown-item" href="gifts.html">Plants
										for gifts</a> <a class="dropdown-item" href="Vegetables.html">Vegetables</a>
									<a class="dropdown-item" href="Fruits.html">Fruits</a> 
									<a class="dropdown-item" href="Flowers.html">Flowers</a> 
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div> -->
<div class="container py-5">
    
    <div class="row mb-4">
        <div class="col-lg-8 mx-auto text-center">
            <h1 class="display-6">Payment Gateway</h1>
        </div>
    </div> <!-- End -->
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card ">
                <div class="card-header">
                <div class="w">
                     <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                        <!-- Credit card form tabs -->
                        <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                            <li class="nav-item"> <a data-toggle="pill" href="#Debit-card" class="nav-link active "> <i class="fas fa-debit-card mr-2"></i>Debit Card </a></li>
                          <!--   <li class="nav-item"> <a data-toggle="pill" href="#paypal" class="nav-link "> <i class="fab fa-paypal mr-2"></i> Paypal </a> </li> -->
                            <li class="nav-item"> <a data-toggle="pill" href="#cashondelivery" class="nav-link "> <i class="fas fa-cashondelivery-alt mr-2"></i> Cash On Delivery </a> </li>
                            <li class="nav-item"> <a data-toggle="pill" href="#net-banking" class="nav-link "> <i class="fas fa-mobile-alt mr-2"></i> Net Banking </a> </li>
                        </ul>
                        </div>
                    </div> 
                    <form action="Payment" method="post">
                 
                    
                    
                        <div id="Debit-card" class="tab-pane fade  pt-3 show active">
                             <form role="form" onsubmit="event.preventDefault()"> 
                                <div class="form-group"> <label for="username">
                                        <h6>Card Owner</h6>
                                    </label> <input type="text" name="username" placeholder="Card Owner Name" required class="form-control "> </div>
                                <div class="form-group"> <label for="cardNumber">
                                        <h6>Card number</h6>
                                    </label>
                                    <div class="input-group"> <input type="text"  maxlength="16" name="cardNumber"  placeholder="Valid card number"  class="form-control " required>
                                        <div class="input-group-append"> <span class="input-group-text text-muted"> <i class="fab fa-cc-visa mx-1"></i> <i class="fab fa-cc-mastercard mx-1"></i> <i class="fab fa-cc-amex mx-1"></i> </span> </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-8">
                                        <div class="form-group"> <label><span class="hidden-xs">
                                                    <h6>Expiration Date</h6>
                                                </span></label>
                                            <div class="input-group"> <input type="number" placeholder="MM" name="month" class="form-control" required> <input type="number" placeholder="YY" name="year" class="form-control" required> </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group mb-4"> <label data-toggle="tooltip" title="Three digit CV code on the back of your card">
                                                <h6>CVV <i class="fa fa-question-circle d-inline"></i></h6>
                                            </label> <input type="text" maxlength="16" name="cvv" required class="form-control"> </div>
                                    </div>
                                </div>
                                <div class="card-footer"> <button type="submit" class="subscribe btn btn-primary btn-block"> Confirm Payment </button>
                                <span><button class="btn btn-primary" style="width:457px;">Rs.<% out.println(session.getAttribute("sum"));%></button></span></div></form>
                            </form>
                        </div>
                     <!--    </form> -->
                    </div> 
                    
                    <div id="cashondelivery" class="tab-pane fade pt-3 " >
                    <form action="CashOnDelivery" method="post" > 
                    <div class="form-group "> <label class="radio-inline"> <input type="radio" name="optradio"> Cash On Delivery  </label> </div>
                    <p class="text-muted">  Note: Please avoid Cash on delivery option to not get any delay in your order</p>
                    <button type="submit" class="btn btn-primary " >Proceed to Cash on delivery</button><br>
                    <button class="btn btn-primary" style="width:222px;">Rs.<% out.println(session.getAttribute("sum"));%></button>
<%--                      <button class="btn btn-primary" style="width:250px;">Rs.<% out.println(session.getAttribute("sum"));%></button>
 --%>                    
                    </form>
                </div>
                 <form action="netbanking" method="post">
                    <div id="net-banking" class="tab-pane fade pt-3 ">
                        <div class="form-group "> <label for="Select Your Bank" >
                                <h6>Select your Bank</h6>
                            </label> <select name="bank" class="form-control" id="ccmonth">
                                <option value="" selected disabled>--Please select your Bank--</option>
                                <option name="bank">HDFC Bank Ltd.</option>
                                <option name="bank">State Bank of India</option>
                                <option name="bank">ICICI Bank Ltd.</option>
                                <option name="bank">Kotak Mahindra Bank Ltd.</option>
                                <option name="bank">Kotak Mahindra Bank Ltd.</option>
                                <option name="bank">IndusInd Bank Ltd.</option>
                                <option name="bank">Yes Bank Ltd.</option>
                                <option name="bank">Punjab National Bank</option>
                                <option name="bank">Bank Of Baroda</option>
                                <option name="bank">Bank of India</option>
                            </select> </div>
                            <div class="form-group"> <label for="username">
                                        <h6>Username</h6>
                                    </label> <input type="text" name="username" placeholder="Username" required class="form-control "> </div>
                                    <div class="form-group"> <label for="username">
                                        <h6>Password</h6>
                                    </label> <input type="Password" name="password" placeholder="Enter your Password" required class="form-control "> </div>
                        <div class="form-group">
                            <p> <button type="submit" class="btn btn-primary "></i> Proceed Payment</button> <br>
                             <button class="btn btn-primary" style="width:150px;">Rs.<% out.println(session.getAttribute("sum"));%></button></p>
                        </div>
                       <!--  <script>
                         int min = 65626;
				int max=86561;
				Random rn = new Random();
				int rna=rn.nextInt(100000);
				System.out.println(rna);
				</script> -->
				
                        <p class="text-muted"><!-- Note: After clicking on the button, you will be directed to a secure gateway for payment. After completing the payment process, you will be redirected back to the website to view details of your order. --> </p>
                    </div> 
                    </form>
                </div>
                
            </div>
          
        </div>
        
    </div>


</body>
</html>