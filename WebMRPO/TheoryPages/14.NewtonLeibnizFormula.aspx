<%@ page language="C#" autoeventwireup="true" codebehind="14.NewtonLeibnizFormula.aspx.cs" inherits="WebMRPO.TheoryPages.NewtonLeibnizFormula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>>Формула Ньютона-Лейбница для вычисления определенного интеграла</title>
    <style>
        #workspace{
            height: 1400px;
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
                    <h1 align="center">Формула Ньютона-Лейбница для вычисления определенного интеграла</h1>
                    <p><b><span style="color:brown">Теорема:</span></b> если функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />  непрерывна на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />
                        и  <img src="https://latex.codecogs.com/gif.latex?F(x)" title="F(x)" /> - любая первообразная этой функции, то имеет место равенство:</p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}f(x)dx&space;=F(b)-F(a)=F(x)|_{a}^{b}" title="\int_{a}^{b}f(x)dx =F(b)-F(a)=F(x)|_{a}^{b}" /></a>
                    <br><b><span style="color:brown">Доказательство:</span></b> пусть <img src="https://latex.codecogs.com/gif.latex?F(x)" title="F(x)" /> - одна из первообразных функции <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> 
                    , то есть <img src="https://latex.codecogs.com/gif.latex?F'(x)\equiv&space;f(x)&space;,&space;\forall&space;x&space;\in&space;[a,b]" title="F'(x)\equiv f(x) , \forall x \in [a,b]" />. Рассмотрим еще одну первообразную 
                    <img src="https://latex.codecogs.com/gif.latex?\varphi&space;(x)=\int_{a}^{b}f(t)dt" title="\varphi (x)=\int_{a}^{b}f(t)dt" />. Тогда по свойству первообразных имеем: <img src="https://latex.codecogs.com/gif.latex?\varphi&space;(x)=F(x)&plus;C" title="\varphi (x)=F(x)+C" />.
                    Последнее равенство верно при любых значениях аргумента <img src="https://latex.codecogs.com/gif.latex?x&space;\in&space;[a,b]" title="x \in [a,b]" />. В частности, оно верно и при x = a , то есть 
                    <img src="https://latex.codecogs.com/gif.latex?\varphi&space;(a)=F(a)&plus;C" title="\varphi (a)=F(a)+C" />. Тогда </br>
                    <a><img src="https://latex.codecogs.com/gif.latex?\varphi&space;(a)=F(a)&plus;C&space;\newline&space;\int_{a}^{a}&space;f(t)dt&space;=&space;F(a)&plus;C&space;\Rightarrow&space;C&space;=&space;-F(a)&space;\newline&space;\varphi&space;(x)&space;=F(x)&space;-&space;F(a)" title="\varphi (a)=F(a)+C \newline \int_{a}^{a} f(t)dt = F(a)+C \Rightarrow C = -F(a) \newline \varphi (x) =F(x) - F(a)" /></a>
                    <br>Также равенство верно и при х = b, то есть <img src="https://latex.codecogs.com/gif.latex?\varphi&space;(b)&space;=F(b)&space;-&space;F(a)" title="\varphi (b) =F(b) - F(a)" /></br>
                    <a>Таким образом,</a>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}f(t)dt=F(b)-F(a)\Leftrightarrow&space;\int_{a}^{b}f(x)dx=F(b)-F(a)" title="\int_{a}^{b}f(t)dt=F(b)-F(a)\Leftrightarrow \int_{a}^{b}f(x)dx=F(b)-F(a)" /></br>
                    <br><u>Примеры:</u></br>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{0}^{\frac{\pi&space;}{2}}cos(x)dx=sin(x)|_{0}^{\frac{\pi&space;}{2}}=sin(\frac{\pi&space;}{2})-sin(0)=1-0=1" title="\int_{0}^{\frac{\pi }{2}}cos(x)dx=sin(x)|_{0}^{\frac{\pi }{2}}=sin(\frac{\pi }{2})-sin(0)=1-0=1" /></a>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int_{-2}^{2}|x|dx=\int_{-2}^{0}|x|dx&plus;\int_{0}^{2}|x|dx=-\frac{x^2}{2}|_{-2}^{0}&plus;\frac{x^2}{2}|_{0}^{2}=0&plus;2&plus;2=4" title="\int_{-2}^{2}|x|dx=\int_{-2}^{0}|x|dx+\int_{0}^{2}|x|dx=-\frac{x^2}{2}|_{-2}^{0}+\frac{x^2}{2}|_{0}^{2}=0+2+2=4" /></br>
                    <p><span style="color:brown">Замечание:</span>требование <img src="https://latex.codecogs.com/gif.latex?F'(x)\equiv&space;f(x)&space;,&space;\forall&space;x&space;\in&space;[a,b]" title="F'(x)\equiv f(x) , \forall x \in [a,b]" /> является существенным.</p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{-1}^{1}\frac{dx}{1&plus;x^2}=\begin{bmatrix}&space;f(x)=1&plus;x^2&space;&&&space;F(x)=&space;-arctg(\frac{1}{x})&space;&&&space;F'(x)&space;=&space;1&plus;x^2&space;\end{bmatrix}&space;=&space;\newline&space;-arctg(\frac{1}{x})|_{-1}^{1}=-arctg(1)&plus;arctg(-1)=-2\frac{\pi&space;}{4}=-\frac{\pi&space;}{2}" title="\int_{-1}^{1}\frac{dx}{1+x^2}=\begin{bmatrix} f(x)=1+x^2 && F(x)= -arctg(\frac{1}{x}) && F'(x) = 1+x^2 \end{bmatrix} = \newline -arctg(\frac{1}{x})|_{-1}^{1}=-arctg(1)+arctg(-1)=-2\frac{\pi }{4}=-\frac{\pi }{2}" /></a>
                    <br>но значение первообразной в точке ноль не определено</br>

                
                </div>
            </div>
            <div id="footer"></div>
        </div>

    </form>
</body>
</html>
