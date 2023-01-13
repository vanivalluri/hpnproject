<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submit</title>
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
    
    <style type="text/css">
    
    
    body{
/*         background-image:url("https://content.presentermedia.com/files/clipart/00018000/18013/confetti_background_celebrate_800_wht.jpg");
 */   
 background-color:#b3cbf2;
  }
    .m{
        background-image:url("https://content.presentermedia.com/files/clipart/00018000/18013/confetti_background_celebrate_800_wht.jpg");
   margin-left: 400x;
    margin-right: 200px;
    margin-top: 200px;
 height:400px;
    width:800px;
     box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px
        -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px
        12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px; 
    }
  .j{
   
/* padding-top:30px;
padding-right:30px;
padding-left:30px;
padding-bottom:20px; */
    display: flex;
    flex: row;
    justify-content: center;
   
    } 
    .k{
    
 padding:center;
    display: flex;
    flex: row;
    justify-content: center;
    }
    .aa{
 
    display: flex;
    flex: row;
    justify-content: center;
    }
    .tick{
    width: 250px;
    /* height:200px; */
    height:200px;
    opacity:0.9;
    }
    .m{
    margin-left:400px;
        margin-right:400px;
    
    }
    .tick{
    margin-left:250px;
    }
    a{
    color:dark pink;
    }
</style>    
</head>
<body>

<div class="m d-flex flex-column justify-content-center">

<h1 class="j" style="color:Green"> Your Order Placed Successfully</h1>
<%-- <<h3><% out.println(se.getAttribute("a"));%></h3>
 --%><img src="https://cms-assets.tutsplus.com/cdn-cgi/image/width=630/uploads/users/523/posts/32694/final_image/tutorial-preview-large.png" alt="Tick" class="tick">

<a href="home.jsp" class="aa" style="color:black;font-weight:bold">Click here to Home</a>
<!--  <a href ="orders.jsp" attributes-list download > Download </a>  
 -->

</div>



</div>
</body>
</html>