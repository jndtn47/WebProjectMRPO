<%@ page language="C#" autoeventwireup="true" codebehind="4.IntegrationByParts.aspx.cs" inherits="WebMRPO.TheoryPages.IntegrationByParts1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>3.1 ПМИ</title>
     <style>
        #workspace{
            height: 2000px;
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
                    <h1 align="center">Метод интегрирования по частям</h1>
                     <p align="justify">
                        <b><span style="color: brown">Теорема: </span></b> пусть функции <img src="https://latex.codecogs.com/gif.latex?U&space;=&space;U(x)&space;,&space;V=V(x)" title="U = U(x) , V=V(x)" />
                         дифференцируемы на промежутке <img src="https://latex.codecogs.com/gif.latex?\Delta" title="\Delta" /> , и на этом промежутке существует первообразная для 
                         функции <img src="https://latex.codecogs.com/gif.latex?V(x)\cdot&space;U'(x)" title="V(x)\cdot U'(x)" />, тогда на <img src="https://latex.codecogs.com/gif.latex?\Delta" title="\Delta" /> 
                         существует первообразная для функции <img src="https://latex.codecogs.com/gif.latex?V'(x)\cdot&space;U(x)" title="V'(x)\cdot U(x)" />, причем имеет место равенство <img src="https://latex.codecogs.com/gif.latex?\int&space;(U(x)\cdot&space;V'(x))dx=U(x)\cdot&space;V(x)-\int&space;(V(x)\cdot&space;U'(x))dx" title="\int (U(x)\cdot V'(x))dx=U(x)\cdot V(x)-\int (V(x)\cdot U'(x))dx" /> </p>
                    <p align="justify">
                        <b><span style="color: brown">Доказательство: </span></b> для доказательства этого факта достаточно найти производную вида: </p><p><img src="https://latex.codecogs.com/gif.latex?(U(x)\cdot&space;V(x))'=U'(x)\cdot&space;V(x)&plus;U(x)\cdot&space;V'(x)\rightarrow&space;U(x)\cdot&space;V'(x)=(U(x)\cdot&space;V(x))'-U'(x)\cdot&space;V(x)\rightarrow&space;(U(x)\cdot&space;V'(x))dx=(U(x)\cdot&space;V(x))'dx-(U'(x)\cdot&space;V(x))dx." title="(U(x)\cdot V(x))'=U'(x)\cdot V(x)+U(x)\cdot V'(x)\rightarrow U(x)\cdot V'(x)=(U(x)\cdot V(x))'-U'(x)\cdot V(x)\rightarrow (U(x)\cdot V'(x))dx=(U(x)\cdot V(x))'dx-(U'(x)\cdot V(x))dx." /> </p>
                        Заметим, что интеграл <img src="https://latex.codecogs.com/gif.latex?\int&space;(V(x)\cdot&space;U'(x))dx" title="\int (V(x)\cdot U'(x))dx" /> существует по условию, так как подынтегральная функция имеет первообразную, тогда 
                        <img src="https://latex.codecogs.com/gif.latex?\int&space;(V(x)\cdot&space;U(x))'dx=\int&space;d(U(x)\cdot&space;V(x))=U(x)\cdot&space;V(x)&plus;C" title="\int (V(x)\cdot U(x))'dx=\int d(U(x)\cdot V(x))=U(x)\cdot V(x)+C" />.А значит существует и 
                        <img src="https://latex.codecogs.com/gif.latex?\int&space;(V'(x)\cdot&space;U(x))dx=U(x)\cdot&space;V(x)&space;-&space;\int&space;(V(x)\cdot&space;U'(x))dx" title="\int (V'(x)\cdot U(x))dx=U(x)\cdot V(x) - \int (V(x)\cdot U'(x))dx" />, что и требовалось доказать</p>
                    <p align="justify"><u>Например:</u> </p>
                      <br> <img src="https://latex.codecogs.com/gif.latex?\int&space;x\cdot&space;e^{x}dx=\begin{bmatrix}&space;U=x&space;&&space;dU=dx\\&space;dV=e^{x}dx&space;&&space;V=e^{x}&space;\end{bmatrix}&space;=&space;x\cdot&space;e^{x}-\int&space;e^{x}dx=x\cdot&space;e^{x}-e^{x}=e^{x}\cdot&space;(x-1)&plus;C" title="\int x\cdot e^{x}dx=\begin{bmatrix} U=x & dU=dx\\ dV=e^{x}dx & V=e^{x} \end{bmatrix} = x\cdot e^{x}-\int e^{x}dx=x\cdot e^{x}-e^{x}=e^{x}\cdot (x-1)+C" /> </br>
                    <br> <img src="https://latex.codecogs.com/gif.latex?\int&space;ln(x)\cdot&space;dx=\begin{bmatrix}&space;U=ln(x)&space;&&space;dU=\frac{1}{x}dx\\dV=dx&space;&&space;V=x&space;\end{bmatrix}&space;=&space;x\cdot&space;ln(x)-\int&space;x\cdot&space;\frac{1}{x}dx=x\cdot&space;ln(x)-\int&space;1\cdot&space;dx=x\cdot&space;ln(x)-x&plus;C" title="\int ln(x)\cdot dx=\begin{bmatrix} U=ln(x) & dU=\frac{1}{x}dx\\dV=dx & V=x \end{bmatrix} = x\cdot ln(x)-\int x\cdot \frac{1}{x}dx=x\cdot ln(x)-\int 1\cdot dx=x\cdot ln(x)-x+C" /></br>
                    <p align="justify"><span style="color: brown">Замечание №1:</span></p> 
                    <p><img src="https://latex.codecogs.com/gif.latex?\int&space;p(x)\cdot&space;\left\{\begin{matrix}&space;sin(x)\\&space;cos(x)\\&space;e^{x}&space;\end{matrix}\right.&space;dx=\begin{bmatrix}&space;U=p(x)&space;\end{bmatrix}" title="\int p(x)\cdot \left\{\begin{matrix} sin(x)\\ cos(x)\\ e^{x} \end{matrix}\right. dx=\begin{bmatrix} U=p(x) \end{bmatrix}" />
                        </p>
                    <p align="justify"><span style="color: brown">Замечание №2:</span></p> 
                    <p><img src="https://latex.codecogs.com/gif.latex?\int&space;p(x)\cdot&space;\left\{\begin{matrix}&space;ln(x)\\&space;arcsin(x)\\&space;arctg(x)&space;\end{matrix}\right.&space;dx=\begin{bmatrix}&space;U=ln(x),...&space;\end{bmatrix}" title="\int p(x)\cdot \left\{\begin{matrix} ln(x)\\ arcsin(x)\\ arctg(x) \end{matrix}\right. dx=\begin{bmatrix} U=ln(x),... \end{bmatrix}" /></p>
                    <a><u>Пример возвратного интегрирования:</u> <img src="https://latex.codecogs.com/gif.latex?I=\int&space;e^{x}sin(x)dx&space;=&space;\begin{bmatrix}&space;U=sin(x)&space;&&space;dU&space;=&space;cos(x)dx&space;\\&space;dV=&space;e^xdx&space;&&space;V=&space;e^x&space;\end{bmatrix}&space;=&space;\newline&space;=&space;e^x&space;sin(x)&space;-&space;\int&space;e^xcos(x)dx&space;=&space;\begin{bmatrix}&space;u&space;=&space;cos(x)&&space;dU=-sin(x)dx&space;\\&space;dV&space;=&space;e^xdx&space;&&space;V&space;=&space;e^x&space;\end{bmatrix}&space;=&space;\newline&space;e^x&space;sin(x)&space;-&space;e^xcos(x)&space;-&space;\int&space;e^xsin(x)dx,&space;\newline&space;\newline&space;I&space;=&space;e^xsin(x)&space;-&space;e^xcos(x)&space;-I&space;\newline&space;2I=e^xsin(x)&space;-&space;e^xcos(x)&space;\newline&space;I&space;=&space;\frac{1}{2}&space;(e^xsin(x)-&space;e^xcos(x)),&space;\newline&space;\int&space;e^{x}sin(x)dx&space;=&space;\frac{1}{2}&space;(e^xsin(x)-&space;e^xcos(x))" title="I=\int e^{x}sin(x)dx = \begin{bmatrix} U=sin(x) & dU = cos(x)dx \\ dV= e^xdx & V= e^x \end{bmatrix} = \newline = e^x sin(x) - \int e^xcos(x)dx = \begin{bmatrix} u = cos(x)& dU=-sin(x)dx \\ dV = e^xdx & V = e^x \end{bmatrix} = \newline e^x sin(x) - e^xcos(x) - \int e^xsin(x)dx, \newline \newline I = e^xsin(x) - e^xcos(x) -I \newline 2I=e^xsin(x) - e^xcos(x) \newline I = \frac{1}{2} (e^xsin(x)- e^xcos(x)), \newline \int e^{x}sin(x)dx = \frac{1}{2} (e^xsin(x)- e^xcos(x))" /></a>

                    </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
