<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefinitionOfHeine.aspx.cs" Inherits="WebMRPO.TheoryPages.DefinitionOfHeine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Определения предела функции в точке по Гейне</title>
    <style>
        #workspace{
            height: 1500px;
        }
        a {
            color: black;
        }
        #text {
            padding-right: 5px;
        }
        #imgH {
            position: absolute;
            left: 205px;
            top: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="workspace">
                <div id="header">
                    <div id="imgH"><img src="../resources/HeaderImg.png" width="700" height="80" /></div>
                    <asp:Button ID="btnAuthorization" runat="server" Text="Войти" PostBackUrl="~/AuthorizationPage.aspx" class="buttonMenu buttonHeader" />
                    <asp:Button ID="btnRegistration" runat="server" Text="Зарегистрироваться" PostBackUrl="~/RegistrationPage.aspx" class="buttonMenu buttonHeader" />
                </div>
                <div id="menu">
                    <hr />
                    <asp:Button ID="Button1" runat="server" Text="Главная" class="buttonMenu" PostBackUrl="~/MainWindow.aspx" />
                <asp:Button ID="Button2" runat="server" Text="Теория" class="buttonMenu" PostBackUrl="~/TheoryPages/1.TheConceptOfIndefiniteIntegral.aspx"/>
                <asp:Button ID="Button3" runat="server" Text="Программы" class="buttonMenu" />
                <asp:Button ID="Button4" runat="server" Text="О проекте" class="buttonMenu" PostBackUrl="~/About.aspx" />
                </div>
                <div id="content">
                    <div id="theorylist">
                        <%Response.Write(htmlArrayList);%>
                        <div>
                        </div>
                    </div>
                    <div id="text">
                        <body>
                            <h4>Определения предела функции в точке по Гейне </h4>
                            <div>Предел функции (по Гейне) при ее аргументе x, стремящемся к x0 – это такое конечное число или бесконечно удаленная точка a, для которой выполняются следующие условия:</div>
                            <div>1) существует такая проколотая окрестность
                                <img src="https://latex.codecogs.com/gif.latex?\dot{U}(x_{0})" title="\dot{U}(x_{0})" />
                                точки x0, на которой функция f(x) определена;</div>
                            <div>2) для любой последовательности
                                <img src="https://latex.codecogs.com/gif.latex?\left&space;\{&space;x_{n}&space;\right&space;\}" title="\left \{ x_{n} \right \}" />, сходящейся к x0:
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow\propto&space;}x_{n}=x_{0}" title="\lim_{x\rightarrow\propto }x_{n}=x_{0}" /></div>
                            <div>элементы которой принадлежат окрестности
                                <img src="https://latex.codecogs.com/gif.latex?\dot{U}(x_{0})" title="\dot{U}(x_{0})" />, последовательность  сходится к a:</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{n\rightarrow\propto&space;}f(x_{n})=a" title="\lim_{n\rightarrow\propto }f(x_{n})=a" /></div>
                        </body>
                    </div>
                </div>
                <div id="footer"></div>
            </div>
        </div>
    </form>
</body>
</html>
