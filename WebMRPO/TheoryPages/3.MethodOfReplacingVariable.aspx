<%@ page language="C#" autoeventwireup="true" codebehind="3.MethodOfReplacingVariable.aspx.cs" inherits="WebMRPO.TheoryPages.IntegrationByParts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
     <style>
        #workspace{
            height: 1600px;
        }
        a {
            color: black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="workspace">
            <div id="header">
                <asp:button id="btnAuthorization" runat="server" text="Войти" postbackurl="~/AuthorizationPage.aspx" class="buttonMenu buttonHeader" />
                <asp:button id="btnRegistration" runat="server" text="Зарегистрироваться" postbackurl="~/RegistrationPage.aspx" class="buttonMenu buttonHeader" />
            </div>
            <div id="menu">
                <hr />
                <asp:button id="Button1" runat="server" text="Главная" class="buttonMenu" />
                <asp:button id="Button2" runat="server" text="Теория" class="buttonMenu" />
                <asp:button id="Button3" runat="server" text="Программы" class="buttonMenu" />
                <asp:button id="Button4" runat="server" text="О проекте" class="buttonMenu" />
            </div>
            <div id="content">
                <div id="theorylist">
                    <%Response.Write(htmlArrayList);%>
                </div>
                <div id="text">
                    <h1 align="center">Метод замены переменной</h1>
                    <p align="justify">
                        <b><span style="color: brown">Теорема:</span></b>пусть функция
                        <img src="https://latex.codecogs.com/gif.latex?t&space;=&space;\varphi&space;(x&space;)" title="t = \varphi (x )" />
                        определена и дифференцируема на некотором промежутке
                        <img src="https://latex.codecogs.com/gif.latex?\Delta&space;x" title="\Delta x" />
                        и пусть
                        <img src="https://latex.codecogs.com/gif.latex?\Delta&space;t" title="\Delta t" />
                        множество значений этой функции. Пусть функция 
                         <img src="https://latex.codecogs.com/gif.latex?f(t)" title="f(t)" />
                        определена на промежутке
                        <img src="https://latex.codecogs.com/gif.latex?\Delta&space;t" title="\Delta t" />
                        и существует первообразная этой функции 
                        <img src="https://latex.codecogs.com/gif.latex?F(t)" title="F(t)" />
                        на
                        <img src="https://latex.codecogs.com/gif.latex?\Delta&space;t" title="\Delta t" />.Тогда на промежутке
                        <img src="https://latex.codecogs.com/gif.latex?\Delta&space;x" title="\Delta x" />
                        существует первообразная для функции 
                       <img src="https://latex.codecogs.com/gif.latex?f(\varphi&space;(x)\cdot&space;\varphi&space;'(x)&space;=&space;F(\varphi&space;(x))" title="f(\varphi (x)\cdot \varphi '(x) = F(\varphi (x))" />
                        причем имеет место равенство:<img src="https://latex.codecogs.com/gif.latex?\int&space;f(\varphi&space;(x)\cdot&space;\varphi&space;'(x)dx&space;=&space;F(\varphi&space;(x))&space;&plus;&space;C" title="\int f(\varphi (x)\cdot \varphi '(x)dx = F(\varphi (x)) + C" />
                    </p>
                    <a><b><span style="color: brown">Доказательство:</span></b> Найдем производную:
                        <img src="https://latex.codecogs.com/gif.latex?(F(\varphi&space;(x)))'=F'(\varphi&space;(x))\cdot&space;\varphi&space;'(x)=f(\varphi&space;(x))\cdot&space;\varphi&space;'(x),\forall&space;x\in&space;\Delta&space;x" title="(F(\varphi (x)))'=F'(\varphi (x))\cdot \varphi '(x)=f(\varphi (x))\cdot \varphi '(x),\forall x\in \Delta x" />
                        . Значит
                        <img src="https://latex.codecogs.com/gif.latex?F(\varphi(x))" title="F(\varphi(x))" />
                        по определению является первообразной для функции
                        <img src="https://latex.codecogs.com/gif.latex?f(\varphi&space;(x))\cdot&space;\varphi&space;'(x)" title="f(\varphi (x))\cdot \varphi '(x)" />
                        , что и требовалось доказать </a>
                    <p>
                        Предположим, что требуется найти интеграл от функции
                        <img src="https://latex.codecogs.com/gif.latex?g(x)" title="g(x)" />
                        . Подберем функцию
                        <img src="https://latex.codecogs.com/gif.latex?t(\varphi&space;(x))" title="t(\varphi (x))" />
                        так, что функция
                        <img src="https://latex.codecogs.com/gif.latex?g(x)" title="g(x)" />
                        может быть представлена в виде 
                     <img src="https://latex.codecogs.com/gif.latex?g(x)=&space;f(\varphi&space;(x))\cdot&space;\varphi&space;'(x)" title="g(x)= f(\varphi (x))\cdot \varphi '(x)" />
                        , причем функция
                        <img src="https://latex.codecogs.com/gif.latex?f(t)" title="f(t)" />
                        легко интегрируется, то есть 
                       <img src="https://latex.codecogs.com/gif.latex?\int&space;f(t)dx&space;=&space;F(t)&space;&plus;&space;C" title="\int f(t)dx = F(t) + C" />
                        . Тогда по теореме
                        <img src="https://latex.codecogs.com/gif.latex?\int&space;g(x)dx&space;=&space;F(\varphi&space;(x))&space;&plus;&space;C" title="\int g(x)dx = F(\varphi (x)) + C" />
                    </p>
                    <p>Рассмотрим ряд <u>примеров</u>:</p>
                    <p><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{dx}{x&plus;19}=\begin{bmatrix}&space;t&space;=&space;x&plus;&space;19&space;&&&space;x=&space;t-19&space;\\&space;dx&space;=&space;(t-19)'dt&space;=&space;dt&space;\end{bmatrix}&space;=&space;\int&space;\frac{dt}{t}=ln|t|&plus;C=ln|x&plus;19|&plus;C" title="\int \frac{dx}{x+19}=\begin{bmatrix} t = x+ 19 && x= t-19 \\ dx = (t-19)'dt = dt \end{bmatrix} = \int \frac{dt}{t}=ln|t|+C=ln|x+19|+C" /></p>
                    <p><img src="https://latex.codecogs.com/gif.latex?\int&space;e^{7x-3}dx=\begin{bmatrix}&space;t=7x-3&space;&&&space;x=\frac{t&plus;3}{7}\\&space;dx&space;=&space;\frac{1}{7}dt&space;\end{bmatrix}&space;=&space;\int&space;e^t\frac{1}{7}dt=\frac{1}{7}e^t&plus;C=\frac{1}{7}e^{7x-3}&plus;C&space;\newline&space;\int&space;e^{7x-3}dx&space;=&space;\int&space;e^{7x-3}d(7x-3)\cdot&space;\frac{1}{7}=\frac{1}{7}e^{7x-3}&plus;C" title="\int e^{7x-3}dx=\begin{bmatrix} t=7x-3 && x=\frac{t+3}{7}\\ dx = \frac{1}{7}dt \end{bmatrix} = \int e^t\frac{1}{7}dt=\frac{1}{7}e^t+C=\frac{1}{7}e^{7x-3}+C \newline \int e^{7x-3}dx = \int e^{7x-3}d(7x-3)\cdot \frac{1}{7}=\frac{1}{7}e^{7x-3}+C" /></p>
                    <p><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{arctg^7(x)}{1&plus;x^2}dx=\int&space;arctg^7(x)\cdot&space;\frac{1}{1&plus;x^2}dx=&space;\begin{bmatrix}&space;t&space;=&space;arctg(x)&space;&&&space;dt&space;=&space;\frac{1}{1&plus;x^2}dx&space;\end{bmatrix}&space;=&space;\int&space;t^7dt=\frac{t^8}{8}&plus;C=\frac{1}{8}arctg^8(x)&plus;C" title="\int \frac{arctg^7(x)}{1+x^2}dx=\int arctg^7(x)\cdot \frac{1}{1+x^2}dx= \begin{bmatrix} t = arctg(x) && dt = \frac{1}{1+x^2}dx \end{bmatrix} = \int t^7dt=\frac{t^8}{8}+C=\frac{1}{8}arctg^8(x)+C" /></p>
                    <p><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{dx}{sin(x)}=\int&space;\frac{sin(x)}{sin^2(x)}dx=\int&space;\frac{sin(x)}{1-cos^2(x)}dx=\begin{bmatrix}&space;t=&space;cos(x)&space;&&&space;dt&space;=&space;-&space;sin(x)dx&space;\end{bmatrix}&space;=&space;-\int&space;\frac{dt}{1-t^2}=\int&space;\frac{dt}{t^2-1}=\frac{1}{2}\cdot&space;ln|\frac{t-1}{t&plus;1}|&plus;C=\frac{1}{2}\cdot&space;ln|\frac{cos(x)-1}{cos(x)&plus;1}|&plus;C" title="\int \frac{dx}{sin(x)}=\int \frac{sin(x)}{sin^2(x)}dx=\int \frac{sin(x)}{1-cos^2(x)}dx=\begin{bmatrix} t= cos(x) && dt = - sin(x)dx \end{bmatrix} = -\int \frac{dt}{1-t^2}=\int \frac{dt}{t^2-1}=\frac{1}{2}\cdot ln|\frac{t-1}{t+1}|+C=\frac{1}{2}\cdot ln|\frac{cos(x)-1}{cos(x)+1}|+C" /></p>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
