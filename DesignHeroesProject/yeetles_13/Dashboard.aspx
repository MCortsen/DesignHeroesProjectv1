<%@ Page Title="Dashboard" Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="yeetles_13.Dashboard" %>

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
    <script defer src="scriptDashBoard.js"></script>
    <script type="text/javascript">
        function notificationPermission(e) {
            e.preventDefault();

            if (!window.Notification) {
                alert('Notifications are not supported for this browser');
            }
            else {
                Notification.requestPermission(function (p) {
                    if (p === 'denied') {
                        alert('You have denied notifications');
                    }
                    else if (p === 'granted') {
                        alert('You have granted notifications');
                    }
                });
            }
        };
        window.onload = notificationPermission;
    </script>
</head>
<body>
    <a href="#" id="sendNotification">Send Notification</a>


    


    <div class="sidebar">
        <button onclick="location.href = 'Default.aspx';" class="btn"><img src="<%--Images/logout.svg--%>https://image.flaticon.com/icons/svg/467/467272.svg" alt="" width="10" height="60" ></i><h3>Exit</h3></button>
        <br />
        <button onclick="location.href = 'UserPage.aspx';"class="btn"><img src='https://image.flaticon.com/icons/svg/126/126486.svg' alt="" width="100" height="70"></i><h3>User</h3></button>
       <br>
<button id="UserCreateButton" runat="server" onclick="location.href = 'UserCreatePage.aspx';" class="btn"><img src="https://image.flaticon.com/icons/svg/1665/1665578.svg" alt=""width="100" height="30"></i><h3>Add User</h3></button>

               <br>
              
<button id="CreateProjectButton" runat="server" onclick="location.href = 'CreateProjectPage.aspx';" class="btn"><img src="https://image.flaticon.com/icons/svg/1665/1665578.svg" alt=""width="100" height="30"></i><h3>Create Project</h3></button>
          <br>
        <button onclick="location.href = 'ProjectPage.aspx';" class="btn"><img src="https://image.flaticon.com/icons/png/512/681/681662.png" height="90" alt=""></i><h3>Project</h3></button>

</div>

    <div>
     <div class="container" id="ContentDiv" runat="server">


        </div>
</div>
      
    <script type="text/javascript">
        var sendNotification = document.getElementById('sendNotification');

        // Notification event
        sendNotification.addEventListener('click', function (e) {
            var notify;

            e.preventDefault();

            if (Notification.permission === 'default') {
                alert('Please allow notifications before doing this')
            }
            else {
                notify = new Notification('Designheroes',
                    {
                        body: 'A new project have been added to your archieve',
                        icon: 'Images/dh.png',
                        //tag: '123456' //Only needed if you want to redirect to another page with the notify.onclick function below or stop multiple of the same notification
                        //from popping up
                    });

                notify.onclick = function () {
                    //window.location = 'yeetles' + this.tag
                }

            }
        });

    </script>

    
 
        
       

</body>

</html>
