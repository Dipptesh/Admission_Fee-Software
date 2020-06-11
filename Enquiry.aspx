<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Enquiry.aspx.vb" Inherits="WebApplication1.Enquiry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Enquiry
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link href="Css/Font1.css" rel="stylesheet" />
    <link href="Css/all.css" rel="stylesheet"/>
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
    <link href="Css/enquiryform.css" rel="stylesheet" />
    <link href="Css/now-ui-dashboard.css" rel="stylesheet" />
    <link href="Css/demo.css" rel="stylesheet" />
</head>
<body>
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
          <li>
            <a href="Dashboard.aspx">
              <p style="text-align:center">Dashboard</p>
            </a>
          </li>
          <li class="active">
            <a href="Enquiry.aspx">              
              <p style="text-align:center">Enquiry</p>
            </a>
          </li>
          <li>
            <a href="AdmissionApplication.aspx">              
              <p style="text-align:center">Admission</p>
            </a>
          </li>
          <li>
            <a href="ManageData.aspx">              
              <p style="text-align:center">Manage Data</p>
            </a>
          </li>
          <li>
            <a href="HomePage.aspx">
              <p style="text-align:center">Sign Out</p>
            </a>
          </li>
        </ul> 
      </div>
   </div>
    <div class ="wrapper">
    <div class="main-panel" id="main-panel">
     <div class="container">
      <form id="eform" runat ="server" >
            <asp:Label ID="Name" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="fname" runat="server" placeholder="First Name"></asp:TextBox>

            <asp:Label ID="clg" runat="server" Text="College"></asp:Label>
            <asp:TextBox ID="college" runat="server" placeholder="Enter College.."></asp:TextBox>
            
            <asp:Label ID="number" runat="server" Text="Contact Number"></asp:Label>
            <asp:TextBox ID="cnumber" runat="server" placeholder="Your Contact Number.."></asp:TextBox>
            
            <asp:Label ID="eaddress" runat="server" Text="Email Address"></asp:Label>
            <asp:TextBox ID="email" runat="server" placeholder="Your Email Address.."></asp:TextBox>
            
            <asp:Label ID="coun" runat="server" Text="Country"></asp:Label>
            <asp:TextBox ID="country" runat="server" placeholder="Your Country.."></asp:TextBox>
            
            <asp:Label ID="cou" runat="server" Text="Course"></asp:Label>
            <asp:TextBox ID="course" runat="server" placeholder="Enter Course.."></asp:TextBox>
            
            <asp:Label ID="dur" runat="server" Text="Duration"></asp:Label>
            <asp:TextBox ID="duration" runat="server" placeholder="Enter Duration.."></asp:TextBox>
            
            <asp:Button ID="esubmit" runat="server" Text="Submit" />
       </form> 
   </div>
  </div>
        </div>
       
        <script src="Scripts/jquery.min.js"></script>
        <script src="Scripts/Popper.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
        <script src="Scripts/perfect-scrollbar.jquery.min.js"></script>
        <script src="Scripts/chartjs.min.js"></script>
        <script src="Scripts/bootstrap-notify.js"></script>
        <script src="Scripts/WebFormsScript/now-ui-dashboard.min.js" type="text/javascript"></script>
        <script src="Scripts/demo.js"></script>
</body>
</html>
