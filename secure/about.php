<?php
  require "assets/config/db_con.php";
  require "assets/includes/sessions.php";
  
?>
<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About | Havit NG</title>
    <link rel="icon" href="../assets/img/havit.png">

    <!--icons -->
    <link rel="stylesheet" href="../fontawsome/css/all.css">
    <link rel="stylesheet" href="../fontawsome/webfonts/">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400&display=swap" rel="stylesheet">
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" 
    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- owl carousel-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Customized Bootstrap Stylesheet -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- Template Stylesheet -->
    <link rel="stylesheet" href="assets/css/C.I PINNACLE.css">
</head>

<style>
  body {
    margin: 0;
    font-family: "Heebo",sans-serif;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #d6d3d3;
    background-color: #F3F6F9;
    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}
.line{
    position: relative;
    width: 1%;
    height: 2px;
    margin: 10px 0;
    background-color: rgb(177, 18, 18);
    
}
#priv-content{
      justify-content: space-between;
  }
#priv-content li{
      list-style-type: square;
  }
</style>

<body class="body">
    <!--NAVIGATION-->
    <?php require "assets/includes/headers.php"; echo errorMessage(); echo successMessage(); ?>

    <!--ABOUT-HEAD-->
    <section id="about-head" class="section-p1">
    <div>
      <h2>About Us</h2>
      <p>
      Welcome to Havit NG, your go-to store for accessories and gadgets. We take great pride in providing you with cutting-edge gadgets and accessories that are the pinnacle of quality, innovation, and dependability as the official distributor for Havit Technology in Nigeria.          <br><br>
          Our Journey: <div class="container line"></div> <br>

          We began this thrilling journey a few years ago with the goal of bridging the gap between discerning Nigerian consumers and the respected products of Havit Technology. Since that time, we have worked tirelessly to transform the Nigerian market for gadgets and accessories, and our dedication has not wavered.
          <br><br>
          Our Partnership: <div class="container line"></div> <br>

          We at Havit NG consider it a pleasure to serve as Havit Technology's sole distributor in Nigeria. This collaboration is evidence of both Havit Technology's confidence in us and our commitment to providing excellence. Together, we forge a powerful alliance and collaborate to bring the market unrivaled gadgets.          <br><br>
          Our Products/Services: <div class="container line"></div> <br>

          We carefully select a wide variety of gadgets and accessories to meet the specific needs of our prestigious clientele, all while being driven by a love for perfection. Each gadget demonstrates the superior engineering and technological know-how that are hallmarks of Havit Technology.          <br><br>
          Why Choose Us? <div class="container line"></div> <br>

          <span id="priv-content">
            <li>Exclusive Access: We provide you with exclusive access to the newest and most in-demand Havit Technology goods in Nigeria as the sole distributor.</li>
          <br>
          <li>Uncompromising Quality: Everything we do is driven by our dedication to quality. To fulfill the highest standards, every product is put through thorough testing.</li>
          <br>
          <li>Expertise and Support: Our staff of devoted specialists has a wealth of knowledge and experience, so you can count on receiving the best support and direction possible as you embark on this journey with us.</li>
          <br>
          <li>Customer Satisfaction: Our greatest reward is when you are happy. We work hard to go above and beyond your expectations and give you an unrivaled shopping experience.</li>

          </span> <br>
          Join Us:

          We invite you to join us on this extraordinary journey. See the difference the best Havit Technology products make in your life by discovering them. We appreciate you choosing Havit NG, where quality and innovation come together.


      </p>

        <br><br>
        <p class=" btshopb">Alright then, ready to keep shopping?</p> <br><br>
        <a href="shop"> <button style="color: white;"> Shop Now</button> </a>
    </div>
    
    </section>

    <!--FEATURES
    <section id="features" class="section-p1">
  <div class="fe-box">
    <img src="assets/img/feature/feature1.png" alt="">
    <div id="feature-speedy"><h6>Speedy Delivery</h6></div>
  </div>
  <div class="fe-box">
    <img src="assets/img/feature/feature2.png" alt="">
    <div id="feature-speedy"><h6>Order Online</h6></div>
  </div>
  <div class="fe-box">
    <img src="assets/img/feature/feature3.png" alt="">
    <div id="feature-speedy"><h6>Save Money</h6></div>
  </div>
  <div class="fe-box">
    <img src="assets/img/feature/feature4.png" alt="">
    <div id="feature-h6"><h6>Promotions</h6></div>
  </div>
  <div class="fe-box">
    <img src="assets/img/feature/feature6.png" alt="">
    <div id="feature-speedy"><h6>Best Quality</h6></div>
  </div>
  <div class="fe-box">
    <img src="assets/img/feature/feature5.png" alt="">
    <div id="feature-security"><h6>Security</h6></div>
  </div> -->
  
    </section>

    <!--FOOTER-->
    <?php include_once "assets/includes/footer.php"; ?>

<script src="assets/js/C.I PINNACLE.js"></script>    
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" 
crossorigin="anonymous"></script>
</body>
</html>