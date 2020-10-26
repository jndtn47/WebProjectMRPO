<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="WebMRPO.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <p>
            <asp:Label ID="lblName" runat="server" Text="Имя: "></asp:Label>
            <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
            </p>
            <p>
            <asp:Label ID="lblLogin" runat="server" Text="Логин: "></asp:Label>
            <asp:TextBox ID="tbLogin" runat="server"></asp:TextBox>
            </p>
            <p>
            <asp:Label ID="lblPassword" runat="server" Text="Пароль: "></asp:Label>
            <asp:TextBox ID="tbPasswod" runat="server"></asp:TextBox>
            </p>
        </div>
        <p>
            <asp:Button ID="btnRegistration" runat="server" Text="Зарегистрироваться" OnClick="btnRegistration_Click" />
            <asp:Label ID="lblResulRegistration" runat="server" Text=""></asp:Label>
        </p>
    </form>
</body>
</html>
