<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Ekle.aspx.cs" Inherits="ASP.NET_VeriTabaniÖrnegi.Ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:300px; margin:auto">
    <p>
    Ad:</p>
<p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Boş Bırakılamaz !"></asp:RequiredFieldValidator>
</p>
<p>
    Soyad:</p>
<p>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Boş Bırakılamaz !"></asp:RequiredFieldValidator>
</p>
<p>
    E-posta:</p>
<p>
    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Yanlış Eposta !" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</p>
<p>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
</p>
        </div>
</asp:Content>
