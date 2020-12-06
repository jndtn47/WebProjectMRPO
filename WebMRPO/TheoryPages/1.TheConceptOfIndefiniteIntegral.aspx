<%@ page language="C#" autoeventwireup="true" codebehind="1.TheConceptOfIndefiniteIntegral.aspx.cs" inherits="WebMRPO.TheoryPages.TheConceptOfIndefiniteIntegral" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>3.1 ПМИ</title>
    <style>
        #workspace{
            height: 2200px;
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
                    <h1 align="center">Понятие первообразной функции и неопределенного интеграла</h1>
                    <a align="justify">Функция
                        <img src="https://latex.codecogs.com/gif.latex?F(x)" title="F(x)" />
                        называется <em><span style="color: chocolate">первообразной для функции</span></em>
                        <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />
                        на промежутке (a,b), если в любой
                        точке этого интервала функция
                        <img src="https://latex.codecogs.com/gif.latex?F(x)" title="F(x)" />
                        дифференцируема, и справедливо равенство
                        <img src="https://latex.codecogs.com/gif.latex?F'(x)\equiv&space;f(x)&space;,&space;\forall&space;x&space;\in&space;(a,b)" title="F'(x)\equiv f(x) , \forall x \in (a,b)" /></br>
                    <a align="justify"><u>Например</u>, для функции
                        <img src="https://latex.codecogs.com/gif.latex?f(x)=&space;x^{2}" title="f(x)= x^{2}" />
                        первообразной функцией на всей числовой прямой будет являться функция
                        <img src="https://latex.codecogs.com/gif.latex?F(x)=&space;\frac{x^{3}}{3}" title="F(x)= \frac{x^{3}}{3}" />.</a>
                        <br align="justify">Убедиться в этом можно, проделав ряд несложных преобразований:
                            <img src="https://latex.codecogs.com/gif.latex?F'(x)=&space;(\frac{x^{3}}{3})'=&space;\frac{1}{3}&space;*&space;3x^{2}&space;=&space;x^{2}&space;=&space;f(x)" title="F'(x)= (\frac{x^{3}}{3})'= \frac{1}{3} * 3x^{2} = x^{2} = f(x)" />
                        </br>
                        <br align="justify">Рассмотрим теперь простое, но требующее доказательства утверждение:</br>
                        <p align="justify">
                            <b><span style="color: brown">Теорема:</span></b> пусть
                            <img src="https://latex.codecogs.com/gif.latex?F(x)" title="F(x)" />
                            – какая-нибудь первообразная для функции 
                            <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />
                            на некотором промежутке. Тогда функция 
                            <img src="https://latex.codecogs.com/gif.latex?F(x)&space;&plus;&space;C" title="F(x) + C" />, где
                            <img src="https://latex.codecogs.com/gif.latex?C" title="C" />
                            произвольная константа, тоже будет первообразной функцией для 
                            <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />
                            на данном промежутке.
                        </p>
                        <a align="justify"><b><span style="color: brown">Доказательство:</span></b> поскольку производная константы равна нулю, то:
                            <img src="https://latex.codecogs.com/gif.latex?(F(x)&plus;C)'=F'(x)&plus;C'=F'(x)=f(x)" title="(F(x)+C)'=F'(x)+C'=F'(x)=f(x)" />
                            , следовательно,
                            <img src="https://latex.codecogs.com/gif.latex?F(x)&space;&plus;&space;C" title="F(x) + C" />
                            по определению является первообразной для функции
                       <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />, что и требовалось доказать. </a>
                        <br align="justify"><u>Например</u>, для функции
                            <img src="https://latex.codecogs.com/gif.latex?f(x)=&space;x^{2}" title="f(x)= x^{2}" />
                            первообразной будет являться любая функция из множества
                            <img src="https://latex.codecogs.com/gif.latex?F(x)&space;=&space;\frac{x^{3}}{3}&space;&plus;&space;C&space;,&space;C&space;\equiv&space;const" title="F(x) = \frac{x^{3}}{3} + C , C \equiv const" />
                            (Чтобы убедиться в этом, можно мысленно поподставлять конкретные числовые значения).
                        </br>
                        <a align="justify">Возникает вопрос, а вдруг для рассмотренной функции существует ещё какая-нибудь первообразная?</a>
                        <p align="justify">
                            Докажем еще одно <b><span style="color: brown">утверждение</span></b>: любая другая первообразная
                            <img src="https://latex.codecogs.com/gif.latex?G(x)" title="G(x)" />
                            для функции 
                            <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />
                            отличается от
                            <img src="https://latex.codecogs.com/gif.latex?F(x)" title="F(x)" />
                            лишь на приплюсованную константу, иными словами: 
                           <img src="https://latex.codecogs.com/gif.latex?G(x)&space;-&space;F(x)&space;=&space;C" title="G(x) - F(x) = C" />
                        </p>
                        <a align="justify"><b><span style="color: brown">Доказательство:</span></b> Пусть
                            <img src="https://latex.codecogs.com/gif.latex?G(x),&space;F(x)" title="G(x), F(x)" />
                            – это две первообразные для функции 
                            <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />
                            на некотором промежутке. Тогда для любого значения аргумента из данного промежутка производная разности будет равна: 
                            <img src="https://latex.codecogs.com/gif.latex?(G(x)&space;-&space;F(x))'=&space;G'(x)-F'(x)&space;=&space;f(x)&space;-&space;f(x)&space;=&space;0" title="(G(x) - F(x))'= G'(x)-F'(x) = f(x) - f(x) = 0" />.
                            Но с другой стороны, из дифференциального исчисления известно, что данному условию удовлетворяет функция-константа и только она. Откуда и следует равенство
                            <img src="https://latex.codecogs.com/gif.latex?G(x)&space;-&space;F(x)=&space;C" title="G(x) - F(x)= C" />, которое требовалось доказать. Таким образом, любая первообразная для функции
                            <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />
                            имеет вид
                            <img src="https://latex.codecogs.com/gif.latex?G(x)&space;=&space;F(x)&space;&plus;&space;C" title="G(x) = F(x) + C" />
                        </a>
                        <p align="justify">
                            Множество всех первообразных
                            <img src="https://latex.codecogs.com/gif.latex?F(x)&space;&plus;&space;C" title="F(x) + C" />
                            для функции 
                            <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />
                            называется <em><span style="color: chocolate">неопределённым интегралом</span></em> от функции 
                            <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />
                            и обозначается символом
                            <img src="https://latex.codecogs.com/gif.latex?\int&space;f(x)dx" title="\int f(x)dx" />
                            . Таким образом, по определению:
                            <br>
                                <img src="https://latex.codecogs.com/gif.latex?\int&space;f(x)dx&space;=&space;F(x)&space;&plus;&space;C,&space;C&space;=&space;const" title="\int f(x)dx = F(x) + C, C = const" />
                            </br>
                        </p>
                        <a align="justify">При этом функция
                            <img src="https://latex.codecogs.com/gif.latex?F(x)" title="f(x)" />
                            называется <em>подынтегральной функцией</em>, 
                          <img src="https://latex.codecogs.com/gif.latex?f(x)dx" title="f(x)dx" />
                            <em>подынтегральным выражением</em>, а сам процесс отыскания множества первообразных 
                            <em><span style="color: chocolate">интегрированием</span></em>. Другими словами интегрирование – это восстановление функции
                            <img src="https://latex.codecogs.com/gif.latex?F(x)&space;&plus;&space;C" title="F(x) + C" />
                            по её производной
                            <img src="https://latex.codecogs.com/gif.latex?f(x)dx" title="f(x)dx" />
                            , то есть обратное действие по отношению к дифференцированию.
                        </a>
                        <a>Можно задаться простым вопросом: любая ли функция интегрируема? Безусловно, Нет.</a>
                        <p>Сформулируем достаточное <b><i><span style="color: brown">условие интегрируемости:</span></i></b> если на некотором промежутке функция непрерывна, то она интегрируема на нём.</p>
                        <a>Как видим, условие довольно-таки лояльное – для существования первообразной достаточно лишь непрерывности.</a>
                </div>
            </div>
            <div id="footer">Подвал</div>
        </div>
    </form>
</body>
</html>
