<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="ASP.NET_Login.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="jumbotron" style="text-align:center">
  <h1 class="display-4">Merhaba, Dünya!</h1>
  <p class="lead">Bu bir asp.net projesidir. Giriş ve kayıt tutma örneğidir. Bootstrap ve SQL kullanılmıştır.</p>
  <hr class="my-4">
  <p>Önceden kayıt olduysanız Giriş Yap'a olmadıysanız kendinizi veri tabanına kaydetmek için Kayıt Ol'a basınız.</p>
                <asp:Button ID="giris" class="btn btn-primary btn-lg" runat="server" Text="Giriş Yap" OnClick="giris_Click" />
                <asp:Button ID="kayit" class="btn btn-primary btn-lg" runat="server" Text="Kayıt Ol" OnClick="kayit_Click" />
</div>
        </div>
    </form>

</body>
</html>