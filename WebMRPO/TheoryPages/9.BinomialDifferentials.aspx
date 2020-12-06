<%@ page language="C#" autoeventwireup="true" codebehind="9.BinomialDifferentials.aspx.cs" inherits="WebMRPO.TheoryPages.BinomialDifferentials" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>3.1 ПМИ</title>
    <style>
        #workspace{
            height: 2500px;
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
                    <h1 align="center">Интегрирование биномиальных дифференциалов</h1>
                     <p align="justify">Выражение вида <img src="https://latex.codecogs.com/gif.latex?x^m&space;(a&plus;bx^n)^p&space;dx" title="x^m (a+bx^n)^p dx" /> , где <img src="https://latex.codecogs.com/gif.latex?a,b\in&space;\mathbb{R}&space;;&space;m,n,p\in&space;\mathbb{Q}" title="a,b\in \mathbb{R} ; m,n,p\in \mathbb{Q}" /> 
                         , называют <span style="color: chocolate"><em>биномиальным дифференциалом</em></span>.</p>
                     <p align="justify"><b><span style="color: brown">Теорема</span></b> : интеграл от биномиального дифференциала выражается в конечном виде через элементарные функции в трех и только в трех случаях :
                         если <img src="https://latex.codecogs.com/gif.latex?p\in&space;\mathbb{Z}" title="p\in \mathbb{Z}" /> ,  если <img src="https://latex.codecogs.com/gif.latex?\frac{m&plus;1}{n}&plus;p\in&space;\mathbb{Z}" title="\frac{m+1}{n}+p\in \mathbb{Z}" /> 
                       или <img src="https://latex.codecogs.com/gif.latex?\frac{m&plus;1}{n}&space;\in&space;\mathbb{Z}" title="\frac{m+1}{n} \in \mathbb{Z}" /></p>
                <a><span style="color: brown">Замечание:</span></a>
                    <br>В первом случае интеграл от биномиального дифференциала рационализируется подстановкой вида <img src="https://latex.codecogs.com/gif.latex?p\in&space;\mathbb{Z}\rightarrow&space;t=\sqrt[r]{x}" title="p\in \mathbb{Z}\rightarrow t=\sqrt[r]{x}" />
                       , где r - НОК(m, n); </br>
                    <br>Во втором случае интеграл от биномиального дифференциала рационализируется подстановкой: <img src="https://latex.codecogs.com/gif.latex?\frac{m&plus;1}{n}&plus;p\in&space;\mathbb{Z}\rightarrow&space;t=\sqrt[s]{\frac{a}{x^2}&plus;b}" title="\frac{m+1}{n}+p\in \mathbb{Z}\rightarrow t=\sqrt[s]{\frac{a}{x^2}+b}" />
                        , где s - знаменатель числа p;</br>
                    <br>В третьем случае: <img src="https://latex.codecogs.com/gif.latex?\frac{m&plus;1}{n}&space;\in&space;\mathbb{Z}\rightarrow&space;t=\sqrt[s]{a&plus;bx^n}" title="\frac{m+1}{n} \in \mathbb{Z}\rightarrow t=\sqrt[s]{a+bx^n}" />
                        , где s - знаменатель числа p; </br>
                    <br><u>Например:</u><br>
                 <br><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{\sqrt[3]{1&plus;\sqrt[4]{x}}}{\sqrt{x}}dx=\int&space;x^{-1/2}(1&plus;x^{1/4})^{1/3}dx=&space;\newline&space;\begin{bmatrix}&space;m&space;=&space;-\frac{1}{2}&space;&&&space;n&space;=\frac{1}{4}&space;&&&space;p&space;=&space;\frac{1}{3}&space;\\&space;t&space;=&space;\sqrt[3]{1&plus;\sqrt[4]{x}}&space;&&&space;x=&space;(t^3-1)^4&space;&&&space;dx=&space;12t^2(t^3-1)^3dt&space;\end{bmatrix}&space;=&space;\newline&space;\int&space;\frac{12t^3(t^3-1)^3}{(t^3-1)^2}dt&space;=&space;12\int&space;t^3(t^3-1)dt=&space;12\int&space;t^6dt&space;-&space;\newline&space;12\int&space;t^3dt&space;=&space;\frac{12}{7}&space;(\sqrt[3]{1&plus;\sqrt[4]{x}})^7-\frac{12}{4}(\sqrt[3]{1&plus;\sqrt[4]{x}})^4&plus;C" title="\int \frac{\sqrt[3]{1+\sqrt[4]{x}}}{\sqrt{x}}dx=\int x^{-1/2}(1+x^{1/4})^{1/3}dx= \newline \begin{bmatrix} m = -\frac{1}{2} && n =\frac{1}{4} && p = \frac{1}{3} \\ t = \sqrt[3]{1+\sqrt[4]{x}} && x= (t^3-1)^4 && dx= 12t^2(t^3-1)^3dt \end{bmatrix} = \newline \int \frac{12t^3(t^3-1)^3}{(t^3-1)^2}dt = 12\int t^3(t^3-1)dt= 12\int t^6dt - \newline 12\int t^3dt = \frac{12}{7} (\sqrt[3]{1+\sqrt[4]{x}})^7-\frac{12}{4}(\sqrt[3]{1+\sqrt[4]{x}})^4+C" /></br>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{dx}{\sqrt[4]{1&plus;x^4}}=\int&space;x^0(1&plus;x^4)^{-1/4}dx=&space;\newline&space;\begin{bmatrix}&space;m=0&space;&&&space;n=4&space;&&&space;p=-\frac{1}{4}&space;\\&space;p&space;\notin&space;\mathbb{Z}&space;&&&space;\frac{m&plus;1}{n}&space;=&space;\frac{1}{4}&space;\notin&space;\mathbb{Z}&space;&&&space;\frac{m&plus;1}{n}&plus;p&space;=&space;0&space;\in&space;\mathbb{Z}&space;\\&space;t&space;=&space;\sqrt[4]{\frac{1}{x^4}&plus;1}&space;&&&space;x=&space;\frac{1}{\sqrt[4]{t^4-1}}&space;&&&space;dx&space;=&space;-\frac{1}{4}(t^4-1)^{-5/4}\cdot&space;4t^3dt&space;\end{bmatrix}&space;=&space;\newline&space;-\int(1&plus;\frac{1}{t^4-1})^{-1/4}t^3(t^4-1)^{-5/4}dt=-\int&space;(\frac{t^4}{t^4-1})^{-1/4}t^3(t^4-1)^{-5/4}=&space;\newline&space;-\int&space;\frac{t^2}{t^4-1}dt=-\int&space;\frac{t^2}{(t^2-1)(t^2&plus;1)}dt=-\frac{1}{2}\int&space;\frac{(t^2&plus;1)&plus;(t^2-1)}{(t^2-1)(t^2&plus;1)}dt&space;=&space;\newline&space;-\frac{1}{2}(\int&space;\frac{dt}{t^2&plus;1}&plus;&space;\int&space;\frac{dt}{t^2-1})=&space;-\frac{1}{2}arctg(t)-\frac{1}{4}\cdot&space;ln|\frac{t-1}{t&plus;1}|&plus;C&space;" title="\int \frac{dx}{\sqrt[4]{1+x^4}}=\int x^0(1+x^4)^{-1/4}dx= \newline \begin{bmatrix} m=0 && n=4 && p=-\frac{1}{4} \\ p \notin \mathbb{Z} && \frac{m+1}{n} = \frac{1}{4} \notin \mathbb{Z} && \frac{m+1}{n}+p = 0 \in \mathbb{Z} \\ t = \sqrt[4]{\frac{1}{x^4}+1} && x= \frac{1}{\sqrt[4]{t^4-1}} && dx = -\frac{1}{4}(t^4-1)^{-5/4}\cdot 4t^3dt \end{bmatrix} = \newline -\int(1+\frac{1}{t^4-1})^{-1/4}t^3(t^4-1)^{-5/4}dt=-\int (\frac{t^4}{t^4-1})^{-1/4}t^3(t^4-1)^{-5/4}= \newline -\int \frac{t^2}{t^4-1}dt=-\int \frac{t^2}{(t^2-1)(t^2+1)}dt=-\frac{1}{2}\int \frac{(t^2+1)+(t^2-1)}{(t^2-1)(t^2+1)}dt = \newline -\frac{1}{2}(\int \frac{dt}{t^2+1}+ \int \frac{dt}{t^2-1})= -\frac{1}{2}arctg(t)-\frac{1}{4}\cdot ln|\frac{t-1}{t+1}|+C" /></br>
                   <br>Возвращаясь к исходным переменным, получим</br>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{dx}{\sqrt[4]{1&plus;x^4}}&space;=&space;-\frac{1}{2}arctg(\sqrt[4]{\frac{1}{x^4}&plus;1})-\frac{1}{4}\cdot&space;ln|\frac{\sqrt[4]{\frac{1}{x^4}&plus;1}-1}{\sqrt[4]{\frac{1}{x^4}&plus;1}&plus;1}|&plus;C" title="\int \frac{dx}{\sqrt[4]{1+x^4}} = -\frac{1}{2}arctg(\sqrt[4]{\frac{1}{x^4}+1})-\frac{1}{4}\cdot ln|\frac{\sqrt[4]{\frac{1}{x^4}+1}-1}{\sqrt[4]{\frac{1}{x^4}+1}+1}|+C" /></br>
                    <br><span style="color: brown">Замечание:</span> сформулированная теорема позволяет приводить примеры "не берущихся" интегралов, то есть тех интегралов, которые не вычисляются в конечном виде через элементарные функции.</br>
                    <br><u>Например</u>, "не берущимся" интегралом является интеграл следующего вида: </br>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;\sqrt{1&plus;x^3}dx=\begin{bmatrix}&space;n&space;=&space;3&space;&&&space;m=0&&&space;p=\frac{1}{2}\\&space;p&space;\notin&space;\mathbb{Z}&space;&&&space;\frac{m&plus;1}{n}=&space;\frac{1}{3}\notin&space;\mathbb{Z}&space;&&&space;\frac{m&plus;1}{n}&space;&plus;&space;p&space;\notin&space;\mathbb{Z}&space;\end{bmatrix}" title="\int \sqrt{1+x^3}dx=\begin{bmatrix} n = 3 && m=0&& p=\frac{1}{2}\\ p \notin \mathbb{Z} && \frac{m+1}{n}= \frac{1}{3}\notin \mathbb{Z} && \frac{m+1}{n} + p \notin \mathbb{Z} \end{bmatrix}" /></br>
                    <br><u>Основные примеры "не берущихся" интегралов</u></br>
                    <br>№1. <em>Интеграл Пуассона:</em> <img src="https://latex.codecogs.com/gif.latex?\int&space;e^{-x^{2}}dx" title="\int e^{-x^{2}}dx" /></br>
                    <br>№2. <em>Интегралы Френеля:</em> <img src="https://latex.codecogs.com/gif.latex?\int&space;sin(x^2)dx&space;,&space;\int&space;cos(x^2)dx" title="\int sin(x^2)dx , \int cos(x^2)dx" /> </br>
                    <br>№3. <em>Интегральный синус, косинус и логарифм:</em> <img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{sin(x)}{x}dx&space;,&space;\int&space;\frac{cos(x)}{x}dx&space;,&space;\int&space;\frac{dx}{ln(x)}" title="\int \frac{sin(x)}{x}dx , \int \frac{cos(x)}{x}dx , \int \frac{dx}{ln(x)}" /> </br>
                
                </div>
            </div>
            <div id="footer"></div>
        </div>

    </form>
</body>
</html>
