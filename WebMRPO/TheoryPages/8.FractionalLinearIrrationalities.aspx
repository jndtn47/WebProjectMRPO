<%@ page language="C#" autoeventwireup="true" codebehind="8.FractionalLinearIrrationalities.aspx.cs" inherits="WebMRPO.TheoryPages.FractionalLinearIrrationalities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Интегрирования дробно-линейных иррациональностей</title>
    <style>
        #workspace{
            height: 1800px;
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
                    <h1 align="center">Интегрирования дробно-линейных иррациональностей</h1>
                       <p align="justify"> Рациональная функция двух аргументов, представленная в виде <img src="https://latex.codecogs.com/gif.latex?R(x,\sqrt[n]{\frac{ax&plus;b}{cx&plus;d}})" title="R(x,\sqrt[n]{\frac{ax+b}{cx+d}})" /> , называется <em><span style="color: chocolate">дробно-линейной иррациональностью.</span></em></p>
                    <p align="justify"><b><span style="color: brown">Теорема:</span></b> интеграл от дробно-линейной иррациональности, при условии что <img src="https://latex.codecogs.com/gif.latex?ad-bc\neq&space;0" title="ad-bc\neq 0" /> , рационализируется с помощью подстановки <img src="https://latex.codecogs.com/gif.latex?t=\sqrt[n]{\frac{ax&plus;b}{cx&plus;d}}" title="t=\sqrt[n]{\frac{ax+b}{cx+d}}" /></p>
                        <br align="justify"><b><span style="color: brown">Доказательство:</span></b></br>
                        <br><img src="https://latex.codecogs.com/gif.latex?t=\sqrt[n]{\frac{ax&plus;b}{cx&plus;d}}\rightarrow&space;t^n=\frac{ax&plus;b}{cx&plus;d}\rightarrow&space;ax&plus;b=t^n\cdot&space;(cx&plus;d)\rightarrow&space;x=\frac{d\cdot&space;t^n-b}{a-c\cdot&space;t^n}" title="t=\sqrt[n]{\frac{ax+b}{cx+d}}\rightarrow t^n=\frac{ax+b}{cx+d}\rightarrow ax+b=t^n\cdot (cx+d)\rightarrow x=\frac{d\cdot t^n-b}{a-c\cdot t^n}" /></br>
                       <br><img src="https://latex.codecogs.com/gif.latex?dx=(\frac{d\cdot&space;t^n-b}{a-c\cdot&space;t^n})'=\frac{n\cdot&space;d\cdot&space;t^{n-1}\cdot&space;(a-c\cdot&space;t^n)-(d\cdot&space;t^n-b)\cdot&space;(-c\cdot&space;n\cdot&space;t^{n-1})}{(a-c\cdot&space;t^n)^2}dt=\frac{a\cdot&space;d\cdot&space;n\cdot&space;t^{n-1}-c\cdot&space;n\cdot&space;d\cdot&space;t^{2n-1}&plus;c\cdot&space;d\cdot&space;n\cdot&space;t^{2n-1}-b\cdot&space;c\cdot&space;n\cdot&space;t^{n-1}}{(a-c\cdot&space;t^n)^2}dt&space;=\frac{(ad-bc)n\cdot&space;t^{n-1}}{(a-c\cdot&space;t^n)^2}dt" title="dx=(\frac{d\cdot t^n-b}{a-c\cdot t^n})'=\frac{n\cdot d\cdot t^{n-1}\cdot (a-c\cdot t^n)-(d\cdot t^n-b)\cdot (-c\cdot n\cdot t^{n-1})}{(a-c\cdot t^n)^2}dt=\frac{a\cdot d\cdot n\cdot t^{n-1}-c\cdot n\cdot d\cdot t^{2n-1}+c\cdot d\cdot n\cdot t^{2n-1}-b\cdot c\cdot n\cdot t^{n-1}}{(a-c\cdot t^n)^2}dt =\frac{(ad-bc)n\cdot t^{n-1}}{(a-c\cdot t^n)^2}dt" /></br>
                       <br>Таким образом, получим новую функцию, интегрируемую в элементарных:</br> 
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;R(x,\sqrt[n]{\frac{ax&plus;b}{cx&plus;d}})dx=\int&space;R(\frac{dt^n-b}{a-ct^n},t)\cdot&space;\frac{(ad-bc)nt^{n-1}}{(a-ct^n)^2}dt" title="\int R(x,\sqrt[n]{\frac{ax+b}{cx+d}})dx=\int R(\frac{dt^n-b}{a-ct^n},t)\cdot \frac{(ad-bc)nt^{n-1}}{(a-ct^n)^2}dt" /></br>
                        <br>Что и требовалось доказать.</br>
                        <br><u>Примеры:</u></br>
                        <br><img src="https://latex.codecogs.com/gif.latex?\int&space;\sqrt{\frac{1&plus;x}{1-x}}\cdot&space;\frac{dx}{1-x}=\begin{bmatrix}&space;t=\sqrt{\frac{1&plus;x}{1-x}}\\&space;x=\frac{t^2-1}{t^2&plus;1}&space;\\&space;dx=\frac{4tdt}{(1&plus;t^2)^2}&space;\end{bmatrix}&space;=\int&space;t\cdot&space;\frac{4t}{(t^2&plus;1)^2}\cdot&space;\frac{dt}{1-\frac{t^2-1}{t^2&plus;1}}=\int&space;\frac{4t^2}{(t^2&plus;1)^2}\cdot&space;\frac{t^2&plus;1}{2}dt=\int&space;\frac{2t^2}{t^2&plus;1}dt=2\int&space;(1-\frac{1}{t^2&plus;1})dt=2\int&space;dt-2\int&space;\frac{1}{t^2&plus;1}dt=2t-2arctg(t)&plus;C=2\cdot&space;\sqrt{\frac{1&plus;x}{1-x}}&space;-&space;2\cdot&space;arctg(\sqrt{\frac{1&plus;x}{1-x}})&plus;C" title="\int \sqrt{\frac{1+x}{1-x}}\cdot \frac{dx}{1-x}=\begin{bmatrix} t=\sqrt{\frac{1+x}{1-x}}\\ x=\frac{t^2-1}{t^2+1} \\ dx=\frac{4tdt}{(1+t^2)^2} \end{bmatrix} =\int t\cdot \frac{4t}{(t^2+1)^2}\cdot \frac{dt}{1-\frac{t^2-1}{t^2+1}}=\int \frac{4t^2}{(t^2+1)^2}\cdot \frac{t^2+1}{2}dt=\int \frac{2t^2}{t^2+1}dt=2\int (1-\frac{1}{t^2+1})dt=2\int dt-2\int \frac{1}{t^2+1}dt=2t-2arctg(t)+C=2\cdot \sqrt{\frac{1+x}{1-x}} - 2\cdot arctg(\sqrt{\frac{1+x}{1-x}})+C" /></br>
                        <br><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{\sqrt[6]{x-1}&plus;1}{(x-1)(\sqrt[3]{x-1}-1)}dx=\begin{bmatrix}&space;t=\sqrt[6]{x-1}\\&space;x&space;=&space;1&plus;t^6&space;\\&space;dx=&space;6t^5dt&space;\end{bmatrix}&space;=&space;\int&space;\frac{t&plus;1}{t^6(t^2-1)}\cdot&space;6t^5dt=\int&space;\frac{6dt}{t(t-1)}=6\int&space;\frac{dt}{t(t-1)}=-6\int&space;\frac{-dt}{t(t-1)}=-6\int&space;\frac{t-1-t}{t(t-1)}dt=-6\int&space;\frac{dt}{t}&plus;6\int&space;\frac{d(t-1)}{t-1}=-6\cdot&space;ln|t|&plus;6\cdot&space;ln|t-1|&plus;C=-6\cdot&space;ln|\sqrt[6]{x-1}|&plus;6\cdot&space;ln|\sqrt[6]{x-1}-1|&plus;C" title="\int \frac{\sqrt[6]{x-1}+1}{(x-1)(\sqrt[3]{x-1}-1)}dx=\begin{bmatrix} t=\sqrt[6]{x-1}\\ x = 1+t^6 \\ dx= 6t^5dt \end{bmatrix} = \int \frac{t+1}{t^6(t^2-1)}\cdot 6t^5dt=\int \frac{6dt}{t(t-1)}=6\int \frac{dt}{t(t-1)}=-6\int \frac{-dt}{t(t-1)}=-6\int \frac{t-1-t}{t(t-1)}dt=-6\int \frac{dt}{t}+6\int \frac{d(t-1)}{t-1}=-6\cdot ln|t|+6\cdot ln|t-1|+C=-6\cdot ln|\sqrt[6]{x-1}|+6\cdot ln|\sqrt[6]{x-1}-1|+C" /></br>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
