<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Dashboard.aspx.vb" Inherits="WebApplication1.Dashboard" %>

<!DOCTYPE html>

<html>
<head runat="server">
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Dashboard
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link href="Css/Font1.css" rel="stylesheet" />
    <link href="Css/all(Fonts).css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
    <link href="Css/now-ui-dashboard.css" rel="stylesheet" />
    <link href="Css/demo.css" rel="stylesheet" />
</head>
<body class="login">
<style>
    #shadow {
        box-shadow:2px 3px #D8D7D7;
    }
</style>
  <div class="wrapper ">
    <div class="main-panel" id="main-panel">
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header text-center">
                <div class="font-icon-list">
                  <div class="font-icon-detail">
                      <div class="flex">
                        <h6 style="color:#515A5A"><b>Choose Module</b></h6>
                      </div>
                  </div>
                </div>
              <div class="card-body all-icons">
                <div class="row">
                  <div id="Enquiry1" class="font-icon-list col-sm-6 col-xs-6">
                    <div class="font-icon-detail" id="shadow">
                      <div class="flex">
                      <a href="Enquiry.aspx">
                      <p>1. Enquiry</p>
                      </a>
                      <img src="Images/enquiry.png" runat="server" role="button" tabindex="0"/>
                    </div>
                    </div>
                  </div>
                  <div id="Admission" class="font-icon-list col-sm-6 col-xs-6">
                    <div class="font-icon-detail" id="shadow">
                      <div class="flex">
                      <a href="AdmissionApplication.aspx">
                        <p>2. Admission</p>
                      </a>
                      <img src="Images/admission.png" runat="server" role="button" tabindex="0"/>
                       </div>
                    </div>
                  </div>
                  <div id="Manage_Data" class="font-icon-list col-sm-12 col-xs-6">
                    <div class="font-icon-detail" id="shadow">
                      <div class="flex">
                      <a href="ManageData.aspx">
                      <p>3. Manage Data</p>
                      </a>
                       <img src="Images/ManageData.png" runat="server" role="button" tabindex="0"/>
                      </div>
                    </div>
                  </div>
                    <div class="col-md-offset-11">
                        <a href="HomePage.aspx">
                        <input type="image" id="SignOut" src="Images/SignInButton.png" style="height:35px;width:40px;font-size:14px;text-align:center" runat="server" role="button" tabindex="0"/>
                        </a>                   
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <footer class="footer">
        <div class=" container-fluid ">
        </div>
      </footer>
    </div>
  </div>
</div>
        <script src="Scripts/jquery.min.js"></script>
        <script src="Scripts/jquery-1.10.2.min.js"></script>
        <script src="Scripts/Popper.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
        <script src="Scripts/perfect-scrollbar.jquery.min.js"></script>
        <script src="Scripts/WebFormsScript/js.js"></script>
        <script src="Scripts/chartjs.min.js"></script>
        <script src="Scripts/bootstrap-notify.js"></script>
        <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
        <script src="Scripts/demo.js"></script>
</body>
</html>
