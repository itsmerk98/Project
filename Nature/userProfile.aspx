<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userProfile.aspx.cs" Inherits="userProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="PageStyleFile/css/editprofile.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <title>Edit Profile</title>

</head>
<body>
    <form id="form1" runat="server">
        <%--<div class="back-btn" style="position:absolute; top: 100px; right: 100px;">
            <a href="index.aspx">Back</a>
        </div>--%>
        <div class="container rounded bg-white mt-5 mb-5">
            <div class="row">
                <div class="col-md-3 border-right">
                    <div class="d-flex flex-column align-items-center text-center p-3 py-5" style="position: relative;">
                        <img class="rounded-circle mt-5" width="150" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg" />
                        <span class="font-weight-bold">RamKishor</span>
                        <span class="text-black-50">itsmerk@mail.com</span><span> </span>
                        <div class="back-btn" style="position: absolute; bottom: 0;">
                            <a href="index.aspx" style="padding:10px 50px;border: 1px solid; width: 100%; border-radius: 5px;background-color: #0094ff;color:#ffffff;">Back</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 border-right">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h4 class="text-right">Profile Settings</h4>
                        </div>
                        <div class="row mt-2" style="position: static !important;">
                            <div class="col-md-6">
                                <label class="labels">Name</label>
                                <asp:TextBox ID="FirstName" runat="server" class="form-control" placeholder="first name"></asp:TextBox>
                                <%--<input type="text" class="form-control" placeholder="first name" value="" />--%>
                            </div>
                            <div class="col-md-6">
                                <label class="labels">Surname</label>
                                <asp:TextBox ID="Surname" runat="server" class="form-control" placeholder="surname"></asp:TextBox>
                                <%--<input type="text" class="form-control" value="" placeholder="surname" />--%>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-12">
                                <label class="labels">Mobile Number</label>
                                <asp:TextBox ID="MobileNumber" runat="server" class="form-control" placeholder="enter phone number"></asp:TextBox>
                                <%--<input type="text" class="form-control" placeholder="enter phone number" value="" />--%>
                            </div>
                            <div class="col-md-12">
                                <label class="labels">Email ID</label>
                                <asp:TextBox ID="EmailId" runat="server" class="form-control" placeholder="enter email id"></asp:TextBox>
                                <%--<input type="text" class="form-control" placeholder="enter email id" value="" />--%>
                            </div>
                            <div class="col-md-12">
                                <label class="labels">Address Line 1</label>
                                <asp:TextBox ID="Address1" runat="server" class="form-control" placeholder="enter address line 1"></asp:TextBox>
                                <%--<input type="text" class="form-control" placeholder="enter address line 1" value="" />--%>
                            </div>
                            <div class="col-md-12">
                                <label class="labels">Address Line 2</label>
                                <asp:TextBox ID="Address2" runat="server" class="form-control" placeholder="enter address line 2"></asp:TextBox>
                                <%--<input type="text" class="form-control" placeholder="enter address line 2" value="" />--%>
                            </div>
                            <div class="col-md-12">
                                <label class="labels">Postcode</label>
                                <asp:TextBox ID="Postcode" runat="server" class="form-control" placeholder="postcode"></asp:TextBox>
                                <%--<input type="number" class="form-control" placeholder="pincode" value="" />--%>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6">
                                <label class="labels">Country</label>
                                <asp:TextBox ID="Country" runat="server" class="form-control" placeholder="country"></asp:TextBox>
                                <%--<input type="text" class="form-control" placeholder="country" value="" />--%>
                            </div>
                            <div class="col-md-6">
                                <label class="labels">State/Region</label>
                                <asp:TextBox ID="State" runat="server" class="form-control" placeholder="state"></asp:TextBox>
                                <%--<input type="text" class="form-control" value="" placeholder="state" />--%>
                            </div>
                        </div>
                        <div class="mt-5 text-center">
                            <asp:Button ID="UpdateProfile" runat="server" Text="Update Profile" class="btn btn-primary profile-button" OnClick="UpdateProfile_Click" />
                            <%--<button class="btn btn-primary profile-button" type="button">Save Profile</button>--%>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="p-3 py-5">
                        <br />
                        <br />

                        <div class="col-md-12">
                            <label class="labels">Date of Birth : </label>
                            <asp:TextBox ID="TextBox10" runat="server" class="form-control" placeholder="DOB"></asp:TextBox>
                            <%--<input type="text" class="form-control" placeholder="Date of Birth" value="" />--%>
                        </div>
                        <div class="col-md-12">
                            <label class="labels">Age </label>
                            <asp:TextBox ID="TextBox14" runat="server" class="form-control" placeholder="age"></asp:TextBox>
                            <%--<input type="text" class="form-control" placeholder="Age" value="" />--%>
                        </div>
                        <br />
                        <div class="d-flex justify-content-between align-items-center experience">
                            <span>Change Password</span>
                            <!-- <span class="border px-3 p-1 add-experience"><i class="fa fa-plus"></i>&nbsp;Experience</span> -->
                        </div>
                        <hr />
                        <div class="col-md-12">
                            <label class="labels">Old password</label>
                            <asp:TextBox ID="TextBox11" runat="server" class="form-control" placeholder="old password"></asp:TextBox>
                            <%--<input type="password" class="form-control" placeholder="old password" value="" />--%>
                        </div>
                        <div class="col-md-12">
                            <label class="labels">New password</label>
                            <asp:TextBox ID="TextBox12" runat="server" class="form-control" placeholder="new password"></asp:TextBox>
                            <%--<input type="password" class="form-control" placeholder="new password" value="" />--%>
                        </div>
                        <div class="col-md-12">
                            <label class="labels">Conform Password</label>
                            <asp:TextBox ID="TextBox13" runat="server" class="form-control" placeholder="conform password"></asp:TextBox>
                            <%--<input type="password" class="form-control" placeholder="conform Password" value="" />--%>
                        </div>
                        <br />
                        <div class="col-md-12">
                            <asp:Button ID="Button1" runat="server" Text="Change password" class="btn btn-primary profile-button" OnClick="Button1_Click" />
                            <%--<button class="btn btn-primary profile-button" type="button">Change password</button>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
