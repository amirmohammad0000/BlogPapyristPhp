<?php
require_once("./../../Assets/Database/DbConfig.php");
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Search</title>
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
        <a href="./../../index.php" class="active menu_page_current_affairs">Current Affairs</a>

        <a href="./../PageAbout/PageAbout.php" class="menu_page_about">About</a>

        <a href="./../PageContributeNow/PageContributeNow.php" class="menu_page_contribute_now">Contribute Now</a>

        <a href="./../PageHiring/PageHiring.php" class="menu_page_hiring">Hiring!</a>

        <a href="./../PageContact/PageContact.php" class="menu_page_contact">Contact</a>
      </section>
    </section>
    <!-- End Section Header -->

    <!-- Start Section Content -->
    <section class="section_content_blog_papyrist">
      <section class="section_posts_content_blog_papyrist">
        <?php
        $TextSearch = $_REQUEST["TextSearch"];
        if ($TextSearch !== "" && isset($_REQUEST["TextSearch"])) {
          $Query = "SELECT * FROM `posts` WHERE `StatusPost` = 1 AND `TitlePost` LIKE '%$TextSearch%'";
          $Statement = $conn->prepare($Query);
          $Statement->execute();
          $Posts = $Statement->fetchAll();

          foreach ($Posts as $Post) {
            if ($Post !== "" && $Post !== "undefined" && $Post !== null) {
        ?>
              <section class="section_post_section_posts_content_blog_papyrist">
                <a href="./../Post/Post.php?PostId=<?= $Post->Id ?>">
                  <img src="./../../<?= $Post->ImagePost ?>" alt="Post" class="image_section_post_section_posts_content_blog_papyrist" />
                </a>

                <p class="text_time_section_post_section_posts_content_blog_papyrist">
                  <?= $Post->TimePost ?>
                </p>

                <a href="./../../Post/Post.php?PostId=<?= $Post->Id ?>" class="text_title_section_post_section_posts_content_blog_papyrist">
                  <?= $Post->TitlePost ?>
                </a>

                <p class="text_content_section_post_section_posts_content_blog_papyrist">
                  <?= $Post->ContentPost ?>
                </p>

                <section class="section_button_section_post_section_posts_content_blog_papyrist">
                  <a href="./../Post/Post.php?PostId=<?= $Post->Id ?>">Read More</a>
                </section>
              </section>
        <?php
            }
          }
        }
        ?>
      </section>

      <section class="section_number_pages_content_blog_papyrist">
        <i class="fas fa-arrow-left"></i>

        <section class="section_number_section_number_pages_content_blog_papyrist"></section>

        <i class="fas fa-arrow-right"></i>
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