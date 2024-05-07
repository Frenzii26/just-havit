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
  <title>Recover-Password | Havit Nigeria</title>
  <link rel="icon" href="../assets/img/havit.png">

  <!--icons -->
  <link rel="stylesheet" href="../fontawsome/css/all.css">
  <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400&display=swap" rel="stylesheet">
  <!-- Icon Font Stylesheet -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

  <!-- Libraries Stylesheet -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

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
  body,
  html {
    height: 100%;
    background-color: rgb(177, 18, 18);
    overflow: hidden !important;
  }

  a:hover {
    text-decoration: none !important;
  }
</style>

<body>
  <!--NAVIGATION-->

  <!--FORMS-->
  <a href="index"> <button style="color: white;" class=" log-button">Home</button> </a>
  <?php
  echo errorMessage();
  echo successMessage();
  ?>
  <div class="bg-text">
    <section class="log-cont forms">

    <div class="form login">
          <div class="form-content">
            <header>Forgotten password</header>
            <p>
                Please enter the email address you used to sign up to the website, then we will assist you in recovering your 
                password.
            </p>

            <form action="assets/config/reset_config" method="post">
              <div class="field input-field">
                <input type="email" name="email" placeholder="Enter your email address..." class="input">
              </div>

              <div class="field button-field">
                <button type="submit" name="sendMail">Recover password</button>
              </div>
            </form>
          </div>
        </div>
      
    </section>
  </div>

  <script src="assets/js/C.I PINNACLE.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

  <script>
    const forms = document.querySelector(".forms"),
      pwShowHide = document.querySelectorAll(".eye-icon"),
      links = document.querySelectorAll(".link");

    pwShowHide.forEach(eyeIcon => {
      eyeIcon.addEventListener("click", () => {
        let pwFields = eyeIcon.parentElement.parentElement.querySelectorAll(".password");

        pwFields.forEach(password => {
          if (password.type === "password") {
            password.type = "text";
            eyeIcon.classList.replace("bx-hide", "bx-show");
            return;
          }
          password.type = "password";
          eyeIcon.classList.replace("bx-show", "bx-hide");
        })

      })
    })

    links.forEach(link => {
      link.addEventListener("click", e => {
        e.preventDefault(); //prevent from submit
        forms.classList.toggle("show-signup");
      })
    })
  </script>

</body>

</html>