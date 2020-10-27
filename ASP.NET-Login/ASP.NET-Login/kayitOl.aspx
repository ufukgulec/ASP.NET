<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayitOl.aspx.cs" Inherits="ASP.NET_Login.kayitOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:300px; height:auto; margin:100px auto auto auto">
            <div class="form-group">
                <label for="exampleInputPassword1">Adınız</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="isim" ErrorMessage="Boş Bırakılamaz" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox type="text" class="form-control" id="isim" runat="server"></asp:TextBox>
                <label for="exampleInputPassword1">Soyadınız</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="soyisim" ErrorMessage="Boş Bırakılamaz" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox type="text" class="form-control" id="soyisim" runat="server"></asp:TextBox>
            </div>
  <div class="form-group">
    <label for="exampleInputEmail1">E-posta adresiniz</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Eposta" ErrorMessage="Boş Bırakılamaz" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox type="email" class="form-control" id="Eposta" aria-describedby="emailHelp" runat="server"></asp:TextBox>
    <small id="emailHelp" class="form-text text-muted">E-postanızı asla başkalarıyla paylaşmayacağız.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Parolanız</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Parola" ErrorMessage="Boş Bırakılamaz" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox type="password" class="form-control" id="Parola" runat="server"></asp:TextBox>
  </div>
            <asp:Button type="submit" class="btn btn-primary" ID="giris" runat="server" Text="Kayıt Ol" OnClick="giris_Click" />
             <asp:Button type="submit" class="btn btn-primary" ID="Anasayfa" runat="server" Text="Anasayfa" OnClick="Button1_Click" Visible="False" />
        </div>
    </form>
</body>
</html>
