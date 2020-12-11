<%@ page language="C#" autoeventwireup="true" codebehind="16.IntegrationByParts.aspx.cs" inherits="WebMRPO.TheoryPages._16_IntegrationByParts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>>Метод интегрирования по частям в определенном интеграле</title>
    <style>
        #workspace{
            height: 1100px;
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
                    <div>
                    </div>
                </div>
                <div id="text">
                     <h1 align="center">Метод интегрирования по частям в определенном интеграле</h1>
                    <p align="justify"><b><span style="color: brown">Теорема: </span></b> пусть функции <img src="https://latex.codecogs.com/gif.latex?U&space;=&space;U(x)&space;,&space;V=V(x)" title="U = U(x) , V=V(x)" />
                    непрерывно дифференцируемы на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />, тогда имеет место равенство: </p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}UdV=U\cdot&space;V|_{a}^{b}&space;-&space;\int_{a}^{b}VdU" title="\int_{a}^{b}UdV=U\cdot V|_{a}^{b} - \int_{a}^{b}VdU" /></a>
                    <br align="justify"><b><span style="color: brown">Доказательство: </span></b> так как <img src="https://latex.codecogs.com/gif.latex?(U\cdot&space;V)'=U\cdot&space;V'&plus;U'\cdot&space;V" title="(U\cdot V)'=U\cdot V'+U'\cdot V" /> , то функция 
                   <img src="https://latex.codecogs.com/gif.latex?U\cdot&space;V" title="U\cdot V" /> является первообразной для функции <img src="https://latex.codecogs.com/gif.latex?U\cdot&space;V'&plus;U'\cdot&space;V" title="U\cdot V'+U'\cdot V" />. Тогда по теореме Ньютона-Лейбница 
                    имеем:</br>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}(U\cdot&space;V'&plus;U'\cdot&space;V)dx&space;=&space;(U\cdot&space;V)|_{a}^{b}&space;\Leftrightarrow&space;\int_{a}^{b}U'\cdot&space;Vdx&plus;&space;\int_{a}^{b}&space;U\cdot&space;V'dx&space;=&space;(U\cdot&space;V)|_{a}^{b}\Leftrightarrow&space;\int_{a}^{b}&space;UdV&space;=&space;(U\cdot&space;V)|_{a}^{b}&space;-&space;\int_{a}^{b}VdU" title="\int_{a}^{b}(U\cdot V'+U'\cdot V)dx = (U\cdot V)|_{a}^{b} \Leftrightarrow \int_{a}^{b}U'\cdot Vdx+ \int_{a}^{b} U\cdot V'dx = (U\cdot V)|_{a}^{b}\Leftrightarrow \int_{a}^{b} UdV = (U\cdot V)|_{a}^{b} - \int_{a}^{b}VdU" /></a>
                    <p><u>Примеры:</u></p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{1}^{e}&space;ln(x)dx=\begin{bmatrix}&space;U&space;=&space;ln(x)&space;&&space;dU&space;=&space;\frac{dx}{x}&space;\\&space;dV&space;=&space;dx&space;&&space;V=x&space;\end{bmatrix}&space;=&space;ln(x)\cdot&space;x|_{1}^{e}-\int_{1}^{e}1\cdot&space;dx&space;=&space;\newline&space;e\cdot&space;ln(e)&space;-&space;1\cdot&space;ln(1)&space;-&space;x|_{1}^{e}&space;=&space;e&space;-&space;(e-1)=1" title="\int_{1}^{e} ln(x)dx=\begin{bmatrix} U = ln(x) & dU = \frac{dx}{x} \\ dV = dx & V=x \end{bmatrix} = ln(x)\cdot x|_{1}^{e}-\int_{1}^{e}1\cdot dx = \newline e\cdot ln(e) - 1\cdot ln(1) - x|_{1}^{e} = e - (e-1)=1" /></a>
                    <p><img src="https://latex.codecogs.com/gif.latex?\int_{0}^{1}arctg(x)dx=\begin{bmatrix}&space;U=arctg(x)&space;&&space;dU=\frac{dx}{1&plus;x^2}&space;\\&space;dV=dx&space;&&space;V=x&space;\end{bmatrix}&space;=&space;arctg(x)\cdot&space;x|_{0}^{1}&space;-&space;\newline&space;\int_{0}^{1}\frac{x}{1&plus;x^2}dx&space;=&space;\frac{\pi&space;}{4}-\int_{0}^{1}\frac{x}{1&plus;x^2}dx=&space;\frac{\pi&space;}{4}&space;-&space;\begin{bmatrix}&space;t=1&plus;x^2&space;&&space;dt&space;=&space;2xdx&space;\\&space;t(0)&space;=&space;1&space;&&space;t(1)&space;=&space;2&space;\end{bmatrix}&space;=&space;\newline&space;\frac{\pi&space;}{4}-\frac{1}{2}\int_{1}^{2}\frac{dt}{t}=&space;\frac{\pi&space;}{4}&space;-\frac{1}{2}ln\left&space;|&space;t&space;\right&space;|_{1}^{2}&space;=&space;\frac{\pi&space;}{4}-\frac{1}{2}ln(2)" title="\int_{0}^{1}arctg(x)dx=\begin{bmatrix} U=arctg(x) & dU=\frac{dx}{1+x^2} \\ dV=dx & V=x \end{bmatrix} = arctg(x)\cdot x|_{0}^{1} - \newline \int_{0}^{1}\frac{x}{1+x^2}dx = \frac{\pi }{4}-\int_{0}^{1}\frac{x}{1+x^2}dx= \frac{\pi }{4} - \begin{bmatrix} t=1+x^2 & dt = 2xdx \\ t(0) = 1 & t(1) = 2 \end{bmatrix} = \newline \frac{\pi }{4}-\frac{1}{2}\int_{1}^{2}\frac{dt}{t}= \frac{\pi }{4} -\frac{1}{2}ln\left | t \right |_{1}^{2} = \frac{\pi }{4}-\frac{1}{2}ln(2)" /></p>

                </div>
            </div>
            <div id="footer"></div>
        </div>

    </form>
</body>
</html>
