<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Veriler.aspx.cs" Inherits="ASP.NET_VeriTabaniÖrnegi.Veriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
    <div style="text-align:center; font-size:20px"><b>Kişi listesi</b><br />
        <asp:GridView style="margin:auto" ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
&nbsp;</div>
</asp:Content>
