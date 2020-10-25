<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Cikar.aspx.cs" Inherits="ASP.NET_VeriTabaniÖrnegi.Cikar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
           
            width: 50%;
            height: 198px;
            margin:auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sorgu" class="auto-style1">
        <strong>Silmek istediğiniz kişinin adını giriniz:</strong><br />
        <asp:TextBox ID="TextBox1" runat="server" Width="212px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ara" Width="220px" />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table] WHERE ([Ad] = @Ad)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="" Name="Ad" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyField="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="221px">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="#333333" />
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Ad:
                <asp:Label ID="AdLabel" runat="server" Text='<%# Eval("Ad") %>' />
                <br />
                Soyad:
                <asp:Label ID="SoyadLabel" runat="server" Text='<%# Eval("Soyad") %>' />
                <br />
                Eposta:
                <asp:Label ID="EpostaLabel" runat="server" Text='<%# Eval("Eposta") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Çıkar" Visible="False" OnClick="Button2_Click" />
    </div>
    </asp:Content>
