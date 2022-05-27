<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signUp.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nature | Sign Up</title>
    <link href="PageStyleFile/css/signUp.css" rel="stylesheet" />
</head>
<body>
    <div class="content">

    </div>
    <div class="sign-up-sec" id="sign-up-sec">
        <div class="ss-content sign-up-sec-con">
            <div class="header-sec">
                <h1 class="heading-name">Sing Up</h1>
                <p class="sub-heading-name">Sign-Up into your account</p>
            </div>
            <form runat="server" class="form-sec">
                <%--<input type="text" name="username" id="username" class="username-sec" placeholder="Username" required="required"/>--%>
                <asp:TextBox ID="TextBox1" runat="server" class="username-sec" placeholder="Username" required="required"></asp:TextBox>
                <br/>
                <%--<input type="number" name="Modile" id="Modile" class="password-sec" placeholder="Modile no" required="required"/>--%>
                <asp:TextBox ID="TextBox2" runat="server" class="username-sec" placeholder="Modile no" TextMode="Number"></asp:TextBox>
                <br/>
                <%--<input type="email" name="" id="" class="username-sec" placeholder="email" required="required"/>--%>
                <asp:TextBox ID="TextBox3" runat="server" class="username-sec" placeholder="email" required="required" TextMode="Email"></asp:TextBox>
                <br/>
                <%--<input type="password" name="password" id="password" class="password-sec" placeholder="Password" required="required"/>--%>
                <asp:TextBox ID="TextBox4" runat="server" class="username-sec" placeholder="Password" required="required" TextMode="Password" ></asp:TextBox>
                <br/>
                <%--<input type="password" name="password" id="conform-password" class="password-sec" placeholder="Conform Password" required="required"/>--%>
                <asp:TextBox ID="TextBox5" runat="server" class="username-sec" placeholder="Conform Password" required="required" TextMode="Password" ></asp:TextBox>
                <br/>
                <div class="remember-sec">
                    <input type="checkbox" name="remember-chechbox" id="remember-chech-1" />
                    <label for="remember-chech-1">Remember me </label>
                    
                </div>
                <br/>
                <%--<button type="submit" class="sign-in-btn sign-in">Sign In </button>--%>
                <asp:Button ID="Button1" runat="server" Text="Sign-In" class="sign-in-btn sign-in" OnClick="Button1_Click1" />
            </form>
            <div class="add-ac">
                <div class="add-ac-p">
                    <p>You have account ? </p>
                    <a href="login.aspx">&nbsp;Sign-in</a>
                </div>
                <div class="back">
                <a href="index.aspx">Back</a>
            </div>
            </div>
            
        </div>

    </div>
    <%--<div class="back-btn">
        <a href="index.aspx">Back</a>
    </div>--%>

    
</body>
</html>
