<%@ page language="C#" autoeventwireup="true" codebehind="19.ImproperIntegral2.aspx.cs" inherits="WebMRPO.TheoryPages._19_ImproperIntegral2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Понятие несобственного интеграла второго рода</title>
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
                <asp:Button ID="Button4" runat="server" Text="О проекте" class="buttonMenu" PostBackUrl="~/About.aspx" />
            </div>
            <div id="content">
                <div id="theorylist">
                    <%Response.Write(htmlArrayList);%>
                </div>
                <div id="text">
                    <h1 align="center">Понятие несобственного интеграла второго рода</h1>
                    <p>Пусть функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> определена на <img src="https://latex.codecogs.com/gif.latex?[a,b)" title="[a,b)" />.</p>
                    <a>Точка b называется <span style="color:chocolate"><em>особой точкой</em></span>, если функция  <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> не ограничена на <img src="https://latex.codecogs.com/gif.latex?[a,b)" title="[a,b)" />
                    , но является ограниченной на любом отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b&space;-&space;\beta&space;]" title="[a,b - \beta ]" /> , заключенном в промежутке
                    <img src="https://latex.codecogs.com/gif.latex?[a,b)" title="[a,b)" />, и интегрируема на любом из указанных отрезков.</a>
                <br><u>Пример</u> функции с особой точкой х = 1 : </br>
                    <a><img src="https://latex.codecogs.com/gif.latex?f(x)=\frac{1}{x-1}" title="f(x)=\frac{1}{x-1}" /></a>
                 <br>Если существует конечный предел <img src="https://latex.codecogs.com/gif.latex?\lim_{\beta&space;\rightarrow&space;0}&space;\int_{a}^{b-\beta&space;}f(x)dx" title="\lim_{\beta \rightarrow 0} \int_{a}^{b-\beta }f(x)dx" />, то этот предел называется
                     <span style="color:chocolate"><em>несобственным интегралом 2-ого рода</em></span> от функции <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> на промежутке <img src="https://latex.codecogs.com/gif.latex?[a,b)" title="[a,b)" />. 
                    Если же предел не существует или бесконечен, то несобственный интеграл называется <em>расходящимся</em>. Обозначается несобственный интеграл 2-ого рода в виде: </br>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}f(x)dx&space;=&space;\lim_{\beta&space;\rightarrow&space;0^{&plus;}}&space;\int_{a}^{b-\beta&space;}f(x)dx" title="\int_{a}^{b}f(x)dx = \lim_{\beta \rightarrow 0^{+}} \int_{a}^{b-\beta }f(x)dx" /></a>
                    <br><span style="color:brown">Замечание:</span> аналогично можно определить несобственный интеграл 2-ого рода на промежутке <img src="https://latex.codecogs.com/gif.latex?(a,b]" title="(a,b]" />, где а = особая точка , 
                    а также в случае когда особая точка лежит внутри отрезка <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />.</br>
                    <ul type="circle">
                    <li><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}f(x)dx&space;=&space;\lim_{\alpha&space;\rightarrow&space;0^{&plus;}}&space;\int_{a&plus;\alpha&space;}^{b&space;}f(x)dx" title="\int_{a}^{b}f(x)dx = \lim_{\alpha \rightarrow 0^{+}} \int_{a+\alpha }^{b }f(x)dx" /></li>
                    <li><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}f(x)dx&space;=&space;\int_{a}^{c}f(x)dx&space;&plus;&space;\int_{c}^{b}&space;f(x)dx&space;=&space;\lim_{\beta&space;\rightarrow&space;0^{&plus;}}&space;\int_{a}^{c-\beta&space;}f(x)dx&space;&plus;&space;\lim_{\alpha&space;\rightarrow&space;0^{&plus;}}&space;\int_{c&plus;\alpha&space;}^{b}f(x)dx" title="\int_{a}^{b}f(x)dx = \int_{a}^{c}f(x)dx + \int_{c}^{b} f(x)dx = \lim_{\beta \rightarrow 0^{+}} \int_{a}^{c-\beta }f(x)dx + \lim_{\alpha \rightarrow 0^{+}} \int_{c+\alpha }^{b}f(x)dx" /></li>
                       </ul>
                        <p><span style="color:brown"><b>Теорема:</b></span>если для несобственного интеграла 2-ого рода существует первообразная непрерывная на всем отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />
                            , то для такого интеграла справедлива формула Ньютона-Лейбница.Теорема остается справедливой и в случае, когда особая точка лежит внутри отрезка.</p>
                    <br><u>Например:</u></br>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{0}^{1}\frac{dx}{\sqrt{1-x^2}}=\lim_{\beta&space;\rightarrow&space;0^{0}}\int_{0}^{1-\beta&space;}\frac{dx}{\sqrt{1-x^2}}=\lim_{\beta&space;\rightarrow&space;0^{0}}(arcsin(x)|_{0}^{1-\beta&space;})&space;=&space;\newline&space;\newline&space;\newline&space;=&space;\lim_{\beta&space;\rightarrow&space;0^{0}}&space;arcsin(1-\beta&space;)&space;-&space;\lim_{\beta&space;\rightarrow&space;0^{0}}&space;arcsin(0)&space;=&space;\lim_{\beta&space;\rightarrow&space;0^{0}}&space;arcsin(1-\beta&space;)&space;=&space;\frac{\pi&space;}{2}" title="\int_{0}^{1}\frac{dx}{\sqrt{1-x^2}}=\lim_{\beta \rightarrow 0^{0}}\int_{0}^{1-\beta }\frac{dx}{\sqrt{1-x^2}}=\lim_{\beta \rightarrow 0^{0}}(arcsin(x)|_{0}^{1-\beta }) = \newline \newline \newline = \lim_{\beta \rightarrow 0^{0}} arcsin(1-\beta ) - \lim_{\beta \rightarrow 0^{0}} arcsin(0) = \lim_{\beta \rightarrow 0^{0}} arcsin(1-\beta ) = \frac{\pi }{2}" /></a>
                    <br>Заметим, что для функции <img src="https://latex.codecogs.com/gif.latex?f(x)=\frac{1}{\sqrt{1-x^2}}" title="f(x)=\frac{1}{\sqrt{1-x^2}}" /> существует первообразная <img src="https://latex.codecogs.com/gif.latex?F(x)=arcsin(x)" title="F(x)=arcsin(x)" /> непрерывная на всем отрезке <img src="https://latex.codecogs.com/gif.latex?[0,1]" title="[0,1]" /> , поэтому</br>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int_{0}^{1}\frac{dx}{\sqrt{1-x^2}}=arcsin(x)|_{0}^{1}" title="\int_{0}^{1}\frac{dx}{\sqrt{1-x^2}}=arcsin(x)|_{0}^{1}" /></br>

                </div>
            </div>
            <div id="footer"></div>
        </div>

    </form>
</body>
</html>
