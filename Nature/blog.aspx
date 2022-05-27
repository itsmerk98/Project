<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page/Navigation_Footer.master" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Nature | Blog.
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <link href="PageStyleFile/css/popupBox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="myModal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <span class="close">&times;</span>
            <div class="mc-left">
                <video class="video-contral" autoplay="autoplay" muted loop>
                    <source src="./video/bfvideo.mp4" type="video/mp4">
                    Your browser does not support the video tag.
                </video>
            </div>
            <div class="mc-right">
                <div class="package-detail">
                    <div class="container">
                        <div class="mySlides">
                            <div class="numbertext">1 / 6</div>
                            <img class="image-size" src="PageStyleFile/image/card-picture-1.jpg" style="width: 100%">
                        </div>

                        <div class="mySlides">
                            <div class="numbertext">2 / 6</div>
                            <img class="image-size" src="PageStyleFile/image/card-picture-2.jpg" style="width: 100%">
                        </div>

                        <div class="mySlides">
                            <div class="numbertext">3 / 6</div>
                            <img class="image-size" src="PageStyleFile/image/card-picture-1.jpg" style="width: 100%">
                        </div>

                        <div class="mySlides">
                            <div class="numbertext">4 / 6</div>
                            <img class="image-size" src="PageStyleFile/image/Mountains.jfif" style="width: 100%">
                        </div>

                        <div class="mySlides">
                            <div class="numbertext">5 / 6</div>
                            <img class="image-size" src="PageStyleFile/image/person-image-2.jpg" style="width: 100%">
                        </div>

                        <div class="mySlides">
                            <div class="numbertext">6 / 6</div>
                            <img class="image-size" src="PageStyleFile/image/person-image-3.jpg" style="width: 100%">
                        </div>

                        <a class="prev" onclick="plusSlides(-1)">❮</a>
                        <a class="next" onclick="plusSlides(1)">❯</a>

                        <div class="caption-container">
                            <p id="caption"></p>
                        </div>

                        <div class="row">
                            <div class="column">
                                <img class="demo cursor bottom-image-size" src="PageStyleFile/image/card-picture-1.jpg" style="width: 100%" onclick="currentSlide(1)" alt="The Woods">
                            </div>
                            <div class="column">
                                <img class="demo cursor bottom-image-size" src="PageStyleFile/image/card-picture-2.jpg" style="width: 100%" onclick="currentSlide(2)" alt="Cinque Terre">
                            </div>
                            <div class="column">
                                <img class="demo cursor bottom-image-size" src="PageStyleFile/image/card-picture-1.jpg" style="width: 100%" onclick="currentSlide(3)" alt="Mountains and fjords">
                            </div>
                            <div class="column">
                                <img class="demo cursor bottom-image-size" src="PageStyleFile/image/Mountains.jfif" style="width: 100%" onclick="currentSlide(4)" alt="Northern Lights">
                            </div>
                            <div class="column">
                                <img class="demo cursor bottom-image-size" src="PageStyleFile/image/person-image-2.jpg" style="width: 100%" onclick="currentSlide(5)" alt="Nature and sunrise">
                            </div>
                            <div class="column">
                                <img class="demo cursor bottom-image-size" src="PageStyleFile/image/person-image-3.jpg" style="width: 100%" onclick="currentSlide(6)" alt="Snowy Mountains">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="PageStyleFile/JavaScript/javascript_box.js"></script>
</asp:Content>

