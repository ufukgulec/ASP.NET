<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HesapMakinesi.aspx.cs" Inherits="ASP.NET_HesapMakinesi.HesapMakinesi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            BİRİNCİ SAYI:&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            İKİNCİ SAYI:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            SONUÇ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Topla" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Çıkar" />
&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Çarp" />
&nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Böl" />
        </div>
    </form>
</body>
</html>
