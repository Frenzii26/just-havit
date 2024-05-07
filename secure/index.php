<?php
require "assets/config/db_con.php";
require "assets/includes/sessions.php";
require_once('./vendor/autoload.php');


?>


<!DOCTYPE html>
<html lang="en">


<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home | Havit Nigeria</title>
  <link rel="icon" href="../assets/img/havit.png">

  <!--icons -->
  <link rel="stylesheet" href="../fontawsome/css/all.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400&display=swap" rel="stylesheet">

  <!-- Icon Font Stylesheet -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">


  <!-- Libraries Stylesheet -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> <!-- owl carousel-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <!-- Customized Bootstrap Stylesheet -->
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">

  <!-- Template Stylesheet -->
  <link rel="stylesheet" href="assets/css/C.I PINNACLE.css">
</head>
<style>
  .search {
    width: 100px;
  }

  .btn-outline-primary {
    background-color: #1d1d1d;
    color: aliceblue;
    border-radius: 0px;
  }

  .btn-outline-primary:hover {
    background-color: #575555;
  }

  .fa-search {
    color: aliceblue;

  }

  .c-item {
    height: 480px;
  }

  .c-img {
    height: 100%;
    object-fit: cover !important;
    filter: brightness(0.8);
  }

  @media (max-width:550px) {
    .c-img {
      height: 100%;
      object-fit: cover;
      filter: brightness(0.8);
    }
  }

  .carousel-control-prev,
  .carousel-control-next:hover {
    background-color: none;
  }
</style>

<body class="body">

  <!--NAVIGATION-->
  <?php require "assets/includes/headers.php";
  echo errorMessage();
  echo successMessage(); ?>

  <!--HOME-->
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="assets/img/home/home4.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="assets/img/home/home2.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="assets/img/home/home7.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="assets/img/home/home3.jpg" class="d-block w-100" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

  <!--Categories-->
  <section class="my-3 text-center container">
    <h3 class="h22">Shop by Category</h3>
  </section>
  <!--NEW-->
  <section id="new" class="w-100">
    <div class="row p-0 m-0">
      <?php
      $sql = "SELECT * FROM categories ORDER BY _id DESC";
      $query = mysqli_query($connectDB, $sql);
      while ($row = mysqli_fetch_assoc($query)) {
      ?>
        <div class="col-lg-4 col-md-6 col-12" id="catIndex">
          <div class="position-relative" id="catIndex2">
            <img class="img-fluid h-100" src="assets/img/category/<?php echo $row['category_image'] ?>" alt="">
            <div class="position-absolute w-100 text-center top-50 p-2" style="background-color: rgba(0,0,0,.3);">
              <h2 class="text-white"><?php echo ucwords($row['category_name']); ?></h2>
              <a href="shop?q=<?php echo $row['cat_id']; ?>"><button class="text-uppercase text-white">Shop Now</button></a>
            </div>
          </div>

        </div>
      <?php } ?>
    </div>
    <style>
      #catIndex img {
        height: 250px !important;
        width: 100%;
        padding: 10px !important;
      }

      @media (min-width:800px) {
        #catIndex {
          height: 300px !important;
        }

        #catIndex img {
          height: 100%;
          object-fit: cover;
          padding: 10px;
        }
      }

      #catIndex img {
        height: 100%;
        padding: 10px;
        border-radius: 20px;
      }

      @media (max-width: 768px) and (min-width: 430px) {
        #catIndex img {
          object-fit: cover;
          border-radius: 20px;
        }
      }
    </style>
  </section>


  <!--FEATURED-->
  <section id="featured-p" class="my-5 pb-5">
    <div class="container text-center mt-5 py-5">
      <a href="shop">
        <h3>Explore some of our products</h3>
      </a>
    </div>
    <div class="row mx-auto container-fluid">
      <?php
      $sql = "SELECT * FROM tbl_products ORDER BY _id DESC LIMIT 0,50";
      $query = mysqli_query($connectDB, $sql);
      while ($row = mysqli_fetch_assoc($query)) {
      ?>
        <div class="product text-center col-lg-3 col-md-6 col-12">
          <img style="border-radius: 20px;" onclick="window.location.href='sproduct?q=<?php echo $row['product_id']; ?>';" class="img-fluid mb-3" src="assets/img/products/<?php echo getName($connectDB, "product_image", "product_image", "product_id", $row['product_id']); ?>" alt="">

          <h5 class="p-name"><?php echo substr(ucwords($row['product_name']), 0, 40) . ''; ?></h5>
          <h4 class="p-price">₦<?php echo number_format($row['price'], 2, '.', ',') ?></h4>
          <!-- <a href="checkout?q=<?php echo $row['product_id'] ?>">
                    <button class="buy-btn"> Buy Now </button> 
                </a> -->
          <a href="assets/config/order_process?addCart=<?php echo $row['product_id'] ?>">
            <button class="buy-btn"> Add to Cart </button>
          </a>
        </div>
      <?php } ?>
    </div>
  </section>

  <!--FOOTER-->
  <?php include_once "assets/includes/footer.php"; ?>

  <!-- JavaScript Libraries -->
  <script src="assets/js/C.I PINNACLE.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>

</html>