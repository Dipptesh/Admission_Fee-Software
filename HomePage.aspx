<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HomePage.aspx.vb" Inherits="WebApplication1.HomePage" %>

<!DOCTYPE html>

<html>
<head runat="server">
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    O7 Services Home
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <style>
        .button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
        .button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #3659F3;
  color: white;
}
    </style>
</head>

<body>
    <h2 style="text-align:center; font-size:500%">O7 Services</h2>
    <div>
        <div>
            <button id="Admin" class="button button2" style="margin-left:10%;padding:7%;font-size:40px;font-family: Montserrat"><b>ADMIN</b>
                <script type="text/javascript">
                    document.getElementById("Admin").onclick = function () {
                        location.href = "AdminLogin.aspx";
                    };
                </script>
            </button>
            <button id="Accountant" class="button button2" style="margin-left:20%;padding:7%;font-size:40px;font-family: Montserrat"><b>ACCOUNTANT</b>
                <script type="text/javascript">
                    document.getElementById("Accountant").onclick = function () {
                        location.href = "AccountantLogin.aspx";
                    };
                </script>
            </button>
        </div>
    </div>
</body>
</html>
