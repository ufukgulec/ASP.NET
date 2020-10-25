<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASP.NET_FormElemanlari.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 305px; width: 263px; margin-left: 200px">
            Bir ifade giriniz:<br />
            <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Height="67px" TextMode="MultiLine" Width="256px"></asp:TextBox>
            <br />
            Yazını Boyutu:<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="263px">
            </asp:DropDownList>
            <br />
            Fontlar:<br />
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="63px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="264px">
                <asp:ListItem>Times New Roman</asp:ListItem>
                <asp:ListItem>Arial</asp:ListItem>
                <asp:ListItem>Tahoma</asp:ListItem>
                <asp:ListItem>Helvetica</asp:ListItem>
                <asp:ListItem>Courier New</asp:ListItem>
                <asp:ListItem>Verdana</asp:ListItem>
                <asp:ListItem>Courier</asp:ListItem>
                <asp:ListItem>Calibri</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700" Text="B" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-style: italic" Text="I" />
&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="text-decoration: underline" Text="U" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
