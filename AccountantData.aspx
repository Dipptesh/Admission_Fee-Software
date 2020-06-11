<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AccountantData.aspx.vb" Inherits="WebApplication1.AccountantData" %>

<!DOCTYPE html>

<html>
<head runat="server">
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Accountant Data
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link href="Css/Font1.css" rel="stylesheet" />
    <link href="Css/all(Fonts).css" rel="stylesheet"/>
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
    <link href="Css/buttons.css" rel="stylesheet" />
    <link href="Css/searchbar.css" rel="stylesheet" />
    <link href="Css/enquiryform.css" rel="stylesheet" />
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
          Accountant
        </a>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
          <li class="active">
            <a href="AcccountantData.aspx">
              <p style="text-align:center">Accountant Data</p>
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
       <div class="main-panel" id="main-panel">
      <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
          <form runat="server" id="Form2">
             <asp:TextBox ID="asearch" runat="server" placeholder="Search Students/ Department/ Fees " OnDataBinding="asearchbtn_Click" Width="75%"></asp:TextBox>
             <asp:Button ID="asearchbtn" runat="server" Text="Search" />&nbsp<asp:Button ID="arefresh" runat="server" Text="Refresh" /><br /><br />
              <div>
                  <asp:GridView ID="aGridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="stud_no" ShowFooter="True" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                      <Columns>
                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                          <asp:BoundField DataField="stud_no" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="stud_no" />
                          <asp:BoundField DataField="stud_name" HeaderText="Name" SortExpression="stud_name" />
                          <asp:BoundField DataField="stud_dep" HeaderText="Department" SortExpression="stud_dep" />
                          <asp:BoundField DataField="stud_cour" HeaderText="Course" SortExpression="stud_cour" />
                          <asp:BoundField DataField="stud_fee" HeaderText="Fees" SortExpression="stud_fee" />
                          <asp:BoundField DataField="stud_feesdue" HeaderText="Due Fees" SortExpression="stud_feesdue" />
                          <asp:BoundField DataField="stud_Ph" HeaderText="Contact Number" SortExpression="stud_Ph" />
                          <asp:BoundField DataField="stud_gender" HeaderText="Gender" SortExpression="stud_gender" />
                          <asp:BoundField DataField="stud_accom" HeaderText="Accomodation" SortExpression="stud_accom" />
                      </Columns>
                      <FooterStyle BackColor="White" ForeColor="#000066" />
                      <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                      <RowStyle ForeColor="#000066" />
                      <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                      <SortedAscendingHeaderStyle BackColor="#007DBB" />
                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                      <SortedDescendingHeaderStyle BackColor="#00547E" />
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-NIO713H;Initial Catalog=o7services;Integrated Security=True" DeleteCommand="DELETE FROM [student] WHERE [stud_no] = @stud_no" InsertCommand="INSERT INTO [student] ([stud_Ph], [stud_fee], [stud_dep], [stud_cour], [stud_name], [stud_duration], [stud_gender], [stud_feesdue], [stud_accom]) VALUES (@stud_Ph, @stud_fee, @stud_dep, @stud_cour, @stud_name, @stud_duration, @stud_gender, @stud_feesdue, @stud_accom)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [student]" UpdateCommand="UPDATE [student] SET [stud_Ph] = @stud_Ph, [stud_fee] = @stud_fee, [stud_dep] = @stud_dep, [stud_cour] = @stud_cour, [stud_name] = @stud_name, [stud_duration] = @stud_duration, [stud_gender] = @stud_gender, [stud_feesdue] = @stud_feesdue, [stud_accom] = @stud_accom WHERE [stud_no] = @stud_no">
                      <DeleteParameters>
                          <asp:Parameter Name="stud_no" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="stud_Ph" Type="Int32" />
                          <asp:Parameter Name="stud_fee" Type="Int32" />
                          <asp:Parameter Name="stud_dep" Type="String" />
                          <asp:Parameter Name="stud_cour" Type="String" />
                          <asp:Parameter Name="stud_name" Type="String" />
                          <asp:Parameter Name="stud_duration" Type="Int32" />
                          <asp:Parameter Name="stud_gender" Type="String" />
                          <asp:Parameter Name="stud_feesdue" Type="Int32" />
                          <asp:Parameter Name="stud_accom" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="stud_Ph" Type="Int32" />
                          <asp:Parameter Name="stud_fee" Type="Int32" />
                          <asp:Parameter Name="stud_dep" Type="String" />
                          <asp:Parameter Name="stud_cour" Type="String" />
                          <asp:Parameter Name="stud_name" Type="String" />
                          <asp:Parameter Name="stud_duration" Type="Int32" />
                          <asp:Parameter Name="stud_gender" Type="String" />
                          <asp:Parameter Name="stud_feesdue" Type="Int32" />
                          <asp:Parameter Name="stud_accom" Type="String" />
                          <asp:Parameter Name="stud_no" Type="Int32" />
                      </UpdateParameters>
                  </asp:SqlDataSource><br /><br />
              </div>
          </form>  
            
        </div>
      </nav>
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