<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="home.css" />
<link rel="stylesheet" href="account.css" />
<link rel="icon" type="images/x-icon" href="Images/sx.png" />
<title>ShopXAccount</title>
<style>
/*  JSP HOME STYLE  */
#drop-down {
    display: none;
    position: absolute;
    top: 100%;
    left: 0;
    background: #fffdfd;
    width: 149px;
    padding: 9px;
}
#drop-down li{
margin-bottom:5px;
}
.drop:hover #drop-down {
  display: block;
}

</style>
</head>
<body>


            <% 
            String username = (String) session.getAttribute("username");
            
            if (username == null) {
                response.sendRedirect("login.jsp"); // Redirect to login page if not logged in
            }
            String email = (String) session.getAttribute("email");
            String phone_number = (String) session.getAttribute("phone_number");
            
            %>
            

           <header id="header">
      <div id="logo">
        <span class="shop">Shop</span><span class="x">X</span>
        <span>Shop Everything</span>
      </div>

      <div>
        <ul id="navbar">
        
          <a href="#" id="close"><i class="fa-solid fa-xmark"></i></a>
          <li><a  href="/ShopX/src/main/webapp/JSP/home.jsp">Home</a></li>
          <li><a href="">Shop</a></li>
          <li><a href="">ShopXpay</a></li>
          <li><a href="" class="help">Contact Us</a></li>
          
        
          
         
          <li id="bag"> <a href=""><i  class="fa-solid fa-cart-shopping"></i></a></li>
           
           <li class="drop" style="position:"relative"><a href="#" class="active"><%= username %><i style="padding:0px 5px"
               class="fa-solid fa-user"></i></a>
               
               <ul id="drop-down">
               <li><a href="/ShopX/src/main/webapp/JSP/account.jsp" class="active">Account Info</a></li>
               <li><a href="logout">Logout</a></li>
               </ul>
               
               
               
               </li>
          
        </ul>
        
      </div>

      <div id="mobile">
        <i class="fa-solid fa-cart-shopping"></i>
        <i id="bar" class="fa-solid fa-bars"></i>
      </div>
    </header>
            <section id="data">
            <div class="col-3">
             <h3>Your Account</h3>
             <p><strong>Name - </strong><%= username %></p>
             <p><strong>Email - </strong><%= email %></p>
             <p><strong>Phone Number - </strong><%= phone_number %></p>
            </div>
             <div class="col-3">
             <h3>Want to update Account ?</h3>
             <a>Update Phone Number</a>
             <a>Update Password</a>
            </div>
           
            </section>
            
            <section id="pic-data">
                     <div class="boxes">
                       <img alt="" src="Images/Account/delivery1.png"/>
                       <p>Your Orders</p>
                     </div>
                     
                      <div class="boxes">
                       <img alt="" src="Images/Account/prime.png" />
                       <p>ShopX Plus Membership</p>
                     </div>
                      <div class="boxes">
                       <img alt="" src="Images/Account/location.png"/>
                       <p>Edit Your Address</p>
                     </div>
                      <div class="boxes">
                       <img alt="" src="Images/Account/payment.png" />
                       <p>Add Payment Method</p>
                     </div>
                      <div class="boxes">
                       <img alt="" src="Images/Account/wallet.png" />
                       <p>ShopX Pay Balance</p>
                     </div>
                     
                    
            </section>
            
            <section id="content">
            
             <div class="content-colums">
             <h3>Digital Content & Devices</h3>
             <li><a>Apps and more</a></li>
             <li><a>Content and devices</a></li>
             <li><a>Digital gifts you've received</a></li>
             </div>
             
              <div class="content-colums">
               <h3>Email alerts, messages, and ads</h3>
               <li><a>Advertising preferences</a></li>
               <li><a>Communication preferences</a></li>
               <li><a>SMS alert preferences</a></li>
               <li><a>Message center</a></li>
               <li><a>Deals Notifications</a></li>
              
              </div>
               <div class="content-colums">
               <h3>More ways to pay</h3>
               <li><a>Default Purchase Settings</a></li>
               <li><a>ShopX Pay</a></li>
               <li><a>Coupons</a></li>
               
               </div>
                 
               <div class="content-colums">
               <h3>Other accounts</h3>
               <li><a>Account Linking</a></li>
               <li><a>Seller account</a></li>
               <li><a>ShopX Web Services</a></li>
               
               </div>
                 
               <div class="content-colums">
               <h3>Ordering and shopping preferences</h3>
               <li><a>Leave packaging feedback</a></li>
               <li><a>Manage saved IDs</a></li>
               <li><a>Language settings</a></li>
               <li><a>Profile</a></li>
               
               </div>
                
               <div class="content-colums">
               <h3>Subscriptions</h3>
               <li><a>Email</a></li>
               <li><a>Memberships & Subscriptions</a></li>
               </div>
               
                <div class="content-colums">
               <h3>Data and Privacy</h3>
               <li><a>Request Your Information</a></li>
               <li><a>Close Your Amazon Account</a></li>
               <li><a>Privacy Notice</a></li>
               
               </div>
            
            </section>
            
             <footer>
      <div class="col">
        <div><span id="shop">Shop</span><span id="x">X</span></div>

        <h4>contact</h4>
        <p><strong>Address :</strong>Pen raigad 402107 near Bus stand</p>
        <p>Follow us</p>
        <p>
          <i class="fa-brands fa-instagram"></i
          ><i class="fa-brands fa-x-twitter"></i
          ><i class="fa-brands fa-facebook"></i
          ><i class="fa-brands fa-youtube"></i>
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

    <!-- Font awesome for icons -->
    <script
      src="https://kit.fontawesome.com/f5117fbc33.js"
      crossorigin="anonymous"
    ></script>
</body>
</html>