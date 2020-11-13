<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainWindow.aspx.cs" Inherits="WebMRPO.MainWindow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/StyleMainWindow.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>3.1 ПМИ</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="workspace">
            <div id="header">
                <asp:Button ID="btnAuthorization" runat="server" Text="Войти" PostBackUrl="~/AuthorizationPage.aspx" class="buttonMenu buttonHeader" />
                <asp:Button ID="btnRegistration" runat="server" Text="Зарегистрироваться" PostBackUrl="~/RegistrationPage.aspx" class="buttonMenu buttonHeader" />
            </div>
            <div id="menu">
                <hr />
                <asp:Button ID="Button1" runat="server" Text="Главная" class="buttonMenu" />
                <asp:Button ID="Button2" runat="server" Text="Теория" class="buttonMenu" />
                <asp:Button ID="Button3" runat="server" Text="Программы" class="buttonMenu" />
                <asp:Button ID="Button4" runat="server" Text="О проекте" class="buttonMenu" />
            </div>
            <div id="content">
                <div id="сatalog">
                    <table>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" Width="250" Height="150" /></td>
                            <td>
                                <asp:ImageButton ID="ImageButton2" runat="server" Width="250" Height="150" /></td>
                        </tr>
                    </table>
                </div>
                <div id="theory">
                    <div>
                        <%Response.Write(htmlArrayList);%>
                    </div>
                </div>
            </div>
            <div id="footer">Подвал</div>
        </div>
    </form>
</body>
</html>
