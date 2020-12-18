<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CauchyСriterionFor.aspx.cs" Inherits="WebMRPO.TheoryPages.CauchyСriterionFor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Критерий Коши существования предела функцииы</title>
    <style>
        #workspace {
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
                    <div id="imgH">
                        <img src="../resources/HeaderImg.png" width="700" height="80" /></div>
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
                    <div id="theorylist">
                        <%Response.Write(htmlArrayList);%>
                        <div>
                        </div>
                    </div>
                    <div id="text">
                        <body>
                            <h4><b><span style="color: brown">Критерий Коши существования предела функции</span></b></h4>
                            <div>
                                Для того, чтобы функция f(x), определенная на некоторой проколотой окрестности конечной или бесконечно удаленной точки x0, имела в этой точке конечный предел, необходимо и достаточно, чтобы для любого ε > 0 существовала такая проколотая окрестность
                                <img src="https://latex.codecogs.com/gif.latex?\dot{U}(x_{0},\delta&space;_{\varepsilon&space;})" title="\dot{U}(x_{0},\delta _{\varepsilon })" />
                                точки x0, что для любых точек
                                <img src="https://latex.codecogs.com/gif.latex?x'" title="x'" />, принадлежащих
                                <img src="https://latex.codecogs.com/gif.latex?\dot{U}(x_{0},\delta&space;_{\varepsilon&space;})" title="\dot{U}(x_{0},\delta _{\varepsilon })" />,  и
                                <img src="https://latex.codecogs.com/gif.latex?x''" title="x''" />, принадлежащих
                                <img src="https://latex.codecogs.com/gif.latex?\dot{U}(x_{0},\delta&space;_{0})" title="\dot{U}(x_{0},\delta _{0})" />
                                , из этой окрестности, выполнялось неравенство:
                            </div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?\left&space;|&space;f(x')-f(x'')\right&space;|<&space;\varepsilon" title="\left | f(x')-f(x'')\right |< \varepsilon" />
                            </div>
                        </body>
                    </div>
                </div>
                <div id="footer"></div>
            </div>
        </div>
    </form>
</body>
</html>
