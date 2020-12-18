<%@ page language="C#" autoeventwireup="true" codebehind="15.ChangeVariable.aspx.cs" inherits="WebMRPO.TheoryPages._15_ChangeVariable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Метод замены переменной в определенном интеграле</title>
    <style>
        #workspace{
            height: 1700px;
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
                <asp:Button ID="Button4" runat="server" Text="О проекте" class="buttonMenu" PostBackUrl="~/About.aspx" />ы
            </div>
            <div id="content">
                <div id="theorylist">
                    <%Response.Write(htmlArrayList);%>
                </div>
                <div id="text">
                    <h1 align="center">Метод замены переменной в определенном интеграле</h1>
                    <p><b><span style="color:brown">Теорема:</span></b>пусть выполняются следующие условия:</p>
                    <ul type="circle">
                    <li>Функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />  непрерывна на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> </li>
                    <li>Отрезок  <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> представляет собой множество значений некоторой функции 
                    <img src="https://latex.codecogs.com/gif.latex?x=\varphi&space;(t)" title="x=\varphi (t)" />, определенной на отрезке <img src="https://latex.codecogs.com/gif.latex?[\alpha&space;,\beta&space;]" title="[\alpha ,\beta ]" />
                    и имеющей на этом отрезке непрерывную производную</li>
                    <li><img src="https://latex.codecogs.com/gif.latex?\varphi&space;(\alpha&space;)=a&space;,&space;\varphi&space;(\beta&space;)=b" title="\varphi (\alpha )=a , \varphi (\beta )=b" /></li>
                        </ul>
                    <a>Тогда справедливо равенство:</a>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}f(x)dx=\int_{\alpha&space;}^{\beta&space;}(f(\varphi&space;(t))\cdot&space;\varphi&space;'(t))dt" title="\int_{a}^{b}f(x)dx=\int_{\alpha }^{\beta }(f(\varphi (t))\cdot \varphi '(t))dt" /></a>
                    <br><b><span style="color:brown">Доказательство:</span></b> так как функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />  непрерывна на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />, то она на этом отрезке 
                    интегрируема. Если  <img src="https://latex.codecogs.com/gif.latex?F(x)" title="F(x)" /> - любая первообразная функции <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />, тогда по формуле Ньютона-Лейбница имеем: </br>
                   <a> <img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}f(x)dx&space;=F(b)-F(a)" title="\int_{a}^{b}f(x)dx =F(b)-F(a) />. </a>
                    <a> <img src="https://latex.codecogs.com/gif.latex?x=\varphi&space;(t)" title="x=\varphi (t)" /> и <img src="https://latex.codecogs.com/gif.latex?F(x)" title="F(x)" />  дифференцируемы на своих промежутках. Значит сложная функция 
                    <img src="https://latex.codecogs.com/gif.latex?F(\varphi&space;(t))" title="F(\varphi (t))" /> также дифференцируема на отрезке <img src="https://latex.codecogs.com/gif.latex?[\alpha&space;,\beta&space;]" title="[\alpha ,\beta ]" />, то есть 
                   <img src="https://latex.codecogs.com/gif.latex?(F(\varphi&space;(t)))'=f(\varphi&space;(t))\cdot&space;\varphi&space;'(t)=Q(t)" title="(F(\varphi (t)))'=f(\varphi (t))\cdot \varphi '(t)=Q(t)" />. Это равенство означает, что функция <img src="https://latex.codecogs.com/gif.latex?Q(t)&space;=&space;F(\varphi&space;(t))" title="Q(t) = F(\varphi (t))" />
                        является первообразной для функции <img src="https://latex.codecogs.com/gif.latex?f(\varphi&space;(t))\cdot&space;\varphi&space;'(t)" title="f(\varphi (t))\cdot \varphi '(t)" /> на отрезке <img src="https://latex.codecogs.com/gif.latex?[\alpha&space;,\beta&space;]" title="[\alpha ,\beta ]" />. Тогда по формуле Ньютона-Лейбница получим:</a>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{\alpha&space;}^{\beta&space;}(f(\varphi&space;(t))\cdot&space;\varphi&space;'(t))dt=Q(t)|_{\alpha&space;}^{\beta&space;}=Q(\beta&space;)-Q(\alpha&space;)=F(\varphi&space;(\beta&space;))-F(\varphi&space;(\alpha&space;))=&space;F(b)&space;-&space;F(a)" title="\int_{\alpha }^{\beta }(f(\varphi (t))\cdot \varphi '(t))dt=Q(t)|_{\alpha }^{\beta }=Q(\beta )-Q(\alpha )=F(\varphi (\beta ))-F(\varphi (\alpha ))= F(b) - F(a)" /></a>
                    <br><span style="color:brown">Замечание:</span>на практике в качестве функции  <img src="https://latex.codecogs.com/gif.latex?x=\varphi&space;(t)" title="x=\varphi (t)" /> полезно выбирать строго монотонную функцию. </br>
                    <br><u>Пример:</u></br>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{0}^{2}\sqrt{4-x^2}dx=\begin{bmatrix}&space;x&space;=&space;2sin(t)&space;&&&space;x'(t)&space;=&space;2&space;cos(t)&space;\\&space;t(0)&space;=&space;0&space;&&&space;t(2)&space;=&space;\frac{\pi&space;}{2}&space;\end{bmatrix}&space;=\newline&space;\int_{0}^{\frac{\pi&space;}{2}}\sqrt{-4sin^2(t)}\cdot&space;2cos(t)dt=&space;4\int_{0}^{\frac{\pi&space;}{2}}\sqrt{cos^2(t)}\cdot&space;cos(t)dt=&space;\newline&space;4\int_{0}^{\frac{\pi&space;}{2}}|cos(t)|\cdot&space;cos(t)dt&space;=&space;4&space;\int_{0}^{\frac{\pi&space;}{2}}&space;cos^2(t)dt=\newline&space;4\int_{0}^{\frac{\pi&space;}{2}}\frac{1&plus;cos(2t)}{2}dt=2\int_{0}^{\frac{\pi&space;}{2}}(1&plus;cos(2t))dt=\newline&space;2t|_{0}^{\frac{\pi&space;}{2}}&plus;sin(2t)|_{0}^{\frac{\pi&space;}{2}}=\pi" title="\int_{0}^{2}\sqrt{4-x^2}dx=\begin{bmatrix} x = 2sin(t) && x'(t) = 2 cos(t) \\ t(0) = 0 && t(2) = \frac{\pi }{2} \end{bmatrix} =\newline \int_{0}^{\frac{\pi }{2}}\sqrt{-4sin^2(t)}\cdot 2cos(t)dt= 4\int_{0}^{\frac{\pi }{2}}\sqrt{cos^2(t)}\cdot cos(t)dt= \newline 4\int_{0}^{\frac{\pi }{2}}|cos(t)|\cdot cos(t)dt = 4 \int_{0}^{\frac{\pi }{2}} cos^2(t)dt=\newline 4\int_{0}^{\frac{\pi }{2}}\frac{1+cos(2t)}{2}dt=2\int_{0}^{\frac{\pi }{2}}(1+cos(2t))dt=\newline 2t|_{0}^{\frac{\pi }{2}}+sin(2t)|_{0}^{\frac{\pi }{2}}=\pi" /></a>
                    <p><span style="color:brown">Замечание:</span> часто вместо замены <img src="https://latex.codecogs.com/gif.latex?x=\varphi&space;(t)" title="x=\varphi (t)" /> используют подстановку <img src="https://latex.codecogs.com/gif.latex?t&space;=&space;\varphi&space;(x)" title="t = \varphi (x)" /></p> 
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{0}^{1}\frac{arctg(x)}{1&plus;x^2}dx=\begin{bmatrix}&space;t=arctg(x)&space;&&&space;dt=\frac{dx}{1&plus;x^2}&space;\\&space;t(0)=&space;0&space;&&&space;t(1)&space;=\frac{\pi&space;}{4}&space;\end{bmatrix}&space;=\newline&space;\int_{0}^{\frac{\pi&space;}{4}}tdt&space;=&space;\frac{t^2}{2}|_{0}^{\frac{\pi&space;}{4}}&space;=&space;\frac{\pi&space;^2}{32}" title="\int_{0}^{1}\frac{arctg(x)}{1+x^2}dx=\begin{bmatrix} t=arctg(x) && dt=\frac{dx}{1+x^2} \\ t(0)= 0 && t(1) =\frac{\pi }{4} \end{bmatrix} =\newline \int_{0}^{\frac{\pi }{4}}tdt = \frac{t^2}{2}|_{0}^{\frac{\pi }{4}} = \frac{\pi ^2}{32}" /></a>
                </div>
            </div>
            <div id="footer"></div>
        </div>

    </form>
</body>
</html>
