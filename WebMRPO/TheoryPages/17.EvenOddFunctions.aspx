<%@ page language="C#" autoeventwireup="true" codebehind="17.EvenOddFunctions.aspx.cs" inherits="WebMRPO.TheoryPages._17_EvenOddFunctions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>3.1 ПМИ</title>
    <style>
        #workspace{
            height: 1900px;
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
                    <h1 align="center">Интегрирование четных, нечетных и периодических функций</h1>
                    <p align="justify"><b><span style="color: brown">Теорема №1: </span></b> пусть функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> 
                        является <u>четной</u>, непрерывной на отрезке <img src="https://latex.codecogs.com/gif.latex?[-a,a]" title="[-a,a]" /> функцией , тогда</p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{-a}^{a}f(x)dx=2\int_{0}^{a}f(x)dx" title="\int_{-a}^{a}f(x)dx=2\int_{0}^{a}f(x)dx" /></a>
                    <br align="justify"><b><span style="color: brown">Доказательство: </span></b>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int_{-a}^{a}f(x)dx=\int_{-a}^{0}f(x)dx&plus;\int_{0}^{a}f(x)dx\newline&space;\int_{-a}^{0}f(x)dx=\begin{bmatrix}&space;t=-x&space;&&space;dt=-dx&space;\\&space;t(-a)&space;=a&space;&&space;t(0)=0&space;\end{bmatrix}&space;=&space;-&space;\int_{a}^{0}f(-t)dt=\newline&space;=&space;-&space;\int_{a}^{0}f(t)dt&space;=&space;\int_{0}^{a}f(t)dt" title="\int_{-a}^{a}f(x)dx=\int_{-a}^{0}f(x)dx+\int_{0}^{a}f(x)dx\newline \int_{-a}^{0}f(x)dx=\begin{bmatrix} t=-x & dt=-dx \\ t(-a) =a & t(0)=0 \end{bmatrix} = - \int_{a}^{0}f(-t)dt=\newline = - \int_{a}^{0}f(t)dt = \int_{0}^{a}f(t)dt" /></br>
                    <a>То есть,</a>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int_{-a}^{a}f(x)dx=2&space;\int_{0}^{a}f(x)dx" title="\int_{-a}^{a}f(x)dx=2 \int_{0}^{a}f(x)dx" /></br>
                    <br>Вспомним, что функция  <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> называется <span style="color: chocolate"><em>четной</em></span> , если выполнено <img src="https://latex.codecogs.com/gif.latex?f(-x)=f(x)" title="f(-x)=f(x)" /></br>
                    <p align="justify"><b><span style="color: brown">Теорема №2:</span></b> пусть функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> 
                        является <u>нечетной</u>, непрерывной на отрезке <img src="https://latex.codecogs.com/gif.latex?[-a,a]" title="[-a,a]" /> функцией , тогда</p>
                <a><img src="https://latex.codecogs.com/gif.latex?\int_{-a}^{a}f(x)dx=0" title="\int_{-a}^{a}f(x)dx=0" /></a>
                    <br align="justify"><b><span style="color: brown">Доказательство: </span></b>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int_{-a}^{a}f(x)dx=\int_{-a}^{0}f(x)dx&plus;\int_{0}^{a}f(x)dx&space;=&space;\int_{0}^{a}f(x)dx&space;-&space;\int_{0}^{a}f(x)dx&space;=&space;0" title="\int_{-a}^{a}f(x)dx=\int_{-a}^{0}f(x)dx+\int_{0}^{a}f(x)dx = \int_{0}^{a}f(x)dx - \int_{0}^{a}f(x)dx = 0" /></br>
                    <a>Так как</a>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int_{-a}^{0}f(x)dx&space;=&space;\begin{bmatrix}&space;t&space;=&space;-x&space;&&space;dt&space;=&space;-dx&space;\\&space;t(-a)&space;=&space;a&space;&&space;t(0)=0&space;\end{bmatrix}&space;=&space;-\int_{a}^{0}f(-t)dt&space;=&space;-(-\int_{a}^{0}f(t)dt)&space;=&space;-&space;\int_{0}^{a}&space;f(t)dt" title="\int_{-a}^{0}f(x)dx = \begin{bmatrix} t = -x & dt = -dx \\ t(-a) = a & t(0)=0 \end{bmatrix} = -\int_{a}^{0}f(-t)dt = -(-\int_{a}^{0}f(t)dt) = - \int_{0}^{a} f(t)dt" /></br>
                    <br>Вспомним, что функция  <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> называется <em><span style="color: chocolate">нечетной</span></em>, если выполнено <img src="https://latex.codecogs.com/gif.latex?f(-x)=-f(x)" title="f(-x)=-f(x)" /></br>
                    <p align="justify"><b><span style="color: brown">Теорема №3: </span></b> пусть функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> непрерывна на всей числовой прямой и 
                        является <u>периодической</u> с периодом T, тогда </p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{a&plus;T}f(x)dx&space;=&space;\int_{0}^{T}f(x)dx" title="\int_{a}^{a+T}f(x)dx = \int_{0}^{T}f(x)dx" /></a>
                    <br align="justify"><b><span style="color: brown">Доказательство: </span></b>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{a&plus;T}f(x)dx&space;=&space;\int_{a}^{0}f(x)dx&plus;\int_{0}^{T}f(x)dx&plus;\int_{T}^{a&plus;T}f(x)dx&space;=&space;\newline&space;=&space;\int_{a}^{0}f(x)dx&space;&plus;&space;\int_{0}^{T}f(x)dx&space;-&space;\int_{a}^{0}f(x)dx&space;=&space;\int_{0}^{T}f(x)dx&space;;&space;\newline&space;\newline&space;\newline&space;\int_{T}^{a&plus;T}=\begin{bmatrix}&space;t=x-T&space;&&space;dt=dx&space;\\&space;t(T)=0&space;&&space;t(a&plus;T)=a&space;\end{bmatrix}&space;=&space;\int_{0}^{a}f(t&plus;T)dt=-\int_{a}^{0}f(t)dt" title="\int_{a}^{a+T}f(x)dx = \int_{a}^{0}f(x)dx+\int_{0}^{T}f(x)dx+\int_{T}^{a+T}f(x)dx = \newline = \int_{a}^{0}f(x)dx + \int_{0}^{T}f(x)dx - \int_{a}^{0}f(x)dx = \int_{0}^{T}f(x)dx ; \newline \newline \newline \int_{T}^{a+T}=\begin{bmatrix} t=x-T & dt=dx \\ t(T)=0 & t(a+T)=a \end{bmatrix} = \int_{0}^{a}f(t+T)dt=-\int_{a}^{0}f(t)dt" /></br>
                </div>
            </div>
            <div id="footer"></div>
        </div>

    </form>
</body>
</html>
