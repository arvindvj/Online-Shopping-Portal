<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>SKART | MEN ACCESSORIES</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/sForm.js"></script>
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
        <h1><a href="index.html"><img src="images/logo.png" alt=""></a></h1>
        <div class="menu_block">
          <nav>
            <ul class="sf-menu">
              <li><a href="index.jsp">Home</a></li>
              <li><a href="electronics.jsp.html">S H O P P I N G</a>
                <ul>
                  <li><a href="electronics.jsp">ELECTRONICS</a></li>
                  <li><a href="men.jsp">MEN</a></li>
                  <li><a href="women.jsp">WOMEN</a></li>
                </ul>
              </li>
              <li><a href="cart.jsp">view cart</a></li>
              <li><a href="Contacts.jsp">Contacts</a></li>
            </ul>
          </nav>
          <div class="clear"></div>
        </div>
        <div class="clear"></div>
      </div>
    </div>
  </header>
  <div class="content">
    <div class="container_12">
      <div class="grid_7">
        <h2 class="head2">MEN ACCESSORIES</h2>
        <div class="news"> <img src="images/brace1.jpeg" alt="" class="img_inner fleft">
          <div class="extra_wrapper">
            <div class="col1">Bracelet</div>
            <form action="cart?proid=23" name="cart" method="post">
            <p><br>Rs. 450  </p><br><br><br><br>
            <input type="submit" value="ADD TO CART" onclick= "validate1()"></form></div>
        </div>
        <div class="news"> <img src="images/brace2.jpeg" alt="" class="img_inner fleft">
          <div class="extra_wrapper">
            <p>                                     </p>
            <div class="col1">Bracelet</div>
            <form action="cart?proid=24" name="cart" method="post">
            <p><br>Rs. 770  </p><br><br><br><br>
            <input type="submit" value="ADD TO CART" onclick= "validate1()"></form></div>
        </div>
        <div class="news"> <img src="images/cuff.jpeg" alt="" class="img_inner fleft">
          <div class="extra_wrapper">
            <p>                                     </p>
            <div class="col1">Cuff Links</div>
            <form action="cart?proid=25" name="cart" method="post">
            <p><br>Rs. 1,470  </p><br>
            <input type="submit" value="ADD TO CART" onclick= "validate1()"></form></div>
        </div>
        <div class="news"> <img src="images/watch.jpeg" alt="" class="img_inner fleft">
          <div class="extra_wrapper">
            <p>                                     </p>
            <div class="col1">G SHOCK Wrist Watch</div>
            <form action="cart?proid=26" name="cart" method="post">
            <p><br>Rs. 9,470  </p><br>
            <input type="submit" value="ADD TO CART" onclick= "validate1()"></form> </div>
        </div>
        <script type="text/javascript">
                function validate1()
                {
                	
                	
                	
                	    document.cart.submit();
                	    
                }
                </script>
      </div>
      <div class="grid_3 prefix_2">
        <h2 class="head2">Categories</h2>
        <ul class="list l1">
          <li><a href="men.jsp">CLOTHING</a></li>
          <li><a href="accm.jsp">ACCESSORIES</a></li>
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
    <div class="grid_12"> SKART PVT LTD &copy; 2045 | <a href="#">Privacy Policy</a> | Design by: <a href="http://www.facebook.com/skart.bng">SUHA AND SHAILU</a> </div>
    <div class="clear"></div>
  </div>
</footer>
</body>
</html>