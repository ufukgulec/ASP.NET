<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giristenSonra.aspx.cs" Inherits="ASP.NET_Login.giristenSonra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%; height:auto; float:left;">
            <div class="card" style="width: 18rem; margin:auto">
  <img src="https://www.flaticon.com/svg/static/icons/svg/64/64572.svg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h5>
    <p class="card-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></li>
    <li class="list-group-item">ASP.NET</li>
    <li class="list-group-item">SQL SERVER</li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
</div>
        </div>
    </form>
</body>
</html>
