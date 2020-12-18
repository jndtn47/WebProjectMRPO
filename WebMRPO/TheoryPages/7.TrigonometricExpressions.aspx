<%@ page language="C#" autoeventwireup="true" codebehind="7.TrigonometricExpressions.aspx.cs" inherits="WebMRPO.TheoryPages.TrigonometricExpressions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Интегрирование тригонометрических выражений</title>
    <style>
        #workspace{
            height: 3400px;
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
                    <h1 align="center">Интегрирование тригонометрических выражений</h1>
                      <p align="justify"><em><span style="color: chocolate">Многочленом n-ой степени от двух переменных</span></em> называется функция вида 
                      <img src="https://latex.codecogs.com/gif.latex?P_n(x,y)=a_{00}&plus;a_{10}x&plus;a_{01}y&plus;a_{11}xy&plus;...&plus;a_{0n}y^n,a_{ij}\in&space;\mathbb{R}" title="P_n(x,y)=a_{00}+a_{10}x+a_{01}y+a_{11}xy+...+a_{0n}y^n,a_{ij}\in \mathbb{R}" /></p>
                      <p align="justify"><em><span style="color: chocolate">Рациональной функцией двух переменных</span></em> называется выражение вида <img src="https://latex.codecogs.com/gif.latex?R(x,y)=\frac{P_n(x,y)}{Q_m(x,y)}" title="R(x,y)=\frac{P_n(x,y)}{Q_m(x,y)}" /></p>
                   <br>Покажем, что функция <img src="https://latex.codecogs.com/gif.latex?R(sin(x),cos(x))" title="R(sin(x),cos(x))" /> рационализируется с помощью определенных подстановок и интегрируется в элементарных функциях.</br>
                    <p align="justify"><b><span style="color: brown">Теорема:</span></b> всякая функция <img src="https://latex.codecogs.com/gif.latex?R(sin(x),cos(x))" title="R(sin(x),cos(x))" /> интегрируется в элементарных функциях.</p>
                    <br align="justify"><b><span style="color: brown">Доказательство:</span></b> покажем, что функция <img src="https://latex.codecogs.com/gif.latex?R(sin(x),cos(x))" title="R(sin(x),cos(x))" /> рационализируется с помощью подстановки 
                    <img src="https://latex.codecogs.com/gif.latex?t=tg(\frac{x}{2})" title="t=tg(\frac{x}{2})" />. Для этого представим тригонометрические функции в следующем виде: </br>
                    <br><img src="https://latex.codecogs.com/gif.latex?sin(x)=sin(2\cdot&space;\frac{x}{2})=2\cdot&space;sin(\frac{x}{2})\cdot&space;cos(\frac{x}{2})=\frac{2\cdot&space;sin(\frac{x}{2})\cdot&space;cos(\frac{x}{2})}{1}=\frac{2\cdot&space;sin(\frac{x}{2})\cdot&space;cos(\frac{x}{2})}{sin^2(\frac{x}{2})&plus;cos^2(\frac{x}{2})}=\frac{2\cdot&space;\frac{sin(\frac{x}{2})}{cos(\frac{x}{2})}}{tg^2(\frac{x}{2})&plus;1}=\frac{2\cdot&space;tg(\frac{x}{2})}{tg^2(\frac{x}{2})&plus;1}" title="sin(x)=sin(2\cdot \frac{x}{2})=2\cdot sin(\frac{x}{2})\cdot cos(\frac{x}{2})=\frac{2\cdot sin(\frac{x}{2})\cdot cos(\frac{x}{2})}{1}=\frac{2\cdot sin(\frac{x}{2})\cdot cos(\frac{x}{2})}{sin^2(\frac{x}{2})+cos^2(\frac{x}{2})}=\frac{2\cdot \frac{sin(\frac{x}{2})}{cos(\frac{x}{2})}}{tg^2(\frac{x}{2})+1}=\frac{2\cdot tg(\frac{x}{2})}{tg^2(\frac{x}{2})+1}" /></br>
                    <br><img src="https://latex.codecogs.com/gif.latex?cos(x)=cos(2\cdot&space;\frac{x}{2})=cos^2(\frac{x}{2})-sin^2(\frac{x}{2})=\frac{cos^2(\frac{x}{2})-sin^2(\frac{x}{2})}{cos^2(\frac{x}{2})&plus;sin^2(\frac{x}{2})}=\frac{1-tg^2(\frac{x}{2})}{1&plus;tg^2(\frac{x}{2})}" title="cos(x)=cos(2\cdot \frac{x}{2})=cos^2(\frac{x}{2})-sin^2(\frac{x}{2})=\frac{cos^2(\frac{x}{2})-sin^2(\frac{x}{2})}{cos^2(\frac{x}{2})+sin^2(\frac{x}{2})}=\frac{1-tg^2(\frac{x}{2})}{1+tg^2(\frac{x}{2})}" /></br>
                    <br> Тогда, если <img src="https://latex.codecogs.com/gif.latex?t=tg(\frac{x}{2})" title="t=tg(\frac{x}{2})" /> , то </br>
                    <br><img src="https://latex.codecogs.com/gif.latex?\begin{matrix}&space;sin(x)=\frac{2t}{t^2&plus;1}&space;&&space;cos(x)=\frac{1-t^2}{1&plus;t^2}\\&space;x&space;=&space;2arctg(t)&&space;dx=\frac{2}{1&plus;t^2}dt&space;\end{matrix}" title="\begin{matrix} sin(x)=\frac{2t}{t^2+1} & cos(x)=\frac{1-t^2}{1+t^2}\\ x = 2arctg(t)& dx=\frac{2}{1+t^2}dt \end{matrix}" /></br>
                    <br>Таким образом получим, что </br>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;R(sin(x),cos(x))dx=\int&space;R(\frac{2t}{t^2&plus;1},\frac{1-t^2}{1&plus;t^2})\cdot&space;\frac{2dt}{1&plus;t^2}=R_1(t)" title="\int R(sin(x),cos(x))dx=\int R(\frac{2t}{t^2+1},\frac{1-t^2}{1+t^2})\cdot \frac{2dt}{1+t^2}=R_1(t)" /></br>
                    <br>Полученная в результате подстановки функция интегрируема в элементарных функциях. А значит и исходная функция также интегрируема в элементарных функциях. Что и требовалось доказать</br>
                    <br><u>Пример:</u></br>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{dx}{1&plus;2cos(x)}=\begin{bmatrix}&space;t=tg(\frac{x}{2})&space;&&space;x&space;=2arctg(t)&space;\\&space;cos&space;x&space;=&space;\frac{1-t^2}{1&plus;t^2}&&space;dx&space;=&space;\frac{2dt}{1&plus;t^2}&space;\end{bmatrix}&space;=&space;\int&space;\frac{2dt}{(1&plus;t^2)(1&plus;\frac{2-2t^2}{1&plus;t^2})}=\int&space;\frac{2dt}{1&plus;t^2&plus;2-2t^2}=\int&space;\frac{2dt}{3-t^2}=\int&space;-2\int&space;\frac{dt}{t^2-3}=\frac{-2}{2\sqrt{3}}\cdot&space;ln|\frac{t-\sqrt{3}}{t&plus;\sqrt{3}}|&plus;C=-\frac{1}{\sqrt{3}}\cdot&space;ln|\frac{tg(\frac{x}{2})-\sqrt{3}}{tg(\frac{x}{2})&plus;\sqrt{3}}|&plus;C" title="\int \frac{dx}{1+2cos(x)}=\begin{bmatrix} t=tg(\frac{x}{2}) & x =2arctg(t) \\ cos x = \frac{1-t^2}{1+t^2}& dx = \frac{2dt}{1+t^2} \end{bmatrix} = \int \frac{2dt}{(1+t^2)(1+\frac{2-2t^2}{1+t^2})}=\int \frac{2dt}{1+t^2+2-2t^2}=\int \frac{2dt}{3-t^2}=\int -2\int \frac{dt}{t^2-3}=\frac{-2}{2\sqrt{3}}\cdot ln|\frac{t-\sqrt{3}}{t+\sqrt{3}}|+C=-\frac{1}{\sqrt{3}}\cdot ln|\frac{tg(\frac{x}{2})-\sqrt{3}}{tg(\frac{x}{2})+\sqrt{3}}|+C" /></br>
                    <p><span style="color: brown">Замечание:</span> подстановка <img src="https://latex.codecogs.com/gif.latex?t=tg(\frac{x}{2})" title="t=tg(\frac{x}{2})" />  называется <em><span style="color: chocolate">универсальной тригонометрической подстановкой</span></em>, однако часто она приводит к очень объемным вычислениям
                        , поэтому можно выделить несколько частных случаев, в которых можно обойтись без нее:</p>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;R(sin(x))\cdot&space;cos(x)dx=\begin{bmatrix}&space;t&space;=&space;sin(x)\\&space;dt=&space;cos(x)dx&space;\end{bmatrix}&space;=&space;\int&space;R(t)dt&space;=&space;..." title="\int R(sin(x))\cdot cos(x)dx=\begin{bmatrix} t = sin(x)\\ dt= cos(x)dx \end{bmatrix} = \int R(t)dt = ..." /></br>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;R(cos(x))\cdot&space;sin(x)dx=\begin{bmatrix}&space;t&space;=&space;cos(x)\\&space;dt=&space;-sin(x)dx&space;\end{bmatrix}&space;=&space;-\int&space;R(t)dt&space;=&space;..." title="\int R(cos(x))\cdot sin(x)dx=\begin{bmatrix} t = cos(x)\\ dt= -sin(x)dx \end{bmatrix} = -\int R(t)dt = ..." /></br>
                    <br>Пусть функция удовлетворяет условию: <img src="https://latex.codecogs.com/gif.latex?R(-sin(x),cos(x))=-R(sin(x),cos(x))" title="R(-sin(x),cos(x))=-R(sin(x),cos(x))" />. Тогда функция рационализируется с помощью подстановки 
                        <img src="https://latex.codecogs.com/gif.latex?t=cos(x)" title="t=cos(x)" /></br>
                    <br>Проиллюстрируем утверждение <u>примером:</u></br>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;sin^7(x)cos^2(x)dx&space;=&space;\int&space;sin^6(x)cos^2(x)sin(x)dx\int&space;(sin^2(x))^3cos^2(x)sin(x)dx&space;=\begin{bmatrix}&space;t&space;=&space;cos(x)\\&space;dt&space;=&space;-&space;sin(x)&space;\end{bmatrix}=&space;-\int&space;(1-t^2)t^3t^2dt=-\int&space;(1-3t^2&plus;3t^4-t^6)t^2dt=-\int&space;(t^2-3t^4&plus;3t^6-t^8)dt=-\frac{t^3}{3}&plus;\frac{3t^5}{5}-\frac{3t^7}{7}&plus;\frac{t^9}{9}=-\frac{cos^3(x)}{3}&plus;\frac{3cos^5(x)}{5}-\frac{3cos^7(x)}{7}&plus;\frac{cos^9(x)}{9}&plus;C" title="\int sin^7(x)cos^2(x)dx = \int sin^6(x)cos^2(x)sin(x)dx\int (sin^2(x))^3cos^2(x)sin(x)dx =\begin{bmatrix} t = cos(x)\\ dt = - sin(x) \end{bmatrix}= -\int (1-t^2)t^3t^2dt=-\int (1-3t^2+3t^4-t^6)t^2dt=-\int (t^2-3t^4+3t^6-t^8)dt=-\frac{t^3}{3}+\frac{3t^5}{5}-\frac{3t^7}{7}+\frac{t^9}{9}=-\frac{cos^3(x)}{3}+\frac{3cos^5(x)}{5}-\frac{3cos^7(x)}{7}+\frac{cos^9(x)}{9}+C" /></br>
                    <br>Пусть функция удовлетворяет условию: <img src="https://latex.codecogs.com/gif.latex?R(sin(x),-cos(x))=-R(sin(x),cos(x))" title="R(sin(x),-cos(x))=-R(sin(x),cos(x))" />. В этом случае функция рационализируется с помощью подстановки вида 
                       <img src="https://latex.codecogs.com/gif.latex?t=sin(x)" title="t=sin(x)" /></br>
                     <br><img src="https://latex.codecogs.com/gif.latex?R(-sin(x),-cos(x))=R(sin(x),cos(x))\rightarrow&space;\left\{\begin{matrix}&space;t=tg(x))\\&space;t=ctg(x)&space;\end{matrix}\right." title="R(-sin(x),-cos(x))=R(sin(x),cos(x))\rightarrow \left\{\begin{matrix} t=tg(x))\\ t=ctg(x) \end{matrix}\right." /></br>
                   <br><u>Например:</u></br>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{cos^(x)}{sin^4(x)}dx=\int&space;\frac{cos^2(x)}{sin^2(x)}\cdot&space;\frac{dx}{sin^2(x)}=\begin{bmatrix}&space;t=ctg(x)\\dt=-\frac{dx}{sin^2(x)}&space;\end{bmatrix}&space;=&space;-\int&space;t^2dt=-\frac{t^3}{3}&plus;C=-\frac{1}{3}\cdot&space;ctg^3(x)&plus;C" title="\int \frac{cos^(x)}{sin^4(x)}dx=\int \frac{cos^2(x)}{sin^2(x)}\cdot \frac{dx}{sin^2(x)}=\begin{bmatrix} t=ctg(x)\\dt=-\frac{dx}{sin^2(x)} \end{bmatrix} = -\int t^2dt=-\frac{t^3}{3}+C=-\frac{1}{3}\cdot ctg^3(x)+C" /></br>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;sin(5x)cos(3x)dx=\int&space;\frac{1}{2}(sin(5x&plus;3x)&plus;sin(5x-3x))dx=\int&space;\frac{1}{2}(sin(8x)&plus;sin(2x))dx=\frac{1}{2}\int&space;sin(8x)dx&plus;\frac{1}{2}\int&space;sin(2x)dx=-\frac{1}{16}cos(8x)&plus;\frac{1}{4}(-cos(2x))&plus;C" title="\int sin(5x)cos(3x)dx=\int \frac{1}{2}(sin(5x+3x)+sin(5x-3x))dx=\int \frac{1}{2}(sin(8x)+sin(2x))dx=\frac{1}{2}\int sin(8x)dx+\frac{1}{2}\int sin(2x)dx=-\frac{1}{16}cos(8x)+\frac{1}{4}(-cos(2x))+C" /></br>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
