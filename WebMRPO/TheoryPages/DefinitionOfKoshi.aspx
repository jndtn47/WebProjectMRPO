<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefinitionOfKoshi.aspx.cs" Inherits="WebMRPO.TheoryPages.DefinitionOfKoshi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Предел функции по Коши</title>
    <style>
        #workspace{
            height: 1500px;
        }
        a {
            color: black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                    <div id="theorylist">
                        <div>
                        <%Response.Write(htmlArrayList);%>
                        </div>
                    </div>
                    <div id="text">
                            <h4>Предел функции (по Коши)</h4>
                            <div>При ее аргументе x, стремящемся к x0 – это такое конечное число или бесконечно удаленная точка a, для которой выполняются следующие условия:</div>
                            <div>1)существует такая проколотая окрестность
                                <img src="https://latex.codecogs.com/gif.latex?\dot{U}0(x_{0})" title="\dot{U}0(x_{0})" />
                                точки x0, на которой функция f(x) определена;</div>
                            <div>2)для любой окрестности
                                <img src="https://latex.codecogs.com/gif.latex?{U}(a)" title="{U}(a)" />
                                точки a, принадлежащей
                                <img src="https://latex.codecogs.com/gif.latex?\dot{U}0(x_{0})" title="\dot{U}0(x_{0})" />, существует такая проколотая окрестность
                                <img src="https://latex.codecogs.com/gif.latex?\dot{U}(x_{0})" title="\dot{U}(x_{0})" />
                                точки x0, на которой значения функции принадлежат выбранной окрестности точки a:</div>
                            <div>f(x) принадлежит
                                <img src="https://latex.codecogs.com/gif.latex?{U}(a)" title="{U}(a)" />
                                при x, принадлежащем
                                <img src="https://latex.codecogs.com/gif.latex?\dot{U}(x_{0})" title="\dot{U}(x_{0})" />
                            </div>
                            <div>Здесь a и x0 также могут быть как конечными числами, так и бесконечно удаленными точками.</div>
                    </div>
                </div>
                <div id="footer"></div>
            </div>
        </div>
    </form>
</body>
</html>
