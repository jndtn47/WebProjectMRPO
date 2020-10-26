<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuthorizationPage.aspx.cs" Inherits="WebMRPO.AuthorizationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblLogin" runat="server" Text="Логин: "></asp:Label>
            <asp:TextBox ID="tbLogin" runat="server"></asp:TextBox>
        </div>
        <p>
            <asp:Label ID="lblPassword" runat="server" Text="Пароль: "></asp:Label>
            <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnAuthorization" runat="server" Text="Войти" OnClick="btnAuthorization_Click" />
        <asp:Label ID="lblResultName" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
