<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="icon" type="images/x-icon" href="Images/sx.png" />
  <link rel="stylesheet" href="home.css">
  <link rel="stylesheet" href="login.css">
  <link href='https://unpkg.com/css.gg@2.0.0/icons/css/eye-alt.css' rel='stylesheet'>
  <title>ShopX sign in</title>
</head>
<body>
  <header id="header">
    <div id="logo" class="loginlogo">
      <span class="shop">Shop</span><span class="x">X</span>
      <span>Shop Everything</span>
    </div>
  </header>

  <section id="login-sec">
    <div id="container2">
      <h1>Sign in</h1>
      <form  action="login" method="post" id="login-form">
        <div class="row">
          <label for="phone">Enter Phone Number</label>
          <input type="text" id="phone" name="phone">
        </div>

        <div class="row pass-container">
          <label for="pass">Enter Password</label>
          <input type="password" id="pass" name="pass">
        </div>

        <div class="row">
          <input type="submit" onclick="">
      
        <div id="fail" style="display: none; color: red; text-align: center;">Login Failed: Enter Data Correctly</div>


      </form>
      <div class="links">
        <a href="">forgot password</a>
        <a href="">privacy policy</a>
      </div>

      <div id="new2shopx">
        <p>New to ShopX</p>
        <button onclick="window.location.href='register.html'">Create Account</button>
      </div>

    </div>


  </section>


  <footer>
    <div class="col">
      <div><span id="shop">Shop</span><span id="x">X</span></div>

      <h4>contact</h4>
      <p><strong>Address :</strong>Pen raigad 402107 near Bus stand</p>
      <p>Follow us</p>
      <p>
        <i class="fa-brands fa-instagram"></i><i class="fa-brands fa-x-twitter"></i><i
          class="fa-brands fa-facebook"></i><i class="fa-brands fa-youtube"></i>
      </p>
    </div>

    <div class="col">
      <h4>About</h4>
      <a href="#">about us</a>
      <a href="#">Delivery information</a>
      <a href="#">Privacy Policy</a>
      <a href="#">terms & condition</a>
      <a href="#">contact us</a>
    </div>

    <div class="col">
      <h4>My Account</h4>
      <a href="#">Sign in</a>
      <a href="#">view Cart</a>
      <a href="#">WishList</a>
      <a href="#">Track my Order</a>
      <a href="#">help</a>
    </div>

    <div class="col col2">
      <h4>Install app</h4>
      <p>from app store or google playstore</p>
      <div>
        <a href="#"><img src="Images/appstore.png" alt="" /></a>
        <a href="#"><img src="Images/playstore.png" alt="" /></a>
      </div>

      <p>secured payment gateway</p>
      <div id="payment"><a href=""><img src="Images/paymentgatway.png" alt=""></a></div>

    </div>

    <div class="copyright">
      <i class="fa-regular fa-copyright"></i>2023 ShopX pvt ltd
    </div>
  </footer>









 

  <script src="bar.js"></script>
  <!-- login js -->
  <script src="login.js"></script>
</body>
</html>