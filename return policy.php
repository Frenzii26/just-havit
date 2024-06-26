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
    <meta name"description" content"Discover Havit Nigeria's refund policy, designed to facilitate hassle-free returns for our esteemed customers.">
    <title>Refunds & Returns Policy | Havit NG</title>
    <link rel="icon" href="../assets/img/havit.png">
    
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-9464789650939584"
     crossorigin="anonymous"></script>

    <!--icons -->
    <link rel="stylesheet" href="../fontawsome/css/all.css">
    <link rel="stylesheet" href="../fontawsome/webfonts/">
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>

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

<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-PGJMS0E7PB"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-PGJMS0E7PB');
</script>

<style>
  body{
    color: #E3E6F3;
  }
  span{
    color: #E3E6F3;
    font-size: 15px;
  }
  .privacy-h{
  
}
.priv-h1{
    padding-left: 10px !important;
}
.privacy-h h1{
    
}
.priv-div{
  font-weight: bold;
}
#priv-content{
    justify-content: space-between;
}
#priv-content a{
    color: black;
}
#priv-content a:hover{
    color: coral;
    text-decoration: none;
}
#priv-content li{
    list-style-type: square;
}
#priv-body .ques{
    color: coral;
}
.privacy-h{
    
  }
  .priv-h1{
      padding-left: 270px;
  }
  .privacy-h h1{
      
  }
  #priv-content a{
      color: black;
  }
  #priv-content a:hover{
      color: coral;
      text-decoration: none;
  }
  #priv-content li{
      list-style-type: square;
  }
  #priv-body .ques{
      color: coral;
  }
  .ques{
    padding-top: 14px;
    font-size: 18px;
  }
  .line{
    position: relative;
    width: 1%;
    height: 2px;
    margin: 10px 0;
    background-color: rgb(177, 18, 18);
}
.line2{
    position: relative;
    width: 100%;
    height: 2px;
    margin: 36px 0;
    background-color: rgb(177, 18, 18);
    
}
@media (max-width:950px) {
  #priv-content{
        justify-content: space-between;
    }
}
@media (max-width:550px) {
  #priv-content {
    width: 100% !important;
    justify-content: space-between;
    margin: 0px !important;
    padding: 20px !important;
    border: none !important;
}
}
</style>
<body class="body">
      <!--NAVIGATION-->
      <?php require "assets/includes/headers.php"; echo errorMessage(); echo successMessage(); ?>

      <!--HEAD-->
      <section id="privacy-h" class="container pt-3">
      <h1 class="priv-h1">Refund Policy</h1>
      <div class="container line2"></div>
      <div id="priv-content">
            <li><span class="priv-div">Purpose</span> :
            At Havit NG, we cherish our clients and work hard to deliver superior goods. The terms and conditions for refunds or exchanges for purchases made through our website or in-store are outlined in our refund policy. Before making a purchase, please carefully read our policy. You consent to abide by the terms and conditions stated in this policy by conducting business with us.</li>
            <div class="container line"></div>
          <br>
          <li><span class="priv-div">Eligibility for Refunds</span> :
            Within three days after the date of purchase, we accept refund claims for most of our products, provided that the following criteria are met: The product must be undamaged, in its original packing and condition, and include all original tags. It is necessary to present proof of purchase, such as an order number or receipt.</li>
            <div class="container line"></div>
          <br>
          <li><span class="priv-div">How to Request a Refund</span> :
          Contact our customer service department at <span class="priv-div">0903 582 1779</span> or <span class="priv-div">justhavit27@gmail.com</span> to make a refund request. Please be sure to include all essential information, such as a copy of your receipt or other proof of purchase and a brief justification for the return. Within two business days, our staff will review your request and get back to you.</li>
              <div class="container line"></div>
          <br>
          <li><span class="priv-div">Shipping Costs</span> :
            Unless the refund is due to an error on our part (e.g., incorrect item shipped, defective product), shipping costs are non-refundable, and you will be responsible for paying the shipping costs for returning the item.</li>
            <div class="container line"></div>
            <br>
            <li>
            <span class="priv-div">Contact Us</span> :
            If you have any questions or concerns about our refund policy, please contact our customer support team via <span class="priv-div">0903 582 1779</span> or <span class="priv-div">justhavit27@gmail.com</span>.
            </li>
          </div><br>
          Alright then, ready to keep shopping? <br>
              <a href="shop"> <button style="color: white;"> Shop Now</button> </a>
      </section>
      <!--BODY-->

      <!--FOOTER-->
      <?php include_once "assets/includes/footer.php"; ?>
      
<!-- JavaScript Libraries -->
<script src="assets/js/C.I PINNACLE.js"></script>        
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" 
crossorigin="anonymous"></script>
</body>
</html>