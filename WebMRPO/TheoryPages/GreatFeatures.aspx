<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GreatFeatures.aspx.cs" Inherits="WebMRPO.TheoryPages.GreatFeatures" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Бесконечно малые и большие функции</title>
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
                        <body>
                            <h4>Бесконечно малые и большие функции</h4>
                            <div>Функция  называется <span style="color: chocolate">бесконечно большой</span></em> при
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=0" title="\lim_{x\rightarrow x_{0}}f(x)=0" /></div>
                            <div>Функция  называется <span style="color: chocolate">бесконечно малой</span></em> при , если
                                <img src="https://latex.codecogs.com/gif.latex?x\rightarrow&space;x_{0}" title="x\rightarrow x_{0}" />, если
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}\alpha&space;(x)=0" title="\lim_{x\rightarrow x_{0}}\alpha (x)=0" /></div>
                            <div>Сумма, разность и произведение конечного числа бесконечно малых функций при
                                <img src="https://latex.codecogs.com/gif.latex?x\rightarrow&space;x_{0}" title="x\rightarrow x_{0}" />
                                является бесконечно малой функцией при
                                <img src="https://latex.codecogs.com/gif.latex?x\rightarrow&space;x_{0}" title="x\rightarrow x_{0}" />.</div>
                            <div>Произведение функции, ограниченной на некоторой проколотой окрестности точки
                                <img src="https://latex.codecogs.com/gif.latex?x_{0}" title="x_{0}" />, на бесконечно малую при
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=0" title="\lim_{x\rightarrow x_{0}}f(x)=0" />
                                является бесконечно малой функцией при
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=0" title="\lim_{x\rightarrow x_{0}}f(x)=0" />.</div>
                            <div>
                                Для того, чтобы функция f(x) имела конечный предел
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=A" title="\lim_{x\rightarrow x_{0}}f(x)=A" />, необходимо и достаточно, чтобы
                                <img src="https://latex.codecogs.com/gif.latex?f(x)=A&plus;\alpha&space;(x)" title="f(x)=A+\alpha (x)" />, где
                                <img src="https://latex.codecogs.com/gif.latex?\alpha&space;(x)" title="\alpha (x)" />
                                - бесконечно малая функция при
                                <img src="https://latex.codecogs.com/gif.latex?x\rightarrow&space;x_{0}" title="x\rightarrow x_{0}" />
                            </div>
                            <div></div>
                        </body>
                    </div>
                </div>
                <div id="footer"></div>
            </div>
        </div>
    </form>
</body>
</html>
