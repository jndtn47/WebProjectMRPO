<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LimitOfAContinuousFunction.aspx.cs" Inherits="WebMRPO.TheoryPages.LimitOfAContinuousFunction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Теорема о пределе непрерывной функции от функции</title>
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
                        <div>
                            <%Response.Write(htmlArrayList);%>
                        </div>
                    </div>
                    <div id="text">
                        <body>
                            <h4><b><span style="color: brown">Теорема о пределе непрерывной функции от функции</span></b></h4>
                            <div>
                                Пусть существует предел функции t = g(x) при
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=0" title="\lim_{x\rightarrow x_{0}}f(x)=0" />, и он равен
                                <img src="https://latex.codecogs.com/gif.latex?t_{0}" title="t_{0}" />:
                            </div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}g(x)=t_{0}" title="\lim_{x\rightarrow x_{0}}g(x)=t_{0}" />
                            </div>
                            <div>
                                Здесь точка x0 может быть конечной или бесконечно удаленной:
                                <img src="https://latex.codecogs.com/gif.latex?x_{0}" title="x_{0}" />
                                принадлежит к множеству действительных чисел
                            </div>
                            <div>
                                И пусть функция f(t)  непрерывна в точке
                                <img src="https://latex.codecogs.com/gif.latex?t_{0}" title="t_{0}" />.
                            </div>
                            <div>Тогда существует предел сложной функции f(g(x)), и он равен f(t0):</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(g(t))=f(\lim_{x\rightarrow&space;x_{0}}g(t))=f(t_{0})" title="\lim_{x\rightarrow x_{0}}f(g(t))=f(\lim_{x\rightarrow x_{0}}g(t))=f(t_{0})" />
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
