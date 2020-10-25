<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASP.NET_ValidasyonKontrolleri.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Adınız:<br />
            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Boş Bırakılamaz !" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Yaşınız:<br />
            <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Yaşınız uygun değildir !" ForeColor="Red" MaximumValue="50" MinimumValue="10"></asp:RangeValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Boş Bırakılamaz !" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Mail Adresiniz:<br />
            <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Uygun mail adresi girin!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Boş Bırakılamaz !" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Mesajınız:<br />
            <asp:TextBox ID="TextBox4" runat="server" Height="160px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Boş mesaj !" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" Width="204px" />
        </div>
    </form>
</body>
</html>
