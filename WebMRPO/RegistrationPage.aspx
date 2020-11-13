<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="WebMRPO.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/StyleRegistration.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="WindowAuthorizationPage">
            <div id="LabelAuthorizationPage">
                <asp:Label ID="lblName" runat="server" Text="Имя: " />
                <br /><br />
                <asp:Label ID="Label1" runat="server" Text="Логин: " />
                <br /><br />
                <asp:Label ID="Label2" runat="server" Text="Пароль: " />
            </div>
            <div id="TextBoxAuthorizationPage">
                <asp:TextBox ID="tbName" runat="server" CssClass="tb"/>
                <br /><br />
                <asp:TextBox ID="tbLogin" runat="server" CssClass="tb"/>
                <br /><br />
                <asp:TextBox ID="tbPasswod" runat="server" CssClass="tb"/>
            </div>
            <div id="ButtonAuthorizationPage">
                <asp:Button ID="btnRegistration" runat="server" Text="Зарегистрироваться" OnClick="btnRegistration_Click" class="button"/>
                <asp:Label ID="lblResulRegistration" runat="server" Text=""/>
            </div>
        </div>
    </form>
</body>
</html>
