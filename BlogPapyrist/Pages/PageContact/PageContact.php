<?php
require_once "./../../Assets/Database/DbConfig.php";

if (
  isset($_POST["FirstName"]) &&
  $_POST["FirstName"] !== "" &&
  isset($_POST["LastName"]) &&
  $_POST["LastName"] !== "" &&
  isset($_POST["Email"]) &&
  $_POST["Email"] !== "" &&
  isset($_POST["Message"]) &&
  $_POST["Message"] !== ""
) {
  $Query = "INSERT INTO `contact` (`FirstName`, `LastName`, `Email`, `Message`) VALUES (?, ?, ?, ?)";
  $Statement = $conn->prepare($Query);
  $Statement->execute([$_POST["FirstName"], $_POST["LastName"], $_POST["Email"], $_POST["Message"]]);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Contact</title>
  <!-- Start Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" />
  <!-- Start Custom Css -->
  <!-- Start Custom Css -->
  <link rel="stylesheet" href="./Assets/CustomCssJs/Style.css" />
  <!-- End Custom Css -->
</head>

<body>
  <!-- Start Section App -->
  <section class="section_app_blog_papyrist">
    <!-- Start Section Header -->
    <section class="section_header_blog_papyrist">
      <section class="section_image_section_header_blog_papyrist">
        <span></span>

        <img src="./../../Assets/Images/Logo.png" alt="Image" class="image_section_header_blog_papyrist" />

        <i class="fas fa-magnifying-glass"></i>
      </section>

      <section class="section_menu_section_header_blog_papyrist">
        <a href="./../../index.php" class="menu_page_current_affairs">Current Affairs</a>

        <a href="./../../Pages/PageAbout/PageAbout.php" class="menu_page_about">About</a>

        <a href="./../../Pages/PageContributeNow/PageContributeNow.php" class="menu_page_contribute_now">Contribute Now</a>

        <a href="./../../Pages/PageHiring/PageHiring.php" class="menu_page_hiring">Hiring!</a>

        <a href="./PageContact.php" class="active menu_page_contact">Contact</a>
      </section>
    </section>
    <!-- End Section Header -->

    <!-- Start Section Content -->
    <section class="section_content_blog_papyrist">
      <section class="section_left_section_content_blog_papyrist">
        <img src="./../../Assets/Images/Post5.jpg" alt="Image" />
      </section>

      <section class="section_right_section_content_blog_papyrist">
        <p class="text_one_section_right_section_content_blog_papyrist">
          Get in touch
        </p>

        <p class="text_two_section_right_section_content_blog_papyrist">
          For any question you may have, or info you’d like to share about new
          worthy arts and culture events, you can reach us here:
          <a href="https://google.com">google.com</a>
        </p>

        <form action="" method="POST" class="form_section_content_blog_papyrist">
          <section class="section_inner_form_section_content_blog_papyrist">
            <section class="section_left_section_inner_form_section_content_blog_papyrist">
              <label for="FirstName">Name *</label>

              <input type="text" class="input_first_name_section_left_section_inner_form_section_content_blog_papyrist" name="FirstName" id="FirstName" />
              <p>First Name</p>
            </section>

            <section class="section_left_section_inner_form_section_content_blog_papyrist">
              <input type="text" class="input_last_name_section_left_section_inner_form_section_content_blog_papyrist" name="LastName" />
              <p>Last Name</p>
            </section>
          </section>

          <section class="section_two_inner_form_section_content_blog_papyrist">
            <label for="Email">Email *</label>

            <input type="email" class="input_email_section_inner_form_section_content_blog_papyrist" name="Email" id="Email" />
          </section>

          <section class="section_two_inner_form_section_content_blog_papyrist">
            <label for="Message">Message *</label>

            <textarea name="Message" class="text_area_section_inner_form_section_content_blog_papyrist" id="Message" cols="30" rows="10"></textarea>
          </section>

          <section class="section_inner_form_section_content_blog_papyrist">
            <button type="submit" class="section_button_form_section_content_blog_papyrist">
              Submit
            </button>
          </section>
        </form>
      </section>
    </section>
    <!-- End Section Content -->

    <!-- Start Section Footer -->
    <section class="section_footer_blog_papyrist">
      <section class="section_text_header_section_footer_blog_papyrist">
        <section>
          <p>DISCLAIMER</p>

          <div></div>
        </section>

        <section>
          <p>ADDRESS</p>

          <div></div>
        </section>

        <section>
          <p>FOLLOW US</p>

          <div></div>
        </section>
      </section>

      <section class="section_address_header_section_footer_blog_papyrist">
        <p>
          Some photographs have been used/sourced from the internet with
          claim: “May be subject to copyright”. If found objectionable or
          violation of rights by its owner, we shall immediately remove the
          same unconditionally as soon as brought to our notice about its
          original owner/copyright holder.
        </p>

        <p>
          51-52, 3rd Floor, Vikas Marg, Laxmi Nagar P: +91-93116-56789 /
          +91-9555681700
        </p>

        <a href="https://google.com">google.com</a>
      </section>

      <section class="section_copyright_footer_section_footer_blog_papyrist">
        <p>© Copyright 2018 by The Papyrist. All rights reserved.</p>
      </section>
    </section>
    <!-- End Section Footer -->
  </section>
  <!-- End Section App -->
</body>

<section>
  <!-- Start Custom Js -->
  <script src="./Assets/CustomCssJs/Script.js"></script>
  <!-- End Custom Js -->
</section>

</html>