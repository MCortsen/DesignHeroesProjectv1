﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserCreatePage.aspx.cs" Inherits="DesignHeroesProject.UserCreatePage" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Cards Group</title>
    <meta name="description" content="Best cards in CSS">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon-160x160.png" sizes="160x160">
    <!-- Place favicon.ico in the root directory -->
    <link rel="stylesheet" href="Content/Main.css">
    <link rel="stylesheet" href="Content/Checkbox.css">
    
</head>

<body>
    <div class="sidebar">
        <button onclick="location.href = 'Dashboard.aspx';" class="btn"><img src="https://image.flaticon.com/icons/svg/467/467272.svg" width="1" height="60" alt=""></i><h3></h3></button>
       
        <%--<br>--%>
<%--<button class="btn"><img src="https://image.flaticon.com/icons/svg/1665/1665578.svg" alt=""></i><h3>Add User</h3></button>--%>
</div>

<div class="container" id="projectcontainer">
  <form id="form" runat="server">
  <div class="row">
    <div class="col-label">
      <label for="lbname">Full Name</label>
    </div>
    <div class="col-placeholder">
      <input runat="server" type="text" id="FullNameTextBox" placeholder="Enter full name.." style="width:150px;" >
    </div>
  </div>
<div class="row">
    <div class="col-label">
      <label for="lbphonenumber">Phone Number</label>
    </div>
    <div class="col-placeholder">
      <input runat="server" type="text" id="PhoneNumbeTextBox"  placeholder="Enter phone number.." style="width:150px;" >
    </div>
  </div>
      <div class="row">
    <div class="col-label">
      <label for="lbclient">Email address</label>
    </div>
    <div class="col-placeholder">
      <input runat="server" type="text" id="EmailTextBox" placeholder="Enter email.." style="width:150px;" >
    </div>
  </div>
      <div class="row">
    <div class="col-label">
      <label for="lbclient">User Name</label>
    </div>
    <div class="col-placeholder">
      <input type="text" id="UserNameTextBox" runat="server" placeholder="Enter user name.." style="width:150px;" >
    </div>
  </div>
      <div class="row">
    <div class="col-label">
      <label for="lbclient">Password</label>
    </div>
    <div class="col-placeholder">
      <input type="text" id="PasswordTextBox" runat="server" placeholder="Enter password.." style="width:150px;" >
    </div>
  </div>
      <br />
      <div class="row">
    <div class="col-label">
        <div class="CustomCheckbox">
            <input id="AdminCheckBox" type="checkbox" runat="server"/>
      <label for="box4">Is Admin</label>
              </div>
    </div>

        


    <div class="col-placeholder">
      
    </div>
  </div>
      <br />
  <asp:button class="center-block btn btn-primary" type="submit" Text="Create" runat="server" ID="CreateUserButton" OnClick="CreateUserButton_Click" style="width:120px"/>
  </form>
    
</div>
</body>
</html>
