<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="Admin_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Admin | Nature </title>

    <link href="../PageStyleFile/css/admin.css" rel="stylesheet" />
    <link href="../PageStyleFile/css/dashboard.css" rel="stylesheet" />
    <link href="../PageStyleFile/css/chart.css" rel="stylesheet" />
    <link href="../PageStyleFile/css/formStyle.css" rel="stylesheet" />
    <link href="../PageStyleFile/css/side_menu.css" rel="stylesheet" />
    <link href="../fontawesome-free-6.0.0-web/fontawesome-free-6.0.0-web/css/all.css" rel="stylesheet" />

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

</head>
<body>
    <script src="../PageStyleFile/JavaScript/chart.js"></script>
    <header>
        <nav class="navigation">
            
            <div class="hiden-menu">
                <button class="hm-icon">
                    <i class="fa-solid fa-align-justify fa-lg"></i>
                </button>
            </div>
            <div class="logo">
                <a href="../index.aspx" class="logo-image">
                    <img class="img-logo" src="../PageStyleFile/image/nature-logo-removebg-preview.png" alt="image-error" srcset=""/>
                </a>
            </div>
            <div class="nav-controls">
                <ul class="navigation-controls">
                    <li class="admin-profile">
                        <button class="admin-img-menu">
                            <div class="admin-img">
                                <img src="../PageStyleFile/image/admin-img/face1.jpg" alt="image-error"/>
                                <span class="status-admin online"></span>
                            </div>
                            <div class="admin-name">
                                <asp:Label ID="AdminName_1" runat="server" class="name"></asp:Label>
                               <!-- <span class="name">Ram kishor</span> -->
                            </div>
                        </button>
                        <div class="dropdown-navbar">
                            <a href="#" class="dropdown-item-1">
                                <i class="fa-solid fa-arrows-rotate "></i>
                                <span>Profile </span>
                            </a>
                            <a href="adminLogin.aspx" class="dropdown-item-2">
                                <i class="fa-solid fa-right-from-bracket"></i>
                                <span>Sign-out</span>
                            </a>
                            <a href="index.aspx" class="dropdown-item-3">
                                <i class="fa-solid fa-hourglass-empty"></i>
                                <span>Go-To-Site </span>
                            </a>
                        </div>
                    </li>
                    <li class="nav-mail" >
                        <button class="mail-icon">
                            <i class="fa-regular fa-envelope fa-lg"></i>
                            <span class="new-mail"></span>
                        </button>
                        <div class="mail-dropdown">
                            <h4 class="md-msg">Message</h4>
                            <i class="fa-solid fa-xmark" id="exit"></i>
                            <a href="#" class="md-msg-1">
                                <div class="md-msg-img">
                                    <img src="../PageStyleFile/image/admin-img/sanjay.jpeg" alt="" srcset="" class=""/>
                                </div>
                                <div class="md-msg-sender">
                                    <h5 class="md-msg-sender-name">Rajpurohit sanjay</h5>
                                    <p class="sending-ago">1 Minutes ago</p>
                                </div>
                            </a>
                            <a href="#" class="md-msg-1">
                                <div class="md-msg-img">
                                    <img src="../PageStyleFile/image/admin-img/ravina.jpeg" alt="" srcset="" class=""/>
                                </div>
                                <div class="md-msg-sender">
                                    <h5 class="md-msg-sender-name">Ravina goyal</h5>
                                    <p class="sending-ago">5 Minutes ago</p>
                                </div>
                            </a>
                            <a href="#" class="md-msg-1">
                                <div class="md-msg-img">
                                    <img src="../PageStyleFile/image/admin-img/gopal.jpeg" alt="" srcset="" class=""/>
                                </div>
                                <div class="md-msg-sender">
                                    <h5 class="md-msg-sender-name">Gopal chouhan</h5>
                                    <p class="sending-ago">10 Minutes ago</p>
                                </div>
                            </a>
                            <a href="#" class="md-msg-1">
                                <div class="md-msg-img">
                                    <img src="../PageStyleFile/image/admin-img/kamal.jpeg" alt="" srcset="" class=""/>
                                </div>
                                <div class="md-msg-sender">
                                    <h5 class="md-msg-sender-name">Kamal vaishnav </h5>
                                    <p class="sending-ago">25 Minutes ago</p>
                                </div>
                            </a>
                            <h4 class="number-of-msg">
                                5 new messages
                            </h4>
                        </div>
                    </li>
                    <li class="nav-notifications">
                        <button href="" class="notification">
                            <i class="fa-regular fa-bell fa-lg"></i>
                            <span class="new-mail noti"></span>
                        </button>
                        <div class="noti-dropdown">
                            <div class="notification-heading">
                                <h4>Notifications</h4>
                            </div>
                            <a href="#" class="today-event">
                                <div class="te-icon">
                                    <i class="fa-regular fa-calendar-check"></i>
                                </div>
                                <div class="td-event">
                                    <h4>Event today</h4>
                                    <p>Just a reminder that you have</p>
                                </div>
                            </a>
                            <a href="#" class="today-event">
                                <div class="te-icon">
                                    <i class="fa-solid fa-gear setting-icon"></i>
                                </div>
                                <div class="td-event">
                                    <h4>Settings</h4>
                                    <p>Update dashboard</p>
                                </div>
                            </a>
                            <a href="#" class="today-event">
                                <div class="te-icon">
                                    <i class="fa-solid fa-comment-dollar te-noti-icon"></i>
                                </div>
                                <div class="td-event">
                                    <h4>Comments</h4>
                                    <p>Feeldback notifications</p>
                                </div>
                            </a>
                            <div class="all-noti">
                                <span>
                                    See all notifications
                                </span>
                            </div>
                        </div>
                    </li>
                    <li class="nav-logout">
                        <a href="adminLogin.aspx" class="logout">
                            <i class="fa-solid fa-power-off fa-lg"></i>
                        </a>
                    </li>
                    <li class="nav-ruten-menu">
                        <a href="#" class="rutin">
                            <i class="fa-solid fa-ellipsis-vertical"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <main>
        <aside class="side-menu">
            <ul class="left-side-admin">
                <li class="side-admin">
                    <a class="side-admin-profile" href="#">
                        <div class="side-admin-img">
                            <img src="../PageStyleFile/image/admin-img/face1.jpg" alt="image-error" />
                        </div>
                        <div class="side-admin-name">
                            <div class="wrap-the-name">
                                <asp:Label ID="AdminName" runat="server" class="sa-name"></asp:Label>
                                <!--<span class="sa-name" id="AdminName"></span>-->
                                <span class="post-name">Project Head</span>
                            </div>
                        </div>
                        <div class="bookmark">
                            <i class="fa-solid fa-bookmark"></i>
                        </div>
                    </a>
                </li>
                <li class="dashboard">
                    <a href="#" class="dashboard-link">
                        <div class="dashboard-icon">
                            <i class="fa-solid fa-house"></i>
                        </div>
                        <div class="dash-name">
                            <p>Dashboard</p>
                        </div>
                    </a>
                </li>
                <li class="dashboard package">
                    <button href="" class="dashboard-link package-link">
                        <div class="dashboard-icon">
                            <i class="fa-solid fa-box-open"></i>
                        </div>
                        <div class="dash-name">
                            <p>Package</p>
                        </div>
                        <div class="arrow">
                            <i class="fa-solid fa-angle-right"></i>
                        </div>
                    </button>
                    <div class="collapse-menu">
                        <ul class="sub-menu">
                            <li class="menu-item">
                                <a href="#" class="nav-item">
                                    <span class="item-name">New package</span>
                                </a>
                            </li>
                            <li class="menu-item">
                                <a href="#" class="nav-item">
                                    <span class="item-name">Package details</span>
                                </a>
                            </li>
                            <li class="menu-item">
                                <a href="#" class="nav-item">
                                    <span class="item-name">Editting</span>
                                </a>
                            </li>
                            <li class="menu-item">
                                <a href="#" class="nav-item">
                                    <span class="item-name">Delete</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="dashboard">
                    <button href="" class="dashboard-link package-link">
                        <div class="dashboard-icon">
                            <i class="fa-solid fa-circle-info"></i>
                        </div>
                        <div class="dash-name">
                            <p>Details</p>
                        </div>
                        <div class="arrow">
                            <i class="fa-solid fa-angle-right"></i>
                        </div>
                    </button>
                    <div class="collapse-menu">
                        <ul class="sub-menu">
                            <li class="menu-item">
                                <a href="#" class="nav-item">
                                    <span class="item-name">Guest details</span>
                                </a>
                            </li>
                            <li class="menu-item">
                                <a href="#" class="nav-item">
                                    <span class="item-name">Customer details</span>
                                </a>
                            </li>
                            <li class="menu-item">
                                <a href="#" class="nav-item">
                                    <span class="item-name">Hotel details</span>
                                </a>
                            </li>
                            <li class="menu-item">
                                <a href="#" class="nav-item">
                                    <span class="item-name">Employee details</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="dashboard">
                    <a href="#" class="dashboard-link">
                        <div class="dashboard-icon">
                            <i class="fa-solid fa-hotel"></i>
                        </div>
                        <div class="dash-name">
                            <p>Hotels</p>
                        </div>
                        <div class="arrow">
                            <i class="fa-solid fa-angle-right"></i>
                        </div>
                    </a>
                </li>
                <li class="dashboard">
                    <a href="#" class="dashboard-link">
                        <div class="dashboard-icon">
                            <i class="fa-solid fa-bell"></i>
                        </div>
                        <div class="dash-name">
                            <p>Notifications</p>
                        </div>
                        <div class="arrow">
                            <i class="fa-solid fa-angle-right"></i>
                        </div>
                    </a>
                </li>
                <li class="dashboard">
                    <a href="#" class="dashboard-link">
                        <div class="dashboard-icon">
                            <i class="fa-regular fa-envelope"></i>
                        </div>
                        <div class="dash-name">
                            <p>E-mail</p>
                        </div>
                    </a>
                </li>
            </ul>
        </aside>

    <!-- ###################       Dashboard section      ############## -->

        <section class="dash">
            <div class="content">
                <div class="dash-header">
                    <div class="dash-home">
                        <h3>
                            <span class="dash-icon"><i class="fa-solid fa-house"></i></span>Dashboard
                        </h3>
                    </div>
                </div>
                <div class="sec-row">
                    <div class="box-1">
                        <div class="card-1">
                            <div class="bc-contant">
                                <img src="../PageStyleFile/image/admin-img/circle.svg" alt="" srcset=""/>
                                <h3 class="time-ago">
                                    Today's Bookings
                                    <i class="fa-solid fa-chart-line"></i>
                                </h3>
                                <h2 class="num-of-order">
                                    500
                                </h2>
                                <h4 class="increared">10.00% (30 days)</h4>
                            </div>
                            
                        </div>
                    </div>
                    <div class="box-1">
                        <div class="card-1 two">
                            <div class="bc-contant">
                                <img src="../PageStyleFile/image/admin-img/circle.svg" alt="" srcset=""/>
                                <h3 class="time-ago">
                                    Total bookings
                                    <i class="fa-regular fa-bookmark"></i>
                                </h3>
                                <h2 class="num-of-order">
                                    9,765
                                </h2>
                                <h4 class="increared">10.00% (30 days)</h4>
                            </div>
                        </div>
                    </div>
                    <div class="box-1">
                        <div class="card-1 three">
                            <div class="bc-contant">
                                <img src="../PageStyleFile/image/admin-img/circle.svg" alt="" srcset=""/>
                                <h3 class="time-ago">
                                    Visitors Online
                                    <i class="fa-regular fa-gem"></i>
                                </h3>
                                <h2 class="num-of-order">
                                    98,432
                                </h2>
                                <h4 class="increared">Increased by 60%</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section class="chart-sec">
                <div class="chart-contant">
                    <div class="chart-part">
                        <div class="chart-1">
                            <div id="chart_div" class="donut-single"></div>
                        </div>
                        <div class="chart-2">
                            <div id="donutchart" class="donut-single"></div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="second-row">
                <div class="column-1">
                    <div class="sec-col-1-card">
                        <div class="card-element">
                            <div class="sub-element">
                                <div class="mini-sub">
                                    <div class="element-icon">
                                        <i class="fa-solid fa-cube"></i>
                                    </div>
                                    <div class="element-text">
                                        <span>
                                            <h5>Total Revenue</h5>
                                            <h4 class="num">60 Cr.</h4>
                                        </span>
                                    </div>
                                </div>
                                <div class="sub-element-2">
                                    <div class="ele-icon">
                                        <span>
                                        </span><i class="fa-solid fa-circle-info"></i> 49.39% Since last month
                                            
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="column-1">
                    <div class="sec-col-1-card">
                        <div class="card-element">
                            <div class="sub-element">
                                <div class="mini-sub">
                                    <div class="element-icon">
                                        <i class="fa-solid fa-receipt yellow"></i>
                                    </div>
                                    <div class="element-text">
                                        <span>
                                            <h5>Gross margin</h5>
                                            <h4 class="num">6 Cr.</h4>
                                        </span>
                                    </div>
                                </div>
                                <div class="sub-element-2">
                                    <div class="ele-icon">
                                        <span>
                                        </span><i class="fa-regular fa-bookmark">&nbsp;</i>  Product-wise sales
                                            
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="column-1">
                    <div class="sec-col-1-card">
                        <div class="card-element">
                            <div class="sub-element">
                                <div class="mini-sub">
                                    <div class="element-icon">
                                        <i class="fa-solid fa-hand-holding-dollar green"></i>
                                    </div>
                                    <div class="element-text">
                                        <span>
                                            <h5>Investors</h5>
                                            <h4 class="num">90 Cr./4</h4>
                                        </span>
                                    </div>
                                </div>
                                <div class="sub-element-2">
                                    <div class="ele-icon">
                                        <span>
                                        </span><i class="fa-regular fa-handshake"></i> 40% Equity of company
                                            
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="column-1">
                    <div class="sec-col-1-card">
                        <div class="card-element">
                            <div class="sub-element">
                                <div class="mini-sub">
                                    <div class="element-icon">
                                        <i class="fa-solid fa-users light-color"></i>
                                    </div>
                                    <div class="element-text">
                                        <span>
                                            <h5>Employees</h5>
                                            <h4 class="num">451</h4>
                                        </span>
                                    </div>
                                </div>
                                <div class="sub-element-2">
                                    <div class="ele-icon">
                                        <span>
                                        </span><i class="fa-solid fa-arrow-rotate-right">&nbsp;</i> 60% Lower growth
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            <!-- =================form section==================== -->

        <section class="form-section">
            <form runat="server" action="">
                <div class="form-title">
                    <h2 class="title">New package</h2>
                </div>
                <div class="form-filed">
                    <label for="TextBox1" class="p-name">Package Name</label>
                   <!-- <input type="text" name="package-name" id="package_name"/>-->
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
                <div class="form-filed">
                    <label for="TextBox2" class="p-name">Day trip </label>
                   <!-- <input type="number" name="package-name" id="dt"/>-->
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div class="form-filed">
                    <label for="TextBox3" class="p-name">Number of people</label>
                    <!--<input type="number" name="package-name" id="nop"/>-->
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
                </div>
                <div class="form-filed">
                    <label for="TextBox4" class="p-name">Number of tour guide</label>
                   <!-- <input type="number" name="package-name" id="notg"/> -->
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
                </div>
                <div class="form-filed">
                    <label for="DropDownList1" class="p-name">Sleep in </label>
                    <!-- <input type="text" name="package-name" id="package-name"> -->
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Text="-" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Private tent" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Hotel" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                    <!--<select name="sleeping" id="sleepin">
                        <option value="empty">-</option>
                        <option value="tent">Private tent</option>
                        <option value="hotel">Hotel</option>
                    </select>-->
                </div>
                <div class="form-filed">
                    <label for="DropDownList2" class="p-name">Difficulty</label>
                    <!-- <input type="text" name="package-name" id="package-name"> -->
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Text="-" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Easy" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Middle" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Hard" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                    <!--<select name="difficulty" id="difficulty">
                        <option value="empty">-</option>
                        <option value="easy">Easy</option>
                        <option value="middem">Middle</option>
                        <option value="hard">Hard</option>
                    </select>-->
                </div>
                <div class="form-filed">
                    <label for="TextBox5" class="p-name">Place</label>
                    <!--<input type="number" name="package-name" id="price"/>-->
                    <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>
                </div>
                <div class="form-filed">
                    <label for="TextBox6" class="p-name">Price</label>
                    <!--<input type="number" name="package-name" id="price"/>-->
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Number"></asp:TextBox>
                </div>
                <!-- <div class="form-filed">
                    <label for="package-name" class="p-name">Package Name</label>
                    <input type="text" name="package-name" id="package-name">
                </div> -->
                <div class="package-btn">
                    <input type="checkbox" name="Remind" id="remind"/>
                    <label for="remind">Check this to confirm</label>
                   <!-- <input type="submit" value="Submit" /> -->
                    <asp:Button ID="Create_package" runat="server" Text="Create" OnClick="Create_package_Click" />
                </div>
            </form>
        </section>

        </section>
    </main>
    <script src="js/chart.js"></script>
</body>
</html>
