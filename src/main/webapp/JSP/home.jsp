<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="home.css" />
    <link rel="icon" type="images/x-icon" href="Images/sx.png" />
<title>ShopX-Home</title>
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


           <header id="header">
      <div id="logo">
        <span class="shop">Shop</span><span class="x">X</span>
        <span>Shop Everything</span>
      </div>

      <div>
        <ul id="navbar">
        
          <a href="#" id="close"><i class="fa-solid fa-xmark"></i></a>
          <li><a class="active" href="/ShopX/src/main/webapp/JSP/home.jsp">Home</a></li>
          <li><a href="">Shop</a></li>
          <li><a href="">ShopXpay</a></li>
          <li><a href="" class="help">Contact Us</a></li>
          
        
          
         
          <li id="bag"> <a href=""><i  class="fa-solid fa-cart-shopping"></i></a></li>
            <% 
            String username = (String) session.getAttribute("username");
            if (username == null) {
                response.sendRedirect("login.jsp"); // Redirect to login page if not logged in
            }
            
            %>
           <li class="drop" style="position:"relative"><a href="#" ><%= username %><i style="padding:0px 5px"
               class="fa-solid fa-user"></i></a>
               
               <ul id="drop-down">
               <li><a href="/ShopX/src/main/webapp/JSP/account.jsp">Account Info</a></li>
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
    
    
        <section id="hero">
      <h4>500 off on your first order</h4>
      <h2>Super Deals</h2>
      <h1>On all products</h1>
      <p>Save more with coupons and up to 70% off</p>
      <button>Explore Now</button>
    </section>

    <section id="features">
      <div class="category">
        <figure>
          <img src="Images/clothing.jpg" alt="" />
          <figcaption>Clothing</figcaption>
        </figure>
      </div>

      <div class="category">
        <figure>
          <img src="Images/toys.jpg" alt="" />
          <figcaption>Toys</figcaption>
        </figure>
      </div>

      <div class="category">
        <figure>
          <img src="Images/bills.jpg" alt="" />
          <figcaption>Bills and Recharge</figcaption>
        </figure>
      </div>

      <div class="category">
        <figure>
          <img src="Images/gym.jpg" alt="" />
          <figcaption>Gym</figcaption>
        </figure>
      </div>

      <div class="category">
        <figure>
          <img src="Images/decoration.jpg" alt="" />
          <figcaption>Decoration</figcaption>
        </figure>
      </div>

      <div class="category">
        <figure>
          <img src="Images/gaming.jpg" alt="" />
          <figcaption>Gaming</figcaption>
        </figure>
      </div>

      <div class="category">
        <figure>
          <img src="Images/Electronics.jpg" alt="" />
          <figcaption>Electronics</figcaption>
        </figure>
      </div>

      <div class="category">
        <figure>
          <img src="Images/deals.jpg" alt="" />
          <figcaption>Deals and Promotions</figcaption>
        </figure>
      </div>

      <div class="category">
        <figure>
          <img src="Images/main-poster.jpg" alt="" />
          <figcaption>Easy Returns</figcaption>
        </figure>
      </div>

      <div class="category">
        <figure>
          <img src="Images/food.jpg" alt="" />
          <figcaption>Food Items</figcaption>
        </figure>
      </div>

      <div class="category">
        <figure>
          <img src="Images/books.jpg" alt="" />
          <figcaption>Books</figcaption>
        </figure>
      </div>

      <div class="category">
        <figure>
          <img src="Images/smartwatch.jpg" alt="" />
          <figcaption>SmartWatches</figcaption>
        </figure>
      </div>

      <div class="category">
        <figure>
          <img src="Images/gym.jpg" alt="" />
          <figcaption>gym</figcaption>
        </figure>
      </div>

      <div class="category">
        <figure>
          <img src="Images/furniture.jpg" alt="" />
          <figcaption>Furniture</figcaption>
        </figure>
      </div>
    </section>

    <section id="container">
      <h2>Explore top offers in mobile accessories</h2>
      <div id="mobile-sec">
        <div class="mob">
          <figure>
            <img src="Images/Mobiles/headphones.jpg" alt="" />
            <figcaption>HeadPhones</figcaption>
            <figcaption class="off">40% off</figcaption>
          </figure>
        </div>

        <div class="mob">
          <figure>
            <img src="Images/Mobiles/Mobile Covers.jpg" alt="" />
            <figcaption>Mobile Covers</figcaption>
            <figcaption class="off">30% off</figcaption>
          </figure>
        </div>

        <div class="mob">
          <figure>
            <img src="Images/Mobiles/powerbank.jpg" alt="" />
            <figcaption>PowerBank</figcaption>
            <figcaption class="off">40% off</figcaption>
          </figure>
        </div>

        <div class="mob">
          <figure>
            <img src="Images/Mobiles/USB Cable.jpg" alt="" />
            <figcaption>USB Cable</figcaption>
            <figcaption class="off">60% off</figcaption>
          </figure>
        </div>
      </div>
    </section>

    <section id="repair">
      <h4>Repair Service</h4>
      <h2>up to <span>65% off</span>- All t-shirt & Accesories</h2>
      <button>Explore More</button>
    </section>

    <section id="offers">
      <div class="banner-box banner-box1">
        <h4>crazy deals</h4>
        <h2>buy 1 get 1 free</h2>
        <span> tne best traditional dress is on sale</span>
        <button>Learn More</button>
      </div>

      <div class="banner-box banner-box2">
        <h4>crazy deals</h4>
        <span> best offers on smart tv</span>
        <button>Learn More</button>
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

    <!-- navbar js -->
    <script src="bar.js"></script>
    
    
    
      <!-- Font awesome for icons -->
    <script
      src="https://kit.fontawesome.com/f5117fbc33.js"
      crossorigin="anonymous"
    ></script>
</body>
</html>