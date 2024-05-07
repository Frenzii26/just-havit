<style>
.codelink{
  font-size: 14px;
  color: white !important;
}
</style>
<footer class="mt-3 py-5 footer">
  <div class="row container mx-auto pt-5">
    <div class="footer-one col-lg-3 col-md-6 col-12 mb-3">
      <h5 class="pb-2">Featured</h5>
      <ul class="text-uppercase list-unstyled">
        <li><a href="shop">Shop Now</a></li>
        <?php
        $sql = "SELECT * FROM categories ORDER BY _id DESC";
        $query = mysqli_query($connectDB, $sql);
        while ($row = mysqli_fetch_assoc($query)) {
        ?>
          <li><a href="shop?q=<?php echo $row['cat_id']; ?>">
              <?php echo ucwords($row['category_name']); ?>
            </a></li>
        <?php } ?>
      </ul>
    </div>
    <div class="footer-one col-lg-3 col-md-6 col-12 mb-3">
      <h5 class="pb-2">Contact Us</h5>
      <div>
        <h6 class="text-uppercase">Head Office</h6>
        <p>Suite 27, 8b Otigba Street, by Ola Ayeni St, beside Police post, 100001, Ikeja, Lagos</p>
      </div>
      <!-- <div>
                  <h6 class="text-uppercase">Branch Office</h6>
                  <p>House 34 Zone B, Apo Resettlement quaters Abuja</p>
                </div> -->
      <div>
        <h6 class="text-uppercase">Phone</h6>
        <p>0903 582 1779, 0803 246 7550, </p>
      </div>
      <div>
        <h6 class="text-uppercase">Email</h6>
        <p>justhavit27@gmail.com</p>
      </div>
    </div>
    <div class="footer-one col-lg-3 col-md-6 col-12 mb-3">
      <h5 class="pb-2">Our Policies</h5>
      <ul class="text-uppercase list-unstyled">
        <li><a href="privacy">privacy Policy</a></li>
        <li><a href="return policy">Return policy</a></li>
      </ul>
    </div>
    <div class="footer-one col-lg-3 col-md-6 col-12">
    </div>
  </div>

  <div class="copyright mt-5">
    <div class="row  mx-auto ">

      <div class="col-lg-3 col-md-6 col-12 mb-4">
        <img src="assets/img/havit.png" alt="" class="w-50 h-100">
      </div>
      <div class="col-lg-4 col-md-6 col-12">
        <!-- <a href="https://www.facebook.com/" target="_blank" rel="noopener noreferrer" class="foot-i"><i class="fab fa-facebook-f"></i></a> -->
        <!-- <a href="https://www.instagram.com/geevicfoods/" target="_blank" rel="noopener noreferrer"><i class="fab fa-instagram"></i></a> -->
        <a href="https://www.facebook.com/havitngonline?mibextid=ZbWKwL" target="_blank" rel="noopener noreferrer"><i class="fab fa-facebook"></i></a>
        <a href="https://api.whatsapp.com/send?text=Hello Havit NG&phone=+2349035821779" target="_blank" rel="noopener noreferrer" class="foot-i"><i class="fab fa-whatsapp"></i></a>
      </div>
    </div>
  </div>
  <div class="col-lg-4 col-md-6 col-12 text-nowrap mb-2">
        <a target="_blank" class="codelink" href="http://www.codeboat.net">Code Boat © 2023. <br> All Rights Reserved</a>
      </div>
  <!-- Chat icon -->
  <a href="https://api.whatsapp.com/send?text=Hello Havit NG&phone=+2349035821779" target="_blank" rel="noopener noreferrer" class="ourChat fs-1 text-white">
    <i class="fab fa-whatsapp fs-1 text-white "></i>
  </a>
</footer>
<style>
  .ourChat {
    position: fixed !important;
    bottom: 15% !important;
    right: 30px !important;
    text-decoration: none !important;
    z-index: 999999999999999999999999 !important;
    /* font-size: 40px !important; */
    /* border: 1px solid #000000 !important; */
    /* color: #ffffff !important; */
    background-color: rgb(177, 18, 18) !important;
    border-radius: 50% !important;
    width: 70px;
    height: 70px;
    display: grid;
    justify-content: center;
    align-items: center;
  }

  .ourChat:hover {
    background-color: lighten(green, 20%) !important;
  }

  @media (max-width: 290px) {}
</style>