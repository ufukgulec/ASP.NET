<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="adonet.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="slayt" class="row">
        <div class="w3-content w3-display-container">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <img class="mySlides" src="<%#Eval("resimYol") %>" style="width: 100%">
                </ItemTemplate>
            </asp:Repeater>

            <a class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</a>
            <a class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</a>
        </div>
    </div>
    <br />
    <div id="favoriler" class="row">
        <div class="col-md-12 m-3 alert alert-dark text-center font-weight-bold" role="alert">
           En Çok Beğenilen Ürünlerimiz
        </div>
        <asp:ListView ID="ListViewUrunler" runat="server">
            <ItemTemplate>
                <div class="card col-sm-6 col-md-6 p-1 m-0" style="width: 18rem;">
                    <img src="<%#Eval("resimYol") %>" class="img-thumbnail" alt="<%#Eval("urunAd") %>">
                    <div class="card-body">
                        <h5 class="card-title font-weight-bold"><%#Eval("urunAd") %></h5>
                        <p class="card-text"><%#Eval("urunAciklama") %></p>
                        <a href="#" type="button" class="btn btn-outline-danger btn-block">Beğeni Sayısı  <span class="badge badge-danger"><%#Eval("begeniSayisi") %></span>
                        </a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

