<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuthorizationPage.aspx.cs" Inherits="WebMRPO.AuthorizationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/StyleAuthorization.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>3.1 ПМИ</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="WindowAuthorizationPage">
            <asp:Label ID="lblResultName" runat="server" Text=""/>
            <div id="LabelAuthorizationPage">
                <asp:Label ID="lblLogin" runat="server" Text="Логин: " />
                <br />
                <br />
                <asp:Label ID="lblPassword" runat="server" Text="Пароль: " />
            </div>
            <div id="TextBoxAuthorizationPage">
                <asp:TextBox ID="tbLogin" runat="server" class="tb"/>
                <br />
                <br />
                <asp:TextBox ID="tbPassword" runat="server" class="tb"/>
            </div>
            <div id="ButtonAuthorizationPage">
                <asp:Button ID="btnAuthorization" runat="server" Text="Войти" OnClick="btnAuthorization_Click" class="button"/>
                <asp:Button ID="btnRegistration" runat="server" Text="Зарегистрироваться" class="button"/>
            </div>
        </div>
    </form>
</body>
</html>
