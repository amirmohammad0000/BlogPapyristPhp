"use strict";

let SectionHeaderBlogPapyrist = document.querySelector(
  ".section_header_blog_papyrist"
);
let ImageSectionHeaderBlogPapyrist = document.querySelector(
  ".image_section_header_blog_papyrist"
);
let IconSectionImageSectionHeaderBlogPapyrist = document.querySelector(
  ".section_image_section_header_blog_papyrist i"
);
let SectionMenuSectionHeaderBlogPapyrist = document.querySelector(
  ".section_menu_section_header_blog_papyrist"
);

document.addEventListener("scroll", () => {
  if (document.documentElement.scrollTop >= 400) {
    SectionHeaderBlogPapyrist.style.position = "fixed";
    SectionHeaderBlogPapyrist.style.top = "0";
    SectionHeaderBlogPapyrist.style.height = "60px";
    ImageSectionHeaderBlogPapyrist.style.display = "none";
    IconSectionImageSectionHeaderBlogPapyrist.style.top = "20px";
    SectionMenuSectionHeaderBlogPapyrist.style.position = "relative";
    SectionMenuSectionHeaderBlogPapyrist.style.top = "-40px";
    SectionMenuSectionHeaderBlogPapyrist.style.right = "550px";
  } else {
    SectionHeaderBlogPapyrist.style.position = "";
    SectionHeaderBlogPapyrist.style.top = "";
    SectionHeaderBlogPapyrist.style.height = "";
    ImageSectionHeaderBlogPapyrist.style.display = "";
    IconSectionImageSectionHeaderBlogPapyrist.style.top = "";
    SectionMenuSectionHeaderBlogPapyrist.style.position = "";
    SectionMenuSectionHeaderBlogPapyrist.style.top = "";
    SectionMenuSectionHeaderBlogPapyrist.style.right = "";
  }
});
