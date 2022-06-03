<?php
require_once "./../../Assets/Database/DbConfig.php";

if (isset($_POST["Email"]) && $_POST["Email"] !== "") {
  $Query = "INSERT INTO `newsletter` (`Email`) VALUES (?)";
  $Statement = $conn->prepare($Query);
  $Statement->execute([$_POST["Email"]]);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Post</title>
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

        <a href="./../../Pages/PageAbout/PageAbout.php" class="menu_page_about">About</a>

        <a href="./../../Pages/PageContributeNow/PageContributeNow.php" class="menu_page_contribute_now">Contribute Now</a>

        <a href="./../../Pages/PageHiring/PageHiring.php" class="menu_page_hiring">Hiring!</a>

        <a href="./../../Pages/PageContact/PageContact.php" class="menu_page_contact">Contact</a>
      </section>
    </section>
    <!-- End Section Header -->

    <!-- Start Section Content -->
    <section class="section_content_blog_papyrist">
      <section class="section_top_section_content_blog_papyrist">
        <?php
        $PostId = $_GET["PostId"];
        $Query = "SELECT * FROM `posts` WHERE Id = $PostId";
        $Statement = $conn->prepare($Query);
        $Statement->execute();
        $Post = $Statement->fetch();
        ?>
        <section class="section_left_section_top_section_content_blog_papyrist">
          <p class="text_one_section_left_section_top_section_content_blog_papyrist">
            <?= $Post->TimePost ?>
          </p>

          <p class="text_two_section_left_section_top_section_content_blog_papyrist">
            <?= $Post->TitlePost ?>
          </p>

          <p class="text_three_section_left_section_top_section_content_blog_papyrist">
            <?= $Post->ContentPost ?>
          </p>
        </section>

        <section class="section_right_section_top_section_content_blog_papyrist">
          <p class="text_one_section_right_section_top_section_content_blog_papyrist">
            Search
          </p>

          <section class="section_search_box_section_right_section_top_section_content_blog_papyrist">
            <i class="fas fa-magnifying-glass"></i>

            <form action="./../Search/Search.php" method="GET">
              <input type="text" name="TextSearch" placeholder="Search" class="input_search_section_right_section_top_section_content_blog_papyrist" />
            </form>
          </section>

          <p class="text_two_section_right_section_top_section_content_blog_papyrist">
            Latest Posts
          </p>

          <a href="" class="text_three_section_right_section_top_section_content_blog_papyrist">
            Started in India, Amazon Future Engineer Programme
            <span>Sep 30, 2021</span>
          </a>

          <a href="" class="text_four_section_right_section_top_section_content_blog_papyrist">जनCARE-Amrit Grand Challenge Program
            <span>Sep 29, 2021</span>
          </a>

          <a href="" class="text_five_section_right_section_top_section_content_blog_papyrist">World Maritime Day 2021
            <span>Sep 29, 2021</span>
          </a>

          <p class="text_six_section_right_section_top_section_content_blog_papyrist">
            Subscribe to Newsletter
          </p>

          <form method="POST">
            <input type="text" placeholder="Email Address" name="Email" class="input_email_section_right_section_top_section_content_blog_papyrist" />

            <button name="ButtonSubmit" type="submit" class="button_submit_section_right_section_top_section_content_blog_papyrist">
              Subscribe
            </button>
          </form>

          <p class="text_seven_section_right_section_top_section_content_blog_papyrist">
            Follow me
          </p>

          <section class="section_icon_follow_section_right_section_top_section_content_blog_papyrist">
            <i class="fa-brands fa-instagram"></i>

            <i class="fa-brands fa-twitter"></i>
          </section>
        </section>
      </section>

      <section class="section_bottom_section_content_blog_papyrist">
        <section class="section_tags_section_bottom_section_content_blog_papyrist">
          <p>Tags:</p>
          <?php
          $PostId = $_GET["PostId"];
          $Query = "SELECT * FROM `tags` WHERE `PostId` = $PostId";
          $Statement = $conn->prepare($Query);
          $Statement->execute();
          $Tags = $Statement->fetchAll();

          foreach ($Tags as $Tag) {
            if ($Tag !== "") {
          ?>
              <a href="<?= $Tag->SourceTag ?>"><?= $Tag->TextTag ?> ,</a>
          <?php
            } else {
              echo "Not Found";
            }
          }
          ?>
        </section>

        <section class="section_prev_next_post_section_content_blog_papyrist">
          <i class="fas fa-arrow-left"></i>
          <p class="text_prev_section_prev_next_post_section_content_blog_papyrist">
            Previous Post
          </p>

          <p class="text_next_section_prev_next_post_section_content_blog_papyrist">
            Next Post
          </p>
          <i class="fas fa-arrow-right"></i>
        </section>

        <section class="section_post_prev_next_section_content_blog_papyrist">
          <?php
          $PostId = $_GET["PostId"];
          $Query = "SELECT * FROM `posts` WHERE `StatusPost` = 1 AND `Id` = $PostId-1";
          $Statement = $conn->prepare($Query);
          $Statement->execute();
          $Posts = $Statement->fetchAll();

          foreach ($Posts as $Post) {
          ?>
            <section class="section_inner_post_prev_next_section_content_blog_papyrist">
              <a href="./../../Pages/Post/Post.php?PostId=<?= $PostId - 1 ?>">
                <img src="./../../<?= $Post->ImagePost ?>" alt="Image" />
              </a>

              <p class="text_one_section_inner_post_prev_next_section_content_blog_papyrist">
                <?= $Post->TimePost ?>
              </p>

              <p class="text_two_section_inner_post_prev_next_section_content_blog_papyrist">
                <?= $Post->TitlePost ?>
              </p>
            </section>
          <?php } ?>

          <?php
          $PostId = $_GET["PostId"];
          $Query = "SELECT * FROM `posts` WHERE `StatusPost` = 1 AND `Id` = $PostId";
          $Statement = $conn->prepare($Query);
          $Statement->execute();
          $Posts = $Statement->fetchAll();

          foreach ($Posts as $Post) {
          ?>
            <section class="section_inner_post_prev_next_section_content_blog_papyrist">
              <a href="./../../Pages/Post/Post.php?PostId=<?= $PostId ?>">
                <img src="./../../<?= $Post->ImagePost ?>" alt="Image" />
              </a>

              <p class="text_one_section_inner_post_prev_next_section_content_blog_papyrist">
                <?= $Post->TimePost ?>
              </p>

              <p class="text_two_section_inner_post_prev_next_section_content_blog_papyrist">
                <?= $Post->TitlePost ?>
              </p>
            </section>
          <?php } ?>

          <?php
          $PostId = $_GET["PostId"];
          $Query = "SELECT * FROM `posts` WHERE `StatusPost` = 1 AND `Id` = $PostId+1";
          $Statement = $conn->prepare($Query);
          $Statement->execute();
          $Posts = $Statement->fetchAll();

          foreach ($Posts as $Post) {
          ?>
            <section class="section_inner_post_prev_next_section_content_blog_papyrist">
              <a href="./../../Pages/Post/Post.php?PostId=<?= $PostId + 1 ?>">
                <img src="./../../<?= $Post->ImagePost ?>" alt="Image" />
              </a>

              <p class="text_one_section_inner_post_prev_next_section_content_blog_papyrist">
                <?= $Post->TimePost ?>
              </p>

              <p class="text_two_section_inner_post_prev_next_section_content_blog_papyrist">
                <?= $Post->TitlePost ?>
              </p>
            </section>
          <?php } ?>
        </section>
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