<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminLogin.aspx.vb" Inherits="WebApplication1.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>O7 Services Admin Login</title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <link href="Css/css.css" rel="stylesheet" />
  <link href="Css/all.css" rel="stylesheet" />
  <link href="Css/bootstrap.min.css" rel="stylesheet" />
  <link href="Css/now-ui-dashboard.css" rel="stylesheet" />
  <link href="Css/LoginTextBox.css" rel="stylesheet" />
  <link href="Css/demo.css" rel="stylesheet" />
    <style>
    #link { color: #000000 }
    </style>
</head>
<body class="login" runat ="server">
 <div class="wrapper ">   
    <div class="main-panel" id="main-panel">
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header" style="text-align:right; font-size:16px" >Hello!..</div>
              <div class="card-body">
               <div class="row">
                   <div class="col-md-6">
                  <img src="Images/login.png" />
                </div>
<form id="form1" runat="server">
<div class="col-md-6">      
                  <div class="row">
                    <div class="col-md-12">
                      <h2>Welcome to Admin Login........</h2>
                      <p>This project is an Admission cum Fee Software for an 
                        Institute/ Training Center. Admin can register the students.
                        There are various courses with different durations.
                      </p>
                        <p>&nbsp;</p>
                    </div>
                  </div>
<div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
<asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="Username"/>
<%--<asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" ControlToValidate="txtUserName" runat="server" />--%>
 </div>
                        </div>
                    </div>
                   
</div>
<div class="row" style="margin-left:367px">
                    <div class="col-md-4">
                        <div class="form-group">
                            
<asp:TextBox ID="txtPWD" runat="server" TextMode="Password" class="form-control" Width="340px" placeholder="Password"/>
<%--<asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txtPWD" ErrorMessage="Please enter Password"/>--%>
 </div>
                   
    </div>
                  </div>
<div class="row">
                    <div class="col-md-12">
<div class="form-group" style="margin-left:500px">
                        <div class="col-md-offset-8 col-md-12">
           <asp:ImageButton ID="loginbtn" runat="server" onclick="btnSubmit_Click" ImageUrl="Images/SignInButton.png"/>
</div>
    </div>
                        </div>
                  </div>
                    </form>
 </div>
               </div>
              </div>
            </div>
          </div>
        </div>
     </div>
     </div>
    <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <script src="../assets/js/plugins/chartjs.min.js"></script>
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <script src="../assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script>
  <script src="../assets/demo/demo.js"></script>
</body>
</html>