<%@ page language="C#" autoeventwireup="true" codebehind="18.ImproperIntegral1.aspx.cs" inherits="WebMRPO.TheoryPages._18_ImproperIntegral" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>3.1 ПМИ</title>
    <style>
        #workspace{
            height: 2100px;
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
                    <h1 align="center">Понятие несобственного интеграла первого рода</h1>
                    <p>Пусть функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> определена на луче <img src="https://latex.codecogs.com/gif.latex?[a,&plus;\infty&space;)" title="[a,+\infty )" />
                     и для любого значения <img src="https://latex.codecogs.com/gif.latex?t&space;\geq&space;a" title="t \geq a" /> интегрируема на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,t]" title="[a,t]" />.</p>
                    <a align="justify">Если существует предел <img src="https://latex.codecogs.com/gif.latex?\lim_{t\rightarrow&space;&plus;\infty&space;}&space;\int_{a}^{t}f(x)dx" title="\lim_{t\rightarrow +\infty } \int_{a}^{t}f(x)dx" /> , то он называется
                        <span style="color:chocolate"><em>сходящимся несобственным интегралом 1-ого рода</em></span> от функции <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> по лучу <img src="https://latex.codecogs.com/gif.latex?[a,&plus;\infty&space;)" title="[a,+\infty )" />
                        и обозначается <img src="https://latex.codecogs.com/gif.latex?\int_{a}^{&plus;\infty&space;}f(x)dx" title="\int_{a}^{+\infty }f(x)dx" />
                    </a>
                    <br>Если же предел не существует или бесконечен, то интеграл называется <span style="color:chocolate"><em>рассходящимся несобственным интегралом</em></span>.</br>
                    <br><span style="color:brown">Замечание:</span> аналогично определяются несобственные интегралы по лучу <img src="https://latex.codecogs.com/gif.latex?(-\infty&space;,b]" title="(-\infty ,b]" /> или на всей числовой прямой.</br>
                    <br><u>Пример:</u></br>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{0}^{&plus;\infty&space;}\frac{dx}{1&plus;x^2}=\lim_{t\rightarrow&space;&plus;\infty&space;}(arctg(x)|_{0}^{t})=&space;\lim_{t\rightarrow&space;&plus;\infty}&space;(arctg(t)-arctg(0))=\lim_{t\rightarrow&space;&plus;\infty}&space;arctg(t)&space;=&space;\frac{\pi&space;}{2}" title="\int_{0}^{+\infty }\frac{dx}{1+x^2}=\lim_{t\rightarrow +\infty }(arctg(x)|_{0}^{t})= \lim_{t\rightarrow +\infty} (arctg(t)-arctg(0))=\lim_{t\rightarrow +\infty} arctg(t) = \frac{\pi }{2}" /></a>
                    <p align="center"><span style="color:brown"><em>Свойства несобственного интеграла</em></span></p>
                    <ul type="circle">
                    <li><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{&plus;\infty&space;}f(x)dx=\int_{a}^{b}f(x)dx&space;&plus;\int_{b}^{&plus;\infty&space;}f(x)dx" title="\int_{a}^{+\infty }f(x)dx=\int_{a}^{b}f(x)dx +\int_{b}^{+\infty }f(x)dx" /></li>
                    <li><img src="https://latex.codecogs.com/gif.latex?f(x)\geq&space;0&space;,&space;\forall&space;x\in&space;[a,&plus;\infty&space;)&space;\Rightarrow&space;\int_{a}^{&plus;\infty&space;}f(x)dx\geq&space;0" title="f(x)\geq 0 , \forall x\in [a,+\infty ) \Rightarrow \int_{a}^{+\infty }f(x)dx\geq 0" /></li>
                    <li>Если <img src="https://latex.codecogs.com/gif.latex?F(x)" title="F(x)" /> - первообразная для функции <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> 
                    на луче <img src="https://latex.codecogs.com/gif.latex?[a,&plus;\infty&space;)" title="[a,+\infty )" />, то имеет место аналог формулы Ньютона-Лейбница:</li>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{&plus;\infty&space;}f(x)dx&space;=&space;F(x)|_{a}^{&plus;\infty&space;}&space;=&space;F(&plus;\infty&space;)&space;-&space;F(a)&space;=&space;\lim_{x\rightarrow&space;&plus;\infty&space;}&space;-&space;F(a)" title="\int_{a}^{+\infty }f(x)dx = F(x)|_{a}^{+\infty } = F(+\infty ) - F(a) = \lim_{x\rightarrow +\infty } - F(a)" /></a>
                    </ul>
                        <p align="center"><span style="color:brown"><em>Условия сходимости несобственных интегралов</em></span></p>
                    <br align="justify"><span style="color:brown"><b>Теорема №1.</b></span>Для того чтобы несобственный интеграл сходился необходимо и достаточно, чтобы для любого положительного числа 
                    <img src="https://latex.codecogs.com/gif.latex?\varepsilon" title="\varepsilon" /> нашлось такое положительное число P, что для любых 
                    <img src="https://latex.codecogs.com/gif.latex?t',t''>&space;P" title="t',t''> P" /> выполнялось неравенство:</br>
                    <a><img src="https://latex.codecogs.com/gif.latex?\left&space;|&space;\int_{t'}^{t''}f(x)dx&space;\right&space;|&space;<&space;\varepsilon" title="\left | \int_{t'}^{t''}f(x)dx \right | < \varepsilon" /></a>
                    <br align="justify"><span style="color:brown"><b>Теорема №2.</b></span>Пусть на промежутке <img src="https://latex.codecogs.com/gif.latex?[a,&plus;\infty&space;)" title="[a,+\infty )" /> верно <img src="https://latex.codecogs.com/gif.latex?\left&space;|&space;f(x)&space;\right&space;|\leq&space;g(x)" title="\left | f(x) \right |\leq g(x)" />, тогда если несобственный интеграл 
                    функции <img src="https://latex.codecogs.com/gif.latex?g(x)" title="g(x)" /> сходится, то несобственный интеграл функции <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> также сходится.</br>
                    <br align="justify"><span style="color:brown">Следствие.</span>Пусть <img src="https://latex.codecogs.com/gif.latex?\forall&space;x\in&space;[a,&plus;\infty&space;)&space;(a>&space;0)" title="\forall x\in [a,+\infty ) (a> 0)" /> выполняется <img src="https://latex.codecogs.com/gif.latex?\left&space;|&space;f(x)&space;\right&space;|\leq&space;\frac{c}{x^{\alpha&space;}}&space;,&space;\alpha&space;>&space;1" title="\left | f(x) \right |\leq \frac{c}{x^{\alpha }} , \alpha > 1" />.
                    Тогда несобственный интеграл от функции <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> сходится. Если же найдется такая константа с > 0,
                        что <img src="https://latex.codecogs.com/gif.latex?\forall&space;x\in&space;[a,&plus;\infty&space;)&space;(a>&space;0)" title="\forall x\in [a,+\infty ) (a> 0)" />  функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />
                        удовлетворяет неравенству <img src="https://latex.codecogs.com/gif.latex?f(x)&space;\geq&space;\frac{c}{x^{\alpha&space;}}" title="f(x) \geq \frac{c}{x^{\alpha }}" /> , где <img src="https://latex.codecogs.com/gif.latex?\alpha&space;\leq&space;1" title="\alpha \leq 1" /> , то
                        несобственный интеграл рассходится.</br>
                        <br><u>Пример:</u></br>
                        <a><img src="https://latex.codecogs.com/gif.latex?\int_{1}^{&plus;\infty&space;}f(x)dx&space;=\int_{a}^{&plus;\infty&space;}\frac{dx}{2019&plus;x^5}&space;\newline&space;\newline&space;\left&space;|&space;f(x)&space;\right&space;|&space;=&space;f(x)&space;=&space;\frac{1}{2019&plus;x^5}<&space;\frac{1}{x^5}&space;,\forall&space;x\in&space;[1,&plus;\infty&space;)" title="\int_{1}^{+\infty }f(x)dx =\int_{a}^{+\infty }\frac{dx}{2019+x^5} \newline \newline \left | f(x) \right | = f(x) = \frac{1}{2019+x^5}< \frac{1}{x^5} ,\forall x\in [1,+\infty )" /></a>
                    <br>Согласно следствию, интеграл сходится.</br>
                </div>
            </div>
            <div id="footer"></div>
        </div>

    </form>
</body>
</html>
