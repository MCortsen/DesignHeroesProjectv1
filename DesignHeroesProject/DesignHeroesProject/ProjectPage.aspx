<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectPage.aspx.cs" Inherits="DesignHeroesProject.ProjectPage"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Dashboard</title>
    <meta name="description" content="Best cards in CSS">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon-160x160.png" sizes="160x160">
    <!-- Place favicon.ico in the root directory -->
    <link rel="stylesheet" href="Content/Main.css">
    <link rel="stylesheet" href="Content/Checkbox.css">
    <link href="Content/Modal.css" rel="stylesheet">
    <script defer src="Modal.js"></script>  
</head>

<body>
    <div class="sidebar">
        <button onclick="location.href = 'Dashboard.aspx';" class="btn"><img src="https://image.flaticon.com/icons/svg/467/467272.svg" width="1" height="60" alt=""></i><h3></h3></button>
                <br>
<button class="btn2" id="CheckInButton" runat="server" onserverclick="CheckInButton_Click"><img src="https://image.flaticon.com/icons/png/512/1131/1131876.png" width="" height=""  alt=""></i><h3>Check-in</h3></button>
        <br />
 <button class="btn3" id="CheckOutButton" runat="server" onserverclick="CheckOutButton_Click"><img src="https://image.flaticon.com/icons/png/512/1131/1131876.png" width="" height=""  alt=""></i><h3>Check-Out</h3></button>
        <br />
       
       
</div>

<div class="container" id="projectcontainer" >
  <form id="form" runat="server">
        
  <div class="row" >
    <div class="col-label";>
      <label for="lbtitle">Title:</label>
    </div>
    <div class="col-placeholder">
      <label id="TitleLabel" runat="server" style="color:white"></label>
        <input style="width: 150px;" type="text" runat="server" id="TitleInput" />
    </div>
  </div>
<div class="row">
    <div class="col-label">
      <label for="lbprojectlead">Project Lead:</label>
    </div>
    <div class="col-placeholder">
      <label id="ProjectLeadLabel" runat="server" style="color:white"></label> 
        <asp:DropDownList runat="server" ID="ProjectLeadDropDown" Width="175px"></asp:DropDownList>
    </div>
  </div>
      <div class="row">
    <div class="col-label">
      <label for="lbclient">Client:</label>
    </div>
    <div class="col-placeholder">
      <label id="ClientLabel" runat="server" style="color:white"></label>
        <input type="text" runat="server" id="ClientInput" style="Width:150px;" />
    </div>
  </div>
      
<div class="row">
    <div class="col-label">
      <label for="lbcvr">CVR:</label>
    </div>
    <div class="col-placeholder">
      <label id="CvrLabel" runat="server" style="color:white"></label> 
        <input style="width: 150px;" type="text" runat="server" id="CvrInput" />
    </div>
  </div>

<div class="row">
    <div class="col-label">
      <label for="lbstartdate">Start Date:</label>
    </div>
    <div class="col-placeholder">
      <label id="StartDateLabel" runat="server" style="color:white; width:150px;"></label>
        <input style="width: 150px;" type="Date" runat="server" id="StartDateInput" />
    </div>
  </div>
<div class="row">
    <div class="col-label">
      <label for="lbenddate">End Date:</label>
    </div>
    <div class="col-placeholder">
      <label id="EndDateLabel" runat="server" style="color:white; display:inline; width:100px;"></label>
        <input style="width: 150px;" type="Date" runat="server" id="EndDateInput" />
    </div>
  </div>

<div class="row">
    <div class="col-label">
      <label for="lbhoursestimate">Estimated Hours:</label>
    </div>
    <div class="col-placeholder">
      <label id="EstimatedHoursLabel" runat="server" style="color:white"></label> 
        <input style="width: 150px;" type="text" runat="server" id="EstimatedHoursInput" />
    </div>
  </div>
<div class="row">
    <div class="col-sm-12 col-label">
      <label for="lbhoursspent">Spent Hours:</label>
    </div>
    <div class="col-placeholder">
      <label id="SpentHoursLabel" runat="server" style="color:white"></label> 
        <input style="width: 150px;" type="text" runat="server" id="SpentHoursInput" />
    </div>
  </div>

  <div class="row">
    <div class="col-label">
      <label for="lbdescription">Description:</label>
    </div>
    <div class="col-placeholder">
      <label id="DescriptionLabel" runat="server" style="color:white"></label>
        <textarea style="width: 400px; height: 200px;" runat="server" id="DescriptionTextArea"></textarea>
        </div>
  </div>

          
  <br />
          
      
     <button class="btn" type="submit" style="width:140px">Save Changes</button>

  <%--<button class="center-block btn btn-primary" type="submit">
            Create</button>--%>

  <div class="AssignmentContainer">
        <div id="AssignmentDiv" runat="server">
         <ul class="list" style="list-style:none;">
  <%--<li>      
      <div>
      <input type="checkbox" id="box1" />
              <label>TOP Project Varme Æbleskiver</label>
      </div>
    </li>--%>
                   
    <%--<li>      
        <div class="CustomCheckbox1">
        <input type="checkbox"/>
      <label>TOP Project Varme Æbleskiver</label>
      </div>

         

    </li>--%>
             
             <li>      
        <%--<div class="CustomCheckbox" style="width:800px; word-break: break-all;" >
        <input type="checkbox"  id="box3"/>
      <label for="box3">TOP Project Varme ÆbleskiverTOP Project Varme ÆbleskiverTOP Project Varme ÆbleskiverTOP Project Varme ÆbleskiverTOP Project Varme Æbleskiver</label>
      </div>     --%>

    </li>
             <li>      
        <div class="CustomCheckbox">
        <asp:CheckBoxList runat="server" ID="tempchecklist" Width="850px">
            <asp:ListItem Value="" Text="Lorem ipsum dolor sit amet"></asp:ListItem><asp:ListItem Value="" Text="Lorem ipsum dolor sit amet"></asp:ListItem><asp:ListItem Value="" Text="Lorem ipsum dolor sit amet"></asp:ListItem><asp:ListItem Value="" Text="Lorem ipsum dolor sit amet"></asp:ListItem><asp:ListItem Value="" Text="Lorem ipsum dolor sit amet"></asp:ListItem>
        </asp:CheckBoxList>
       </div>
    </li> 
    </ul>
        </div>
    </div>
       
  
   
  <button data-modal-target="#modal" class="btnModalOpen" style="position:fixed; left:1400px; opacity:1;" >Create Assignment</button>
  <div class="modal" id="modal">
    <div class="modal-header">
      <div class="title">Create an Assignment</div>
      <button data-close-button ="OpenModal" class="close-button">&times;</button>
    </div>
    <div class="modal-body">

        <div class="col-label">
      <label for="Deadline">Deadline</label>
    </div>
    <div class="col-placeholder">
      <input type="date" id="Deadline" placeholder="Enter date.." style="width:170px;" >
    </div>

        <div class="col-label">
      <label for="Dropdown">Dropdown</label>
    </div>
    <div class="col-placeholder">
      <asp:dropdownlist runat="server" id="test" style="width:170px;"> 
      <asp:listitem text="Red" value="1"></asp:listitem>
     <asp:listitem text="Black" value="2"></asp:listitem>
     <asp:listitem text="Blue" value="3"></asp:listitem>
     <asp:listitem text="Green" value="4"></asp:listitem>
     <asp:listitem text="Yellow" value="5"></asp:listitem></asp:dropdownlist> 
    </div>
        <div class="col-label">
      <label for="Label">Label</label>
    </div>
    <div class="col-placeholder">
      <label for="Label">Label</label>
    </div>

      <button class="btnModalCreate" style="width:80px; height:40px; font-family:Consolas">Create</button>
    </div>
  </div>
  <div id="overlay"></div>
  </form>
   


    
</div>
</body>
</html>
