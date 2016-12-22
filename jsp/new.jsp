<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>SKART | NEW USER</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/form.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/sForm.js"></script>
<script src="js/Forms.js"></script>
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
              <li><a href="electronics.jsp">S H O P P I N G</a>
                <ul>
                  <li><a href="electronics.jsp">ELECTRONICS</a></li>
                  <li><a href="men.jsp">MEN</a></li>
                  <li><a href="women.jsp">WOMEN</a></li>
                </ul>
              </li>
              <li><a href="cart.jsp">VIEW CART</a></li>
              
              
              <li class="current"><a href="Contacts.jsp">Contacts</a></li>
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
      
      <div class="grid_5 prefix_1">
        <h2>NEW USER</h2>

          
          <form action="LOGIN2" name="LOGIN2" method="post">
                <font  size="6" color="indigo">
                NAME           <br><input type="text" name="name" size="50"><br><br>
                PASSWORD       <br><input type="password" name="pass" size="50"><br><br>
                EMAIL ID       <br><input type="text" name="email" size="50"><br><br>
                DOOR NO.       <br><input type="text" name="door" size="50"><br><br>
                STREET         <br><input type="text" name="street" size="50"><br><br>
                AREA           <br><input type="text" name="area" size="50"><br><br>
                CITY         
                				<br>
  								<select name="city" width="320" STYLE="width: 320px">
    								<option value="bangalore">Bangalore</option>
    								<option value="delhi">Delhi</option>
   									<option value="mumbai">Mumbai</option>
 								 </select><br><br>
                PINCODE        <br><input type="text" name="pin" size="50"><br><br>
                STATE          <br>
  								<select name="state" width="320" STYLE="width: 320px">
    								<option value="Karnataka">Karnataka</option>
    								<option value="Delhi">Delhi</option>
   									<option value="Maharashtra">Maharashtra</option>
 								 </select><br><br>
                
            
              <input type="submit" value="ENTER" onclick= "validate()" width="320" STYLE="width: 320px">
              </font>
       
            <script type="text/javascript">
                function validate()
                {
                    if(document.index1.name.value==""||document.index1.pass.value=="")
                    {
                        alert("fields cannot be blank");
                        return;
                    }
                    document.LOGIN2.submit();
                }
                </script>
               
   			     
			
        </form>
      </div>
      <div class="clear"></div>
        </div>
      </div>
      
      <div class="bottom_block">
        <div class="grid_6">
          <h3>Follow Us</h3>
          <div class="socials"> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
          <nav>
            <ul>
              <li><a href="index.html">Home</a></li>
              <li><a href="about-us.html">About Us</a></li>
              <li><a href="menu.html">Menu</a></li>
              <li><a href="portfolio.html">Portfolio</a></li>
              <li><a href="news.html">News</a></li>
              <li class="current"><a href="contacts.html">Contacts</a></li>
            </ul>
          </nav>
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


<footer>
  <div class="container_12">
    <div class="grid_12"> SKART PVT LTD &copy; 2045 | <a href="#">Privacy Policy</a> | Design by: <a href="http://www.facebook.com/skart.bng">SUHA AND SHAILU</a> </div>
    <div class="clear"></div>
  </div>
</footer>
</body>
</html>