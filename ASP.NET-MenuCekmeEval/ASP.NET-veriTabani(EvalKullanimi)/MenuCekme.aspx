<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuCekme.aspx.cs" Inherits="ASP.NET_veriTabani_EvalKullanimi_.MenuCekme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server" style="width:130px; margin:auto;">
        <div style="width:auto">
            <asp:DataList ID="DataList1" runat="server" >
                <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" class="btn btn-dark" Text='<%# Eval("KategoriAd") %>' UseSubmitBehavior="False" OnClick="Button1_Click" Width="130px"  />
                </ItemTemplate>  
            </asp:DataList>
            <br />
            <asp:DataList ID="DataList2" runat="server">
                <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" class="btn btn-outline-dark" Text='<%# Eval("turAd") %>' UseSubmitBehavior="False" OnClick="Button1_Click" Width="130px" />
                </ItemTemplate>  
            </asp:DataList>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
