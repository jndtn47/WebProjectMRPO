<%@ page language="C#" autoeventwireup="true" codebehind="10.SubstitutionOfEuler.aspx.cs" inherits="WebMRPO.TheoryPages.SubstitutionOfEuler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Интегрирование квадратичных иррациональностей. Подстановки Эйлера</title>
    <style>
        #workspace{
            height: 2700px;
        }
        a {
            color: black;
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
                    <h1 align="center">Интегрирование квадратичных иррациональностей. Подстановки Эйлера</h1>
                    <p>Рассмотрим функцию вида <img src="https://latex.codecogs.com/gif.latex?R(x,\sqrt{ax^2&plus;bx&plus;c}),a\neq&space;0" title="R(x,\sqrt{ax^2+bx+c}),a\neq 0" /> . Покажем, что 
                        интеграл от этой функции вычисляется в конечном виде через элементарные функции с помощью подстановок Эйлера. </p>
                    <p>Пусть <img src="https://latex.codecogs.com/gif.latex?ax^2&plus;bx&plus;c" title="ax^2+bx+c" /> не имеет действительных корней. Выполним <span style="color: chocolate"><em>первую подстановку Эйлера</em></span> 
                       <img src="https://latex.codecogs.com/gif.latex?t=\sqrt{ax^2&plus;bx&plus;c}&plus;x\sqrt{a},a>&space;0" title="t=\sqrt{ax^2+bx+c}+x\sqrt{a},a> 0" /></p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\sqrt{ax^2&plus;bx&plus;c}&plus;x\sqrt{a}&space;=&space;t;&space;\newline&space;ax^2&plus;bx&plus;c=t^2-2tx\sqrt{a}&plus;ax^2;&space;\newline&space;bx&plus;2tx\sqrt{a}=t^2-c;&space;\newline&space;x(b&plus;2t\sqrt{a})=t^2-c;&space;\newline&space;x&space;=\frac{t^2-c}{b&plus;2t\sqrt{a}};&space;\newline&space;dx&space;=&space;(\frac{t^2-c}{b&plus;2t\sqrt{a}})'dt=\frac{2t(b&plus;2t\sqrt{a})-2\sqrt{a}(t^2-c)}{(b&plus;2t\sqrt{a})^2}dt=\frac{2bt&plus;4t^2\sqrt{a}-2t^2\sqrt{a}&plus;2c\sqrt{a}}{(b&plus;2t\sqrt{a})^2}dt=\frac{2t^2\sqrt{a}&plus;2bt&plus;2c\sqrt{a}}{(b&plus;2t\sqrt{a})^2}dt." title="\sqrt{ax^2+bx+c}+x\sqrt{a} = t; \newline ax^2+bx+c=t^2-2tx\sqrt{a}+ax^2; \newline bx+2tx\sqrt{a}=t^2-c; \newline x(b+2t\sqrt{a})=t^2-c; \newline x =\frac{t^2-c}{b+2t\sqrt{a}}; \newline dx = (\frac{t^2-c}{b+2t\sqrt{a}})'dt=\frac{2t(b+2t\sqrt{a})-2\sqrt{a}(t^2-c)}{(b+2t\sqrt{a})^2}dt=\frac{2bt+4t^2\sqrt{a}-2t^2\sqrt{a}+2c\sqrt{a}}{(b+2t\sqrt{a})^2}dt=\frac{2t^2\sqrt{a}+2bt+2c\sqrt{a}}{(b+2t\sqrt{a})^2}dt." /></>
                    <br>Отсюда получим </br>
                    <a><img src="https://latex.codecogs.com/gif.latex?\sqrt{ax^2&plus;dx&plus;c}=t-(\frac{t^2-c}{b&plus;2t\sqrt{a}})\sqrt{a}=\frac{bt&plus;2t^2\sqrt{a}-t^2\sqrt{a}&plus;c\sqrt{a}}{b&plus;2t\sqrt{a}}=\frac{t^2\sqrt{a}&plus;bt&plus;c\sqrt{a}}{b&plus;2t\sqrt{a}}" title="\sqrt{ax^2+dx+c}=t-(\frac{t^2-c}{b+2t\sqrt{a}})\sqrt{a}=\frac{bt+2t^2\sqrt{a}-t^2\sqrt{a}+c\sqrt{a}}{b+2t\sqrt{a}}=\frac{t^2\sqrt{a}+bt+c\sqrt{a}}{b+2t\sqrt{a}}" /></a>
                    <br>Таким образом,</br>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int&space;R(x,\sqrt{ax^2&plus;bx&plus;c})dx=\int&space;R(\frac{t^2-c}{b&plus;2t\sqrt{a}};&space;\frac{t^2\sqrt{a}&plus;bt&plus;c\sqrt{a}}{b&plus;2t\sqrt{a}})\cdot&space;\frac{2t^2\sqrt{a}&plus;2bt&plus;2c\sqrt{a}}{(b&plus;2t\sqrt{a})^2}dt" title="\int R(x,\sqrt{ax^2+bx+c})dx=\int R(\frac{t^2-c}{b+2t\sqrt{a}}; \frac{t^2\sqrt{a}+bt+c\sqrt{a}}{b+2t\sqrt{a}})\cdot \frac{2t^2\sqrt{a}+2bt+2c\sqrt{a}}{(b+2t\sqrt{a})^2}dt" /></a>
                    <p>Пусть <img src="https://latex.codecogs.com/gif.latex?ax^2&plus;bx&plus;c" title="ax^2+bx+c" /> имеет два различных действительных корня. Тогда применим <span style="color: chocolate"><em>вторую подстановку Эйлера</em></span>  
                      <img src="https://latex.codecogs.com/gif.latex?t=\frac{\sqrt{ax^2&plus;bx&plus;c}}{x-x_1}" title="t=\frac{\sqrt{ax^2+bx+c}}{x-x_1}" /></p>
                 <a><img src="https://latex.codecogs.com/gif.latex?\frac{\sqrt{ax^2&plus;bx&plus;c}}{x-x_1}&space;=&space;t;&space;\newline&space;\sqrt{ax^2&plus;bx&plus;c}&space;=&space;t(x-x_1);&space;\newline&space;ax^2&plus;bx&plus;c&space;=&space;t^2(x-x_1)^2;&space;\newline&space;a(x-x_1)(x-x_2)=t^2(x-x_1)^2;&space;\newline&space;ax-ax_2=t^2x-t^2x_1;&space;\newline&space;(a-t^2)x=ax_2-t^2x_1;&space;\newline&space;x=\frac{ax_2-t^2x_1}{a-t^2}" title="\frac{\sqrt{ax^2+bx+c}}{x-x_1} = t; \newline \sqrt{ax^2+bx+c} = t(x-x_1); \newline ax^2+bx+c = t^2(x-x_1)^2; \newline a(x-x_1)(x-x_2)=t^2(x-x_1)^2; \newline ax-ax_2=t^2x-t^2x_1; \newline (a-t^2)x=ax_2-t^2x_1; \newline x=\frac{ax_2-t^2x_1}{a-t^2}" /></a>
                <a><img src="https://latex.codecogs.com/gif.latex?dx=(\frac{ax_2-x_1t^2}{a-t^2})'dt=&space;\newline&space;=&space;\frac{-2x_1t(a-t^2)&plus;2t(ax_2-x_1t^2)}{(a-t^2)^2}dt&space;=&space;\newline&space;=&space;\frac{-2x_1at&plus;2t^3x_1&plus;2tax_2-2t^3x_1}{(a-t^2)^2}dt&space;=&space;\newline&space;=\frac{2at(x_2-x_1)}{(a-t^2)^2}dt&space;\newline&space;\int&space;R(x,\sqrt{ax^2&plus;bx&plus;c})dx=\int&space;R(\frac{ax_2-x_1t^2}{a-t^2}),\frac{at(x_2-x_1)}{a-t^2})\cdot&space;\frac{2at(x_2-x_1)}{(a-t^2)^2}dt" title="dx=(\frac{ax_2-x_1t^2}{a-t^2})'dt= \newline = \frac{-2x_1t(a-t^2)+2t(ax_2-x_1t^2)}{(a-t^2)^2}dt = \newline = \frac{-2x_1at+2t^3x_1+2tax_2-2t^3x_1}{(a-t^2)^2}dt = \newline =\frac{2at(x_2-x_1)}{(a-t^2)^2}dt \newline \int R(x,\sqrt{ax^2+bx+c})dx=\int R(\frac{ax_2-x_1t^2}{a-t^2}),\frac{at(x_2-x_1)}{a-t^2})\cdot \frac{2at(x_2-x_1)}{(a-t^2)^2}dt" /></a>
                <p><u>Пример:</u></p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{dx}{x&plus;\sqrt{x^2&plus;x&plus;1}}=\begin{bmatrix}&space;t=\sqrt{x^2&plus;x&plus;1}&plus;x&space;&&&space;x=\frac{t^2-1}{1&plus;2t}&space;\\&space;dx=\frac{2t(1&plus;2t)-2(t^2-1)}{(1&plus;2t)^2}dt=\frac{2t^2&plus;2t&plus;2}{(1&plus;2t)^2}dt&space;\end{bmatrix}=\int&space;\frac{1}{t}\cdot&space;\frac{2t^2&plus;2t&plus;2}{(2t&plus;1)^2}dt=2&space;\int&space;\frac{t^2&plus;t&plus;1}{t(1&plus;2t)^2}dt&space;=&space;I&space;;&space;\newline&space;\frac{t^2&plus;t&plus;1}{t(1&plus;2t)^2}&space;=&space;\frac{A}{t}&space;&plus;\frac{B}{1&plus;2t}&space;&plus;&space;\frac{C}{(1&plus;2t)^2}=\frac{A&plus;4At&plus;4At^2&plus;Bt&plus;2Bt^2&plus;Ct}{t(1&plus;2t)^2}=\frac{(4A&plus;2B)t^2&plus;(4A&plus;C&plus;B)t&plus;A}{t(1&plus;2t)^2};&space;\newline&space;\left\{\begin{matrix}&space;4A&plus;2B=1\\4A&plus;C&plus;B=1&space;\\&space;A=1&space;\end{matrix}\right.&space;\rightarrow&space;\left\{\begin{matrix}&space;A&space;=&space;1\\&space;B=&space;-\frac{3}{2}&space;\\&space;C=-\frac{3}{2}&space;\end{matrix}\right." title="\int \frac{dx}{x+\sqrt{x^2+x+1}}=\begin{bmatrix} t=\sqrt{x^2+x+1}+x && x=\frac{t^2-1}{1+2t} \\ dx=\frac{2t(1+2t)-2(t^2-1)}{(1+2t)^2}dt=\frac{2t^2+2t+2}{(1+2t)^2}dt \end{bmatrix}=\int \frac{1}{t}\cdot \frac{2t^2+2t+2}{(2t+1)^2}dt=2 \int \frac{t^2+t+1}{t(1+2t)^2}dt = I ; \newline \frac{t^2+t+1}{t(1+2t)^2} = \frac{A}{t} +\frac{B}{1+2t} + \frac{C}{(1+2t)^2}=\frac{A+4At+4At^2+Bt+2Bt^2+Ct}{t(1+2t)^2}=\frac{(4A+2B)t^2+(4A+C+B)t+A}{t(1+2t)^2}; \newline \left\{\begin{matrix} 4A+2B=1\\4A+C+B=1 \\ A=1 \end{matrix}\right. \rightarrow \left\{\begin{matrix} A = 1\\ B= -\frac{3}{2} \\ C=-\frac{3}{2} \end{matrix}\right." /></a>
                <a><img src="https://latex.codecogs.com/gif.latex?\frac{t^2&plus;t&plus;1}{t(1&plus;2t)^2}=\frac{1}{t}-\frac{3}{2(1&plus;2t)}-\frac{3}{2(1&plus;2t)^2};&space;\newline&space;I=2\int\frac{dt}{t}-3\int&space;\frac{dt}{1&plus;2t}-3&space;\int&space;\frac{dt}{(1&plus;2t)^2}=2\cdot&space;ln|x|-\frac{3}{2}\int&space;\frac{d(2t&plus;1)}{2t&plus;1}-&space;\frac{3}{2}\int&space;(2t&plus;1)^{-2}d(2t&plus;1)=2\cdot&space;ln|x|-\frac{3}{2}\cdot&space;ln|2t&plus;1|-\frac{3}{2}\cdot&space;\frac{(2t&plus;1)^{-1}}{-1}&plus;C=2\cdot&space;ln|x|-\frac{3}{2}\cdot&space;ln|2t&plus;1|&plus;\frac{3}{2}(2t&plus;1)&plus;C=2\cdot&space;ln|\sqrt{x^2&plus;x&plus;1}&plus;x|-\frac{3}{2}ln|2(\sqrt{x^2&plus;x&plus;1}&plus;x)&plus;1|&plus;\frac{3}{2}(2(\sqrt{x^2&plus;x&plus;1}&plus;x)&plus;1)&plus;C" title="\frac{t^2+t+1}{t(1+2t)^2}=\frac{1}{t}-\frac{3}{2(1+2t)}-\frac{3}{2(1+2t)^2}; \newline I=2\int\frac{dt}{t}-3\int \frac{dt}{1+2t}-3 \int \frac{dt}{(1+2t)^2}=2\cdot ln|x|-\frac{3}{2}\int \frac{d(2t+1)}{2t+1}- \frac{3}{2}\int (2t+1)^{-2}d(2t+1)=2\cdot ln|x|-\frac{3}{2}\cdot ln|2t+1|-\frac{3}{2}\cdot \frac{(2t+1)^{-1}}{-1}+C=2\cdot ln|x|-\frac{3}{2}\cdot ln|2t+1|+\frac{3}{2}(2t+1)+C=2\cdot ln|\sqrt{x^2+x+1}+x|-\frac{3}{2}ln|2(\sqrt{x^2+x+1}+x)+1|+\frac{3}{2}(2(\sqrt{x^2+x+1}+x)+1)+C" /></a>
                </div>
            </div>
            <div id="footer"></div>
        </div>

    </form>
</body>
</html>
