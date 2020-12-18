<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainWindow.aspx.cs" Inherits="WebMRPO.MainWindow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/StyleMainWindow.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Shpargalka</title>
    <style>
        .scale {
            transition: 1s;
        }

            .scale:hover {
                transform: scale(1.1);
            }

        #theory {
            overflow-y: auto;
        }

        #imgH {
            position: absolute;
            left: 205px;
            top: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="workspace">
            <div id="header">
                <div id="imgH">
                    <img src="resources/HeaderImg.png" width="700" height="80" />
                </div>
                <asp:Button ID="btnAuthorization" runat="server" Text="Войти" PostBackUrl="~/AuthorizationPage.aspx" class="buttonMenu buttonHeader" />
                <asp:Button ID="btnRegistration" runat="server" Text="Зарегистрироваться" PostBackUrl="~/RegistrationPage.aspx" class="buttonMenu buttonHeader" />
            </div>
            <div id="menu">
                <hr />
                <asp:Button ID="Button1" runat="server" Text="Главная" class="buttonMenu" PostBackUrl="~/MainWindow.aspx" />
                <asp:Button ID="Button2" runat="server" Text="Теория" class="buttonMenu" PostBackUrl="~/TheoryPages/1.TheConceptOfIndefiniteIntegral.aspx" />
                <asp:Button ID="Button3" runat="server" Text="Программы" class="buttonMenu" />
                <asp:Button ID="Button4" runat="server" Text="О проекте" class="buttonMenu" PostBackUrl="~/About.aspx" />
            </div>
            <div id="content">
                <div id="сatalog">
                    <table>
                        <tr>
                            <td>
                                <a href="TheoryPages/1.TheConceptOfIndefiniteIntegral.aspx">
                                    <img src="resources/MenuImg/DefiniteIntegralMenu.gif" width="250" height="150" class="scale" /></a>
                                <td>
                                    <a href="TheoryPages/11.ConceptDefiniteIntegral.aspx">
                                        <img src="resources/MenuImg/IndefinitelIntegra.png" width="250" height="150" class="scale" /></a>
                                </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="TheoryPages/Plenties.aspx">
                                    <img src="resources/MenuImg/AG.png" width="250" height="150" class="scale" /></a>
                            </td>
                             <td>
                                <a href="TheoryPages/Plenties.aspx">
                                    <img src="resources/MenuImg/AlgMenu.png" width="250" height="150" class="scale" /></a>
                            </td>
                        </tr>
                        <tr> 
                            <td>
                            <a href="TheoryPages/DefinitionOfKoshi.aspx">
                                <img src="resources/MenuImg/Limit.png"  width="250" height="150" class="scale"/>
                            </a>
                            </tr>
                        </td>
                    </table>
                </div>
                <div id="theory">
                    <div>
                        <%Response.Write(htmlArrayList);%>
                    </div>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
