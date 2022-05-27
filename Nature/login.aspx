<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="PageStyleFile/css/signUp.css" rel="stylesheet" />
    <link href="fontawesome-free-6.0.0-web/fontawesome-free-6.0.0-web/css/all.css" rel="stylesheet" />
    <title>Nature | Sign-in</title>
</head>
<body>
    <div class="content">

        </div>
        <div class="signin-sec" id="sign-in-sec">
            <div class="ss-content">
                <div class="header-sec">
                    <h1 class="heading-name">Login</h1>
                    <p class="sub-heading-name">Sign into your account</p>
                </div>
                <form runat="server" class="form-sec">
                    <%--<input type="text" name="username" id="username" class="username-sec" placeholder="Username" required="required"/>--%>
                    <asp:TextBox ID="Cust_name" runat="server" class="username-sec" placeholder="Username" required="required"></asp:TextBox>
                    <br/>
                    <%--<input type="password" name="password" id="password" class="password-sec" placeholder="Password" required="required"/>--%>
                    <asp:TextBox ID="Password" runat="server" class="password-sec" placeholder="Password" required="required" TextMode="Password"></asp:TextBox>
                    <br/>
                    <div class="remember-sec">
                        <%--<input type="checkbox" name="remember-chechbox" id="remember-chech" required="required"/>--%>
                        <asp:CheckBox ID="CheckBox1" runat="server" required="required" />
                        <label for="CheckBox1">Remember me </label>
                        <a href="#">Forgot password?</a>
                    </div>
                    <br/>
                    <%--<button type="submit" class="sign-in-btn sign-in">Sign In </button>--%>
                    <asp:Button ID="SignInBtn" runat="server" Text="Sign In" class="sign-in-btn sign-in" OnClick="SignInBtn_Click" />
                </form>
                <div class="or">
                    <p>Or</p>
                    <button type="submit" class="sign-in-btn google-btn"><i class="fa-brands fa-google"></i> Google </button>
                    <button type="submit" class="sign-in-btn instagram-btn"><i class="fa-brands fa-instagram"></i> Instagram </button>
                </div>
                <div class="add-ac">
                    <div class="add-ac-p">
                        <p>Need an account ? </p>
                        <a href="signUp.aspx" id="signup-id" onclick="change()">&nbsp;SignUp</a>
                    </div>
                    <div class="back">
                        <%--<a href="index.aspx">Back</a>--%>
                        <asp:HyperLink ID="Back_btn" runat="server" NavigateUrl="~/index.aspx" Text="Back" OnPreRender="Back_btn_Click"></asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
        <%--<div class="back-btn">
            <a href="index.aspx">Back</a>
        </div>--%>
   <%-- -- <form id="form1" runat="server">
        <div class="navigation-loginpage">
        <div class="bg-video">
            <video class="bg-video-content" autoplay="autoplay" muted="muted" loop="loop">
                <source src="../PageStyleFile/video/video-1.mp4" type="video/mp4" />
                <source src="../PageStyleFile/video/video-1.webm" type="video/webm" />
                Your browser is not supported!
            </video>
        </div>
        <div class="loginPage-logo"><br />
            <a href="index.aspx"><img src="../PageStyleFile/image/nature-logo-removebg-preview.png" alt="check me out" width="170" height="50" /></a>
        </div>
        <div class="login">
            <a href="LoginPage.aspx" class="btn ">Login</a>
        </div>
        <div class="registration">
            <a href="Registration.aspx" class="btn ">Registrations</a>
        </div>
    </div>
    <div class="main">
        <div class="profile">        
        </div>
        <div class="index">
            <div class="username" style="margin-bottom: 10px;">
                <label for="username">Username</label><br/>
                <input type="text" placeholder="Entet username" required="required" /><br/>
            </div>
            <div class="password" style="margin-bottom: 10px;">
                <label for="password">Password</label><br/>
                <input type="password" placeholder="Password" required="required" /><br/>
            </div>
            <div class="bottom_div">
                <span class="forget_password" style="margin-bottom: 10px;">
                    <a href="#">Forget Password </a><br>
                    <a href="#">Currect New Account</a>
                </span><br /><br />
                <div class="btn-submit">
                    <button class="btn btn-green btn-group">Login</button>
                    <br />
                </div>
            </div>
        </div>
    </div>
    </form>-->--%>
</body>
</html>
