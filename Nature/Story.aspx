<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Story.aspx.cs" Inherits="Story" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../PageStyleFile/css/style.css"/>
    <link rel="stylesheet" href="../PageStyleFile/css/tours.css"/>
    <link rel="stylesheet" href="../PageStyleFile/css/layout.css"/>
    <link rel="stylesheet" href="../PageStyleFile/css/popup.css"/>
    <link rel="stylesheet" href="../PageStyleFile/css/respons.css"/>

    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="../PageStyleFile/css/css/all.css"/>
    <script src="JavaScript/JavaScript.js"></script>
    <link rel="shortcut icon" type="image/png" href="./image/nature-logo-removebg-preview.png"/>
    <title> Nuture | Stories </title>
</head>
<body>
      <section class="section-stories" id="">
            <div class="bg-video">
                <video class="bg-video-content" autoplay="autoplay" loop="loop" muted="muted">
                    <source src="../PageStyleFile/video/video-1.mp4" type="video/mp4" />
                    <source src="../PageStyleFile/video/video-1.webm" type="video/webm" />
                    Your browser is not supported!
                </video>
            </div>
            <div class="u-center-text u-margin-bottom-medium">
                <h2 class="heading-secondary">
                    We make people genuinely happy
                </h2>
            </div>
            <div class="row">
                <div class="story">
                    <figure class="story-shape">
                        <img src="../PageStyleFile/image/tourism-person-image-2.jfif" alt="Person on tour" class="story-image" />
                        <figcaption class="story-caption">
                            Mary smith
                        </figcaption>
                    </figure>
                    <div class="story-text">
                        <h3 class="heading-tertiary u-margin-bottom-small">I had the best week ever with my family</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos similique ducimus in iure, eaque officiis et asperiores velit totam commodi recusandae odio expedita sapiente deserunt quas maxime cumque voluptas soluta.Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos similique ducimus in iure, eaque officiis et asperiores velit totam commodi recusandae odio expedita </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="story">
                    <figure class="story-shape">
                        <img src="../PageStyleFile/image/person-image-3.jpg" alt="Person on tour" class="story-image" />
                        <figcaption class="story-caption">
                            Jack wilson
                        </figcaption>
                    </figure>
                    <div class="story-text">
                        <h3 class="heading-tertiary u-margin-bottom-small">WoW! My life is completely defferent now </h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos similique ducimus in iure, eaque officiis et asperiores velit totam commodi recusandae odio expedita sapiente deserunt quas maxime cumque voluptas soluta.Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos similique ducimus in iure, eaque officiis et asperiores velit totam commodi recusandae odio expedita </p>
                    </div>
                </div>
            </div>
            <!--========================== repeted stories================================ -->
          
          <div class="row">
            <div class="story">
                    <figure class="story-shape">
                        <img src="../PageStyleFile/image/feeldbackImage/cidcomment.jpg" alt="Person on tour" class="story-image" />
                        <figcaption class="story-caption">
                            Jonh smith
                        </figcaption>
                    </figure>
                    <div class="story-text">
                        <h3 class="heading-tertiary u-margin-bottom-small">I had the best week ever with my family</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos similique ducimus in iure, eaque officiis et asperiores velit totam commodi recusandae odio expedita sapiente deserunt quas maxime cumque voluptas soluta.Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos similique ducimus in iure, eaque officiis et asperiores velit totam commodi recusandae odio expedita </p>
                    </div>
                </div>
             </div>
         
             <div class="row">
                <div class="story">
                    <figure class="story-shape">
                        <img src="../PageStyleFile/image/feeldbackImage/IMG_8334aa.JPG" alt="Person on tour" class="story-image" />
                        <figcaption class="story-caption">
                            Jamie Gosling
                        </figcaption>
                    </figure>
                    <div class="story-text">
                        <h3 class="heading-tertiary u-margin-bottom-small">WoW! My life is completely defferent now </h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos similique ducimus in iure, eaque officiis et asperiores velit totam commodi recusandae odio expedita sapiente deserunt quas maxime cumque voluptas soluta.Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos similique ducimus in iure, eaque officiis et asperiores velit totam commodi recusandae odio expedita </p>
                    </div>
                </div>
            </div>
           
            <div class="row">
                <div class="story">
                    <figure class="story-shape">
                        <img src="../PageStyleFile/image/feeldbackImage/maxresdefault.JPG" alt="Person on tour" class="story-image" />
                        <figcaption class="story-caption">
                            Aaron McLean
                        </figcaption>
                    </figure>
                    <div class="story-text">
                        <h3 class="heading-tertiary u-margin-bottom-small">WoW! My life is completely defferent now </h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos similique ducimus in iure, eaque officiis et asperiores velit totam commodi recusandae odio expedita sapiente deserunt quas maxime cumque voluptas soluta.Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos similique ducimus in iure, eaque officiis et asperiores velit totam commodi recusandae odio expedita </p>
                    </div>
                </div>
            </div>
          <div style="display: flex; position: absolute; left: 45%;bottom: 100px;margin-top: 0;">
            <div class="u-center-text u-margin-top-big">
                <a href="index.aspx" class="btn-text">back to page &rarr;</a>
            </div>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="u-center-text u-margin-top-big">
                <a href="#" class="btn-text">Read more &rarr;</a>
            </div>
          </div>
        </section>
</body>
</html>
