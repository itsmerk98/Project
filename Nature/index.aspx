<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../PageStyleFile/css/style.css" />
    <link rel="stylesheet" href="../PageStyleFile/css/tours.css" />
    <link rel="stylesheet" href="../PageStyleFile/css/layout.css" />
    <link rel="stylesheet" href="../PageStyleFile/css/popup.css" />
    <link rel="stylesheet" href="../PageStyleFile/css/respons.css" />
    <link rel="stylesheet" href="../PageStyleFile/css/navigation.css" />
    <link rel="stylesheet" href="../PageStyleFile/css/services.css" />
    <link rel="stylesheet" href="../PageStyleFile/css/dropdown.css" />
    <link rel="stylesheet" href="../PageStyleFile/css/pageLoader.css" />

    <link href="fontawesome-free-6.0.0-web/fontawesome-free-6.0.0-web/css/all.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="../PageStyleFile/css/css/all.css" />
    <script src="JavaScript/JavaScript.js"></script>
    <link rel="shortcut icon" type="image/png" href="./image/nature-logo-removebg-preview.png" />
    <title>Nuture | Exciting tours for adventurous people </title>
</head>
<body>
    <%-- --------------PageLoader section-------------------- --%>


    <div class="loader"></div>


    <!--------------------------this is navigation section------------------------->

    <section class="navigation">

        <!--<input type="checkbox" class="navigation-checkbox" id="navi-toggle"/>
        <label for="navi-toggle" class="navigation-button">
            <span class="navigation-icon">&nbsp;</span>
        </label>
        <div class="navigation-background">&nbsp;</div>
        <nav class="navigation-nav">
            <ul class="navigation-list">
                <li class="navigation-item"><a href="About.aspx" class="navigation-link"><span>01</span> Natous </a></li>
                <li class="navigation-item"><a href="#section-features" class="navigation-link"><span>02</span>Your benfits </a></li>
                <li class="navigation-item"><a href="Tours.aspx" class="navigation-link"><span>03</span>Popular tours</a></li>
                <li class="navigation-item"><a href="Story.aspx" class="navigation-link"><span>04</span>Stories</a></li>
                <li class="navigation-item"><a href="Tours.aspx" class="navigation-link"><span>05</span>Book now</a></li>
            </ul>
        </nav>-->
    </section>
    <!-- ************||Header section||***************-->
    <header class="header">
        <div class="homePage" id="homePage">
            <nav class="menu-container">
                <!-- burger menu -->
                <input type="checkbox" aria-label="Toggle menu" />
                <span></span>
                <span></span>
                <span></span>

                <!-- logo -->
                <a href="#" class="menu-logo">
                    <img src="../PageStyleFile/image/nature-logo-removebg-preview.png" alt="Logo-image" class="logo" />
                </a>

                <!-- menu items -->
                <form runat="server" class="menu">
                    <ul>
                        <!--<li>
                      <a href="index.aspx">Natous</a>
                    </li>-->
                        <li>
                            <%--<a href="#section-about">Your benfits</a>--%>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False">Your benfits</asp:LinkButton>
                        </li>
                        <li>
                            <%--<a href="#section-tours">Popular tours</a>--%>
                            <asp:LinkButton ID="LinkButton2" runat="server">Popular tours</asp:LinkButton>
                        </li>
                        <li>
                            <%--<a href="#section-stories">Stories</a>--%>
                            <asp:LinkButton ID="LinkButton3" runat="server">Stories</asp:LinkButton>
                            <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
                        </li>
                        <li>
                            <asp:HyperLink ID="HyperLink1" runat="server">Blog.</asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="HyperLink2" runat="server">Places</asp:HyperLink>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <%--<a href="signUp.aspx">Sign up</a>--%>
                            <asp:LinkButton ID="SignUp" runat="server" Visible="true" PostBackUrl="~/signUp.aspx"><i class="fa-solid fa-user-plus"></i>&nbsp;&nbsp;SignUp</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="Login" runat="server" Visible="true" PostBackUrl="~/login.aspx"><i class="fa-solid fa-user-large"></i>&nbsp;&nbsp;Login</asp:LinkButton>

                        </li>
                        <div class="dropdown">
                            <script src="./PageStyleFile/JavaScript/dropdown.js"></script>
                            <%--<asp:LinkButton ID="CustomerName" runat="server" OnClientClick="myFunction()" class="dropbtn" Visible="False"></asp:LinkButton>--%>
                            <asp:HyperLink ID="CustomerName" runat="server" OnClick="myFunction()" class="dropbtn" Visible="False"></asp:HyperLink>
                            <%--<button type="submit" onclick="myFunction()" class="dropbtn" id="CustomerName">Hello User</button>--%>

                            <div id="myDropdown" class="dropdown-content">
                                <div class="user-profile-sec">
                                    <div class="user-profile-image"></div>
                                    <div class="UserName">
                                        <asp:Label ID="UN" runat="server" CssClass="customerProfileName"></asp:Label>
                                    </div>

                                </div>
                                <div class="dropdown-list-item">
                                    <a href="./userProfile.aspx"><i class="fa-solid fa-user-pen"></i>&nbsp;&nbsp;&nbsp;&nbsp;Edit Profile</a>
                                </div>
                                <div class="dropdown-list-item">
                                    <a href="BookingDetail.aspx"><i class="fa-solid fa-cart-flatbed"></i>&nbsp;&nbsp;&nbsp;&nbsp;Booking Details</a>
                                </div>

                                <div class="dropdown-list-item">
                                    <a href="#popupProfile"><i class="fa-solid fa-gear"></i>&nbsp;&nbsp;&nbsp;&nbsp;Setting</a>
                                </div>
                                <div class="dropdown-list-item">
                                    <asp:HyperLink ID="Logout" runat="server" NavigateUrl="~/login.aspx" Text="Logout"><i class="fa-solid fa-power-off"></i>&nbsp;&nbsp;&nbsp;&nbsp;Logout</asp:HyperLink>
                                    <%--<a href="login.aspx"><i class="fa-solid fa-power-off"></i>&nbsp;&nbsp;&nbsp;&nbsp;Logout</a>--%>
                                </div>
                                <div class="null-sec"></div>
                            </div>
                        </div>
                        <%--<li>
                        <%--<a href="Login.aspx"><i class="fa-solid fa-user-large"></i>&nbsp;&nbsp;Login</a>
                        <asp:LinkButton ID="CustomerName" runat="server" Visible="False"></asp:LinkButton>
                    </li>--%>
                        <%--<asp:LinkButton ID="LinkButton5" runat="server" Visible="true"><i class="fa-solid fa-user-large"></i>&nbsp;&nbsp;Login</asp:LinkButton>--%>
                        <%--<asp:LinkButton ID="LinkButton6" runat="server" Visible="true" PostBackU rl="~/login.aspx"><i class="fa-solid fa-user-large"></i>&nbsp;&nbsp;Login</asp:LinkButton>--%>
                    </ul>
                </form>
            </nav>
            <!-- <div class="logo-box">
                <img src="../PageStyleFile/image/nature-logo-removebg-preview.png" alt="Logo-image" class="logo" />
            </div>
             <div class="header-menu">
                <a href="Navigation/index.html"><i class="fas fa-align-justify"></i>
                </a>
            </div> -->
            <div class="text-box">
                <h1 class="heading-primary">
                    <span class="heading-primary-main">Outdoors</span>
                    <span class="heading-primary-sub">is where life happens </span>
                </h1>
                <a href="Tours.aspx" class="btn btn-white btn-animated">Discover our tours </a>
            </div>
        </div>
    </header>
    <main>
        <!-- <section class="grid-text">
            <div class="row">
                <div class="col-1-of-2">col-1-of-2</div>
                <div class="col-1-of-2">col-1-of-2</div>
            </div>
            <div class="row">
                <div class="col-1-of-3">col-1-of-3</div>
                <div class="col-1-of-3">col-1-of-3</div>
                <div class="col-1-of-3">col-1-of-3</div>
            </div>
            <div class="row">
                <div class="col-1-of-3">col-1-of-3</div>
                <div class="col-2-of-3">col-2-of-3</div>
            </div>
            <div class="row">
                <div class="col-1-of-4">col-1-of-4</div>
                <div class="col-1-of-4">col-1-of-4</div>
                <div class="col-1-of-4">col-1-of-4</div>
                <div class="col-1-of-4">col-1-of-4</div>
            </div>
            <div class="row">
                <div class="col-1-of-4">col-1-of-4</div>
                <div class="col-1-of-4">col-1-of-4</div>
                <div class="col-2-of-4">col-2-of-4</div>
            </div>
            <div class="row">
                <div class="col-1-of-4">col-1-of-4</div>
                <div class="col-3-of-4">col-3-of-4</div>
            </div>  
        </section> -->

        <!-- *************||Section About||************** ----->
        <section class="section-about" id="section-about">
            <div class="u-center-text u-margin-bottom-big">
                <h2 class="heading-secondary">Exciting tours for adventurous people
                </h2>
            </div>

            <div class="row">
                <div class="col-1-of-2">
                    <h3 class="heading-tertiary u-margin-bottom-small">You're going to fall in love with nature</h3>
                    <p class="paragraph">
                        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aperiam dolore, illo, ratione quaerat assumenda quibusdam ea harum cum perferendis temporibus blanditiis officia culpa ab eos labore, vero rem quos odit!
                    </p>
                    <h3 class="heading-tertiary u-margin-bottom-small">Live adventures like you never have before</h3>
                    <p class="paragraph">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nobis modi quo fugiat culpa eos placeat animi in voluptatum.ipsum dolor amet consectetur adipisicing elit. 
                    </p>
                    <a href="#section-about" class="btn-text">Learn more &rarr;</a>
                </div>
                <div class="col-1-of-2">
                    <div class="composition">
                        <img src="../PageStyleFile/image/swissmountainlake.jpg" alt="" class="composition-photo composition-photo-p1" />
                        <img src="../PageStyleFile/image/nuter_lover.jpg" alt="" class="composition-photo composition-photo-p2" />
                        <img src="../PageStyleFile/image/Mountains.jfif" alt="" class="composition-photo composition-photo-p3" />

                    </div>
                </div>
            </div>
        </section>


        <!-- *************||section-features||************** -->


        <section class="section-features">
            <div class="row">
                <div class="col-1-of-4">
                    <div class="feature-box">
                        <i class="feature-box-icon fas fa-globe"></i>
                        <h3 class="heading-tertiary u-margin-bottom-small">Explore the world </h3>
                        <p class="feature-box-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nobis modi quo fugiat culpa eos placeat animi in voluptatum.</p>
                    </div>
                </div>
                <div class="col-1-of-4">
                    <div class="feature-box">
                        <i class="feature-box-icon far fa-compass"></i>
                        <h3 class="heading-tertiary u-margin-bottom-small">Meet nature </h3>
                        <p class="feature-box-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nobis modi quo fugiat culpa eos placeat animi in voluptatum.</p>
                    </div>
                </div>
                <div class="col-1-of-4">
                    <div class="feature-box">
                        <i class="feature-box-icon far fa-map"></i>
                        <h3 class="heading-tertiary u-margin-bottom-small">Find your way </h3>
                        <p class="feature-box-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nobis modi quo fugiat culpa eos placeat animi in voluptatum.</p>
                    </div>
                </div>
                <div class="col-1-of-4">
                    <div class="feature-box">
                        <i class="feature-box-icon far fa-heart"></i>
                        <h3 class="heading-tertiary u-margin-bottom-small">Live a healthier life </h3>
                        <p class="feature-box-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nobis modi quo fugiat culpa eos placeat animi in voluptatum.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- ----------------Tour section------------------->


        <section class="section-tours" id="section-tours">
            <div class="u-center-text u-margin-bottom-big">
                <h2 class="heading-secondary">Most popular tours
                </h2>
            </div>
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Page_Load">
                    <ItemTemplate>
                        <div class="col-1-of-3">
                            <div class="card">
                                <div class="card-side card-side-front">
                                    <div class="card-picture card-picture-1">
                                        &nbsp;
                                    </div>
                                    <h4 class="card-heading">
                                        <asp:Label ID="Label1" runat="server" class="card-heading-span card-heading-span-1" Text='<%# Eval("pack_name") %>'></asp:Label>
                                        <%--<span class="card-heading-span card-heading-span-1">The sea Explore</span>--%>
                                    </h4>
                                    <div class="card-details">
                                        <ul>
                                            <li>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("time_during") %>'></asp:Label>
                                                day tours</li>
                                            <li>Up to
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("num_of_people") %>'></asp:Label>
                                                peoples</li>
                                            <li>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("toure_guides") %>'></asp:Label>
                                                tour guides</li>
                                            <li>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("S_address_id") %>'></asp:Label>Sleep in cozy hotels</li>
                                            <li>Difficulty:
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("difficulty") %>'></asp:Label>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-side card-side-back card-side-back-1">
                                    <div class="card-cta">
                                        <div class="card-price-box">
                                            <p class="card-price-only">Only</p>
                                            <p class="crad-price-value">
                                                &#8377;
                                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("price_id") %>'></asp:Label>
                                            </p>
                                        </div>
                                        <a href="#popup" class="btn btn-white">Book Now!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Nature_projectConnectionString %>" SelectCommand="SELECT * FROM [Package]"></asp:SqlDataSource>

                <br />

            </div>
            <div class="u-center-text u-margin-top-big">
                <a href="Tours.aspx" class="btn btn-green">Make your tripp</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Tours.aspx" class="btn btn-green">Discover all tours</a>
            </div>
        </section>

        <!-- --------------------this is services section------------- -->


        <section class="services-sec">
            <div class="ss-content">
                <div class="ssc-top-head">
                    <h1 class="sscth-head heading-secondary">Our Services </h1>
                </div>
            </div>
            <div class="ss-content">
                <div class="sss-card">
                    <div class="sss-text">
                        <div class="margin-sec">
                            <div class="icon-sec">
                                <i class="fa-regular fa-3x fa-money-bill-1"></i>
                            </div>
                            <div class="sc-heading-sec">
                                <h2 class="lg-color">Value of Maney</h2>
                            </div>
                            <div class="sc-peragraph-sec">
                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Commodi aut voluptatum</p>
                            </div>
                        </div>
                    </div>
                    <div class="sss-text">
                        <div class="margin-sec">
                            <div class="icon-sec">
                                <i class="fa-solid fa-3x fa-tv"></i>
                            </div>
                            <div class="sc-heading-sec">
                                <h2>Fast Booking</h2>
                            </div>
                            <div class="sc-peragraph-sec">
                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Commodi aut voluptatum </p>
                            </div>
                        </div>
                    </div>
                    <div class="sss-text">
                        <div class="margin-sec">
                            <div class="icon-sec">
                                <i class="fa-regular fa-3x fa-gem"></i>
                            </div>
                            <div class="sc-heading-sec">
                                <h2>Beautiful Places</h2>
                            </div>
                            <div class="sc-peragraph-sec">
                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Commodi aut voluptatum </p>
                            </div>
                        </div>
                    </div>
                    <div class="sss-text">
                        <div class="margin-sec">
                            <div class="icon-sec">
                                <i class="fa-solid fa-3x fa-users"></i>
                            </div>
                            <div class="sc-heading-sec">
                                <h2>24/7 Team Support</h2>
                            </div>
                            <div class="sc-peragraph-sec">
                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Commodi aut voluptatum </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sss-card">
                    <div class="sss-text">
                        <div class="margin-sec">
                            <div class="icon-sec">
                                <i class="fa-solid fa-3x fa-earth-africa"></i>
                            </div>
                            <div class="sc-heading-sec">
                                <h2>Passionate Travel</h2>
                            </div>
                            <div class="sc-peragraph-sec">
                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Commodi aut voluptatum </p>
                            </div>
                        </div>
                    </div>
                    <div class="sss-text">
                        <div class="margin-sec">
                            <div class="icon-sec">
                                <i class="fa-solid fa-3x fa-map-location-dot"></i>
                            </div>
                            <div class="sc-heading-sec">
                                <h2>Diverse destination</h2>
                            </div>
                            <div class="sc-peragraph-sec">
                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Commodi aut voluptatum </p>
                            </div>
                        </div>
                    </div>
                    <div class="sss-text">
                        <div class="margin-sec">
                            <div class="icon-sec">
                                <i class="fa-regular fa-3x fa-thumbs-up"></i>
                            </div>
                            <div class="sc-heading-sec">
                                <h2>Highly Qualified Services</h2>
                            </div>
                            <div class="sc-peragraph-sec">
                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Commodi aut voluptatum </p>
                            </div>
                        </div>
                    </div>
                    <div class="sss-text">
                        <div class="margin-sec">
                            <div class="icon-sec">
                                <i class="fa-solid fa-3x fa-hotel"></i>
                            </div>
                            <div class="sc-heading-sec">
                                <h2>Hotel Accomodations</h2>
                            </div>
                            <div class="sc-peragraph-sec">
                                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Commodi aut voluptatum </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!----------------------this is stories section-------------------------->

        <section class="section-stories" id="section-stories">
            <div class="bg-video">
                <video class="bg-video-content" autoplay="autoplay" loop="loop" muted="muted">
                    <source src="../PageStyleFile/video/video-1.mp4" type="video/mp4" />
                    <source src="../PageStyleFile/video/video-1.webm" type="video/webm" />
                    Your browser is not supported!
                </video>
            </div>
            <div class="u-center-text u-margin-bottom-medium">
                <h2 class="heading-secondary">We make people genuinely happy
                </h2>
            </div>
            <div class="row">
                <div class="story">
                    <figure class="story-shape">
                        <img src="../PageStyleFile/image/tourism-person-image-2.jfif" alt="Person on tour" class="story-image" />
                        <figcaption class="story-caption">Mary smith
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
                        <figcaption class="story-caption">Jack wilson
                        </figcaption>
                    </figure>
                    <div class="story-text">
                        <h3 class="heading-tertiary u-margin-bottom-small">WoW! My life is completely defferent now </h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos similique ducimus in iure, eaque officiis et asperiores velit totam commodi recusandae odio expedita sapiente deserunt quas maxime cumque voluptas soluta.Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos similique ducimus in iure, eaque officiis et asperiores velit totam commodi recusandae odio expedita </p>
                    </div>
                </div>
            </div>
            <div class="u-center-text u-margin-top-big">
                <a href="Story.aspx" class="btn-text">Read all story &rarr;</a>
            </div>
        </section>

        <!---------------------This is booking section--------------------->

        <section class="section-book">
            <div class="row">
                <div class="book">
                    <div class="book-form">
                        <form action="#" class="form">
                            <div class="u-margin-bottom-medium">
                                <h2 class="heading-secondary">Start booking now
                                </h2>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-input" placeholder="Full Name" id="name" required="required" />
                                <label for="name" class="form-label">
                                    Full Name
                                </label>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-input" placeholder="Email address" id="email" required="required" />
                                <label for="email" class="form-label">
                                    Email Address
                                </label>
                            </div>
                            <div class="form-group">
                                <div class="form-radio-group u-margin-bottom-small">
                                    <input type="radio" class="form-radio-input" id="small" name="size" />
                                    <label for="small" class="form-radio-label">
                                        <span class="form-radio-button"></span>
                                        Small tour group
                                    </label>
                                </div>
                                <div class="form-radio-group u-margin-bottom-small">
                                    <input type="radio" class="form-radio-input" id="large" name="size" />
                                    <label for="large" class="form-radio-label">
                                        <span class="form-radio-button"></span>
                                        Large tour group
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <button class="btn btn-green">Next step &rarr;</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!------------------------This is footer section---------------------->


    <footer class="footer">
        <div class="footer-logo-box">
            <img src="../PageStyleFile/image/nature-logo-removebg-preview.png" alt="Full logo" class="footer-logo" />
        </div>
        <div class="row">
            <div class="col-1-of-2">
                <div class="footer-navigation">
                    <ul class="footer-list">
                        <li class="footer-item"><a href="./Admin/adminLogin.aspx" class="footer-link">Admin</a></li>
                        <li class="footer-item"><a href="#" class="footer-link">Company</a></li>
                        <li class="footer-item"><a href="#" class="footer-link">Contact us</a></li>
                        <li class="footer-item"><a href="#" class="footer-link">Carrers</a></li>
                        <li class="footer-item"><a href="#" class="footer-link">Privacy policy</a></li>
                        <li class="footer-item"><a href="#" class="footer-link">Terms</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-1-of-2">
                <p class="footer-copyright">
                    Built by <a href="#" class="footer-link">Ram </a>for
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos similique ducimus in iure, eaque officiis et asperiores velit totam commodi recusandae odio expedita sapiente deserunt quas maxime cumque voluptas soluta.Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos similique ducimus in iure, eaque officiis et asperiores velit totam commodi recusandae odio expedita 
                </p>
            </div>
        </div>
    </footer>

    <!----------------------this is popup in frount of booking section ----------------->

    <div class="popup" id="popup">
        <div class="popup-content">
            <div class="popup-left">
                <img src="../PageStyleFile/image/person-image-1.jfif" alt="Tour photo" class="popup-img" />
                <img src="../PageStyleFile/image/card-picture-1.jpg" alt="Tour photo" class="popup-img" />
            </div>
            <div class="popup-rigth">
                <a href="#section-tours" class="popup-close">&times;</a>
                <h2 class="heading-secondary u-margin-bottom-medium">Strat booking now</h2>
                <h3 class="heading-tertiary u-margin-bottom-small">Important &ndash; please read these terms before booking</h3>
                <p class="popup-text">
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.
                </p>
                <a href="signUp.aspx" class="btn btn-green">Book now</a>
            </div>
        </div>
    </div>



    <div class="popup" id="popupProfile">
        <div class="popup-content">
            <div class="popup-left">

                <img src="../PageStyleFile/image/person-image-1.jfif" alt="Tour photo" class="popup-img" />
                <img src="../PageStyleFile/image/card-picture-1.jpg" alt="Tour photo" class="popup-img" />
            </div>
            <div class="popup-rigth">
                <a href="#" class="popup-close">&times;</a>
                <h2 class="heading-secondary u-margin-bottom-medium">Strat booking now</h2>
                <%--<h3 class="heading-tertiary u-margin-bottom-small">Important &ndash; please read these terms before booking</h3>
                <p class="popup-text">
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.
                </p>--%>
                <a href="signUp.aspx" class="btn btn-green">Book now</a>
            </div>
        </div>
    </div>
</body>
</html>
