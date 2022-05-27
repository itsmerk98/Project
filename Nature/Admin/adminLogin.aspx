<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminLogin.aspx.cs" Inherits="adminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet"/>
    <link href="../fontawesome-free-6.0.0-web/fontawesome-free-6.0.0-web/css/all.css" rel="stylesheet" />
    <link rel="stylesheet" href="../PageStyleFile/css/adminLogin.css" />
</head>
<body>
    <form runat="server">
        <div class="admin-panel-login">
            <div class="admin-panel">
                <div class="apl-head">
                    <h3>Admin Login Panel </h3>
                </div>
            </div>
            <div class="input-filed">
                <div class="user">
                    <div class="user-icon">
                        <i class="fa-solid fa-user"></i>
                    </div>
                    <!--<input type="text" name="username" id="username" class="input-fild" placeholder="Username" required="required"/>-->
                    <asp:TextBox ID="AdminName" runat="server" class="input-fild" placeholder="Username" required="required"></asp:TextBox>
                </div>
                <div class="user">
                    <div class="user-icon">
                        <i class="fa-solid fa-lock"></i>
                    </div>
                    <!--<input type="password" name="password" id="password" class="input-fild" placeholder="Password" required="required"/>-->
                    <asp:TextBox ID="AdminPass" runat="server" class="input-fild" placeholder="Username" required="required" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="button-login">
                <div class="remind">
                    <div class="remind-sec">
                        <input type="checkbox" name="password-remind" id="remind-pass"/>
                    </div>
                        <label for="remind-pass">Remind my password.</label>
                </div>
                <div class="login">
                    <!-- <input type="submit" value="Login" id="login" class="login-btn" onclick="login_click"/> -->
                    <asp:Button ID="Login" runat="server" Text="Login" class="login-btn" OnClick="Login_Click" />
                </div>
            </div>
        </div>
        </form>
</body>
</html>
