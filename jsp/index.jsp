<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>SKART</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slider.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/sForm.js"></script>
<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script>
$(window).load(function () {
    $('.slider')._TMS({
        show: 0,
        pauseOnHover: false,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'fade',
        pagination: true, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: false,
        waitBannerAnimation: false,
        progressBar: false
    })
});
$(window).load(function () {
    $('.carousel1').carouFredSel({
        auto: false,
        prev: '.prev',
        next: '.next',
        width: 960,
        items: {
            visible: {
                min: 1,
                max: 4
            },
            height: 'auto',
            width: 240,
        },
        responsive: false,
        scroll: 1,
        mousewheel: false,
        swipe: {
            onMouse: false,
            onTouch: false
        }
    });
});
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body>
<div class="main">
  <header>
    <div class="container_12">
      <div class="grid_12">
        <h1><a href="index.jsp"><img src="images/logo.png" alt=""></a></h1>
        <div class="menu_block">
          <nav>
            <ul class="sf-menu">
              <li class="current"><a href="index.jsp">Home</a></li>
              <li class="with_ul"><a href="electronics.jsp">S H O P P I N G</a>
                <ul>
                  <li><a href="electronics.jsp"> ELECTRONICS </a></li>
                  <li><a href="men.jsp">MEN</a></li>
                  <li><a href="women.jsp">WOMEN</a></li>
                </ul>
              </li>
              <li><a href="cart.jsp">VIEW CART</a></li>
              <li><a href="Contacts.jsp">Contact</a></li>
            </ul>
          </nav>
          <div class="clear"></div>
        </div>
        <div class="clear"></div>
      </div>
    </div>
  </header>
  <div class="slider-relative">
    <div class="slider-block">
      <div class="slider">
        <ul class="items">
          <li><img src="images/slide.jpg" alt=""></li>
          <li><img src="images/slide1.jpg" alt=""></li>
          <li class="mb0"><img src="images/slide2.jpg" alt=""></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="content page1">
    <div class="container_12">
      <div class="grid_7">
        <h2>Welcome</h2>
        <div class="page1_block col1"> 
          <div class="extra_wrapper">
            <p><span class="col2"><a href="electronics.html">Click here</a></span> To start shopping from our wide range of products </p>
            <form action="LOGIN1" name="LOGIN" method="post">
                <font  size="4" color="indigo">
                Username    <br><input type="text" name="name" size="30"><br>
                Password    <br><input type="password" name="pass" size="30"><br>
                <a href="new.jsp">New user</a><br>
            
              <input type="submit" value ="LOGIN" onclick= "validate()">
              </font>
       
            <script type="text/javascript">
                function validate()
                {
                    if(document.index1.name.value==""||document.index1.pass.value=="")
                    {
                        alert("fields cannot be blank");
                        return;
                    }
                    document.LOGIN1.submit();
                }
                </script>
               
   			     
			
        </form>
             </div>
          <div class="clear"></div>
        </div>
      </div>
      <div class="grid_5">
        <h2>Features</h2>
        <ul class="list">
          <li><a href="#">Fast and Relaible shopping</a></li>
          <li><a href="#">Free Home Delivery</a></li>
          <li><a href="#">Chose from a wide range of Products</a></li>
          <li><a href="#">In a Day Delivery Option</a></li>
          <li><a href="#">Option of Pay By Cash</a></li>
        </ul>
      </div>
      <div class="clear"></div>
      <div class="bottom_block">
        <div class="grid_6">
          <h3>Follow Us</h3>
          <div class="socials"> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
         
        </div>
        <div class="grid_6">
          <h3>Email Updates</h3>
          <p class="col1">Join our digital mailing list and get news<br>
            deals and be first to know about events</p>
          <form id="newsletter" action="#">
            <div class="success">Your subscribe request has been sent!</div>
            <label class="email">
              <input type="email" value="Enter e-mail address" >
              <a href="#" class="btn" data-type="submit">subscribe</a> <span class="error">*This is not a valid email address.</span> </label>
          </form>
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</div>
<footer>
  <div class="container_12">
    <div class="grid_12"> SKART PVT LTD &copy; 2045  </div>
    <div class="clear"></div>
  </div>
</footer>
</body>
</html>