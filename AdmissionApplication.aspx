<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdmissionApplication.aspx.vb" Inherits="WebApplication1.AdmissionApplication" %>

<!DOCTYPE html>

<html>
<head runat="server">
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Admission Application
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link href="Css/Font1.css" rel="stylesheet" />
    <link href="Css/all(Fonts).css" rel="stylesheet"/>
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
    <link href="Css/enquiryform.css" rel="stylesheet" />
    <link href="Css/buttons.css" rel="stylesheet" />
    <link href="Css/now-ui-dashboard.css" rel="stylesheet" />
    <link href="Css/demo.css" rel="stylesheet" />
</head>
<body class="user-profile">
  <div class="wrapper ">
    <div class="sidebar" data-color="orange">
         <div class="logo">
        <a class="simple-text logo-mini">
          O7
        </a>
        <a class="simple-text logo-normal">
          Admin
        </a>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
          <li id="Dashboard">
            <a href="Dashboard.aspx">
              <p style="text-align:center">Dashboard</p>
            </a>
          </li>
          <li id="Enquiry">
            <a href="Enquiry.aspx">
              <p style="text-align:center">Enquiry</p>
            </a>
          </li>
          <li id="Admission" class="active">
            <a href="Admission.aspx">
              <p style="text-align:center">Admission</p>
            </a>
          </li>
          <li id="Manage_Data">
            <a href="ManageData.aspx">
              <p style="text-align:center">Manage Data</p>
            </a>
          </li>
          <li id="SignOut">
            <a href="HomePage.aspx">
              <p style="text-align:center">Sign Out</p>
            </a>
          </li>
        </ul> 
      </div>
    </div>
      <div class="main-panel" id="main-panel">
      <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
      </nav>
      <div class="panel-header panel-header-sm">
      </div>
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header" ><hr />
                <div class="container, textarea">                           
            <form id="Sform" runat ="server" >
            <h5>Student Application</h5>
            
                <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label><br />
                <asp:TextBox ID="sname" runat="server"></asp:TextBox><br/>

            
                <asp:Label ID="Label2" runat="server" Text="Department"></asp:Label><br />
                <asp:TextBox ID="dname" runat="server"></asp:TextBox><br/>

            
                <asp:Label ID="Label3" runat="server" Text="Course"></asp:Label><br/>
                <asp:TextBox ID="cname" runat="server"></asp:TextBox><br/>

            
                <asp:Label ID="Label4" runat="server" Text="Duration"></asp:Label><br/>
                <asp:TextBox ID="duration" runat="server"></asp:TextBox><br/>

            
                <asp:Label ID="Label5" runat="server" Text="Fees"></asp:Label><br />
                <asp:TextBox ID="Fees" runat="server"></asp:TextBox><br/><br />

            
                <asp:Label ID="lebel20" runat="server" Text="Gender"></asp:Label><br />
                <asp:RadioButton ID="male" GroupName ="gender" runat="server" Checked="True" />
                <asp:Label ID="Label7" runat="server" Text="Male"></asp:Label>
                <asp:RadioButton ID="female" GroupName ="gender" runat="server" />
                <asp:Label ID="Label8" runat="server" Text="Female"></asp:Label><br /><br />

                <asp:Label ID="label30" runat="server" Text="Accomodation"></asp:Label><br />
                <asp:RadioButton ID="Yes" GroupName ="accomodation" runat="server" />
                <asp:Label ID="Label10" runat="server" Text="Yes"></asp:Label>
                <asp:RadioButton ID="No" GroupName ="accomodation" runat="server" Checked="True" />
                <asp:Label ID="Label11" runat="server" Text="No"></asp:Label><br /><br />

                <asp:Button ID="submit" runat="server" Text="Submit" />

            </form>
            </div>       
        </div>
             </div>
          </div>
        </div>
      </div>
    </div>
  </div>
        <script src="Scripts/jquery.min.js"></script>
        <script src="Scripts/Popper.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
        <script src="Scripts/perfect-scrollbar.jquery.min.js"></script>
        <script src="Scripts/chartjs.min.js"></script>
        <script src="Scripts/bootstrap-notify.js"></script>
        <script src="Scripts/WebFormsScript/now-ui-dashboard.js" type="text/javascript"></script>
        <script src="Scripts/demo.js"></script>
</body>
</html>