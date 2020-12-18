<%@ page language="C#" autoeventwireup="true" codebehind="2.DirectIntegration.aspx.cs" inherits="WebMRPO.TheoryPages.DirectIntegration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Метод непосредственного интегрирования</title>
     <style>
        #workspace{
            height: 1300px;
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
        <div id="workspace">
            <div id="header">
                <div id="imgH"><img src="../resources/HeaderImg.png" width="700" height="80" /></div>
                <asp:button id="btnAuthorization" runat="server" text="Войти" postbackurl="~/AuthorizationPage.aspx" class="buttonMenu buttonHeader" />
                <asp:button id="btnRegistration" runat="server" text="Зарегистрироваться" postbackurl="~/RegistrationPage.aspx" class="buttonMenu buttonHeader" />
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
                </div>
                <div id="text">
                    <h1 align="center">Метод непосредственного интегрирования</h1>
                    <p align="justify">
                        Используя тождественные преобразования и основные свойства неопределенного интеграла,
                        можно привести исходный интеграл к сумме нескольких табличных интегралов
                    </p>
                    <a><u>Например:</u></a>
                    <p>
                        <img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{5\sqrt{x}-3x^{3}&plus;x-17}{x^{2}}dx=\int&space;(5x^{-3/2}-3x&plus;\frac{1}{x}-\frac{17}{x^{2}})dx=\int&space;5x^{-3/2}dx-\int&space;3xdx&plus;\int&space;\frac{1}{x}dx-\int&space;\frac{17}{x^{2}}dx=5\int&space;x^{-3/2}dx-3\int&space;xdx&plus;\int&space;\frac{1}{x}dx-17\int&space;\frac{1}{x^{2}}dx=5\cdot&space;\frac{x^{-1/2}}{-1/2}-3\cdot&space;\frac{x^{2}}{2}&plus;ln(x)-17\cdot&space;\frac{x^{-1}}{-1}&plus;C=-\frac{10}{\sqrt{x}}-\frac{3}{2}x^{2}&plus;ln(x)&plus;\frac{17}{x}&plus;&space;C" title="\int \frac{5\sqrt{x}-3x^{3}+x-17}{x^{2}}dx=\int (5x^{-3/2}-3x+\frac{1}{x}-\frac{17}{x^{2}})dx=\int 5x^{-3/2}dx-\int 3xdx+\int \frac{1}{x}dx-\int \frac{17}{x^{2}}dx=5\int x^{-3/2}dx-3\int xdx+\int \frac{1}{x}dx-17\int \frac{1}{x^{2}}dx=5\cdot \frac{x^{-1/2}}{-1/2}-3\cdot \frac{x^{2}}{2}+ln(x)-17\cdot \frac{x^{-1}}{-1}+C=-\frac{10}{\sqrt{x}}-\frac{3}{2}x^{2}+ln(x)+\frac{17}{x}+ C" /></p>

                    <p>
                        <img src="https://latex.codecogs.com/gif.latex?\int&space;(sin(\frac{x}{2})&plus;cos(\frac{x}{2}))^{2}dx=\int&space;(sin^{2}(\frac{x}{2})&plus;2\cdot&space;sin(\frac{x}{2})\cdot&space;cos(\frac{x}{2})&plus;cos^{2}(\frac{x}{2}))dx=\int&space;(1&plus;sin(x))dx=\int&space;1\cdot&space;dx&plus;\int&space;sin(x)dx=x-cos(x)&plus;C" title="\int (sin(\frac{x}{2})+cos(\frac{x}{2}))^{2}dx=\int (sin^{2}(\frac{x}{2})+2\cdot sin(\frac{x}{2})\cdot cos(\frac{x}{2})+cos^{2}(\frac{x}{2}))dx=\int (1+sin(x))dx=\int 1\cdot dx+\int sin(x)dx=x-cos(x)+C" />
                    </p>

                    <p>
                        <img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{1&plus;5\cdot&space;x^{2}}{x^{2}\cdot&space;(1&plus;x^{2})}dx=\int&space;\frac{(1&plus;x^{2})&plus;4\cdot&space;x^{2}}{x^{2}\cdot&space;(1&plus;x^{2})}dx=\int&space;\frac{1}{x^{2}}dx&plus;\int&space;\frac{4}{1&plus;x^{2}}dx=\int&space;x^{-2}dx&plus;4\cdot&space;\int&space;\frac{dx}{1&plus;x^{2}}=\frac{x^{-1}}{-1}&plus;4\cdot&space;arctg(x)&plus;C=-\frac{1}{x}&plus;4\cdot&space;arctg(x)&plus;C" title="\int \frac{1+5\cdot x^{2}}{x^{2}\cdot (1+x^{2})}dx=\int \frac{(1+x^{2})+4\cdot x^{2}}{x^{2}\cdot (1+x^{2})}dx=\int \frac{1}{x^{2}}dx+\int \frac{4}{1+x^{2}}dx=\int x^{-2}dx+4\cdot \int \frac{dx}{1+x^{2}}=\frac{x^{-1}}{-1}+4\cdot arctg(x)+C=-\frac{1}{x}+4\cdot arctg(x)+C" />

                    </p>
                    <p>
                        <img src="https://latex.codecogs.com/gif.latex?\int&space;tg^{2}(x)dx=\int&space;\frac{sin^{x}(x)}{cos^{x}(x)}dx=\int&space;\frac{1-cos^{2}(x)}{cos^{2}(x)}dx=\int&space;\frac{dx}{cos^{2}(x)}-\int&space;1\cdot&space;dx=tg(x)-x&plus;C" title="\int tg^{2}(x)dx=\int \frac{sin^{x}(x)}{cos^{x}(x)}dx=\int \frac{1-cos^{2}(x)}{cos^{2}(x)}dx=\int \frac{dx}{cos^{2}(x)}-\int 1\cdot dx=tg(x)-x+C" />

                    </p>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
