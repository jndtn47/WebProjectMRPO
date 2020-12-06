<%@ page language="C#" autoeventwireup="true" codebehind="11.ConceptDefiniteIntegral.aspx.cs" inherits="WebMRPO.TheoryPages.ConceptDefiniteIntegral" %>

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
                    <h1 align ="center">Понятие определенного интеграла</h1>
                    <p align="justify">Пусть функция <img src="https://latex.codecogs.com/gif.latex?y=f(x)" title="y=f(x)" /> определена на отрезке 
                    <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> .Разобьем данный отрезок произвольно на n частичных отрезков 
                        точками <img src="https://latex.codecogs.com/gif.latex?a=x_0,x_1,x_2,...,x_n=b" title="a=x_0,x_1,x_2,...,x_n=b" /> и обозначим такое разбиение Т. Сами 
                        точки <img src="https://latex.codecogs.com/gif.latex?x_0,x_1,x_2,...,x_n" title="x_0,x_1,x_2,...,x_n" /> будем называть <em>точками разбиения</em>. Пусть 
                      <img src="https://latex.codecogs.com/gif.latex?\xi&space;_k" title="\xi _k" /> - произвольная точка отрезка <img src="https://latex.codecogs.com/gif.latex?[x_{k-1},x_k]" title="[x_{k-1},x_k]" /> ,a 
                       <img src="https://latex.codecogs.com/gif.latex?\Delta&space;x_k=x_k&space;-&space;x_{k-1},&space;k&space;=&space;1&space;...&space;n" title="\Delta x_k=x_k - x_{k-1}, k = 1 ... n" /> - длина этого отрезка. </p>
                    <p align="justify"> Сумма вида <img src="https://latex.codecogs.com/gif.latex?\sigma&space;=f(\xi&space;_1)\cdot&space;\Delta&space;x_1&plus;f(\xi&space;_2)\cdot&space;\Delta&space;x_2&plus;...&plus;f(\xi&space;_n)\cdot&space;\Delta&space;x_n" title="\sigma =f(\xi _1)\cdot \Delta x_1+f(\xi _2)\cdot \Delta x_2+...+f(\xi _n)\cdot \Delta x_n" /> называется <em><span style="color: chocolate">интегральной суммой функции</span></em> 
                    <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> , соответствующей данному разбиению отрезка <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> и данному выбору промежуточных точек   <img src="https://latex.codecogs.com/gif.latex?\xi&space;_k" title="\xi _k" /> на частичных отрезках 
                      <img src="https://latex.codecogs.com/gif.latex?[x_{k-1},x_k]" title="[x_{k-1},x_k]" /> </p>
                    <a align="justify"><span style="color: brown">Замечание:</span> с геометрической точки зрения интегральная сумма представляет собой площадь ступенчатой фигуры </a>
                    <p>Величину <img src="https://latex.codecogs.com/gif.latex?d=\underset{k}{max}&space;(\Delta&space;x_k)" title="d=\underset{k}{max} (\Delta x_k)" /> 
                        будем называть <em><span style="color: chocolate">диаметром разбиения</span></em> Т.</p>
                    <p align="justify"> Число I называется <em><span style="color: chocolate">пределом интегральных сумм</span></em> <img src="https://latex.codecogs.com/gif.latex?\sigma" title="\sigma" />
                        при <img src="https://latex.codecogs.com/gif.latex?d&space;\rightarrow&space;0" title="d \rightarrow 0" /> , если для любого положительного числа <img src="https://latex.codecogs.com/gif.latex?\varepsilon" title="\varepsilon" /> найдется такое положительное число
                      <img src="https://latex.codecogs.com/gif.latex?\delta" title="\delta" /> , что для любого разбиения Т отрезка <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> , диаметр которого меньше <img src="https://latex.codecogs.com/gif.latex?\delta" title="\delta" /> , независимо от выбора точек 
                        <img src="https://latex.codecogs.com/gif.latex?\xi&space;_k" title="\xi _k" />  из <img src="https://latex.codecogs.com/gif.latex?[x_{k-1},x_k]" title="[x_{k-1},x_k]" /> выполняется неравенство <img src="https://latex.codecogs.com/gif.latex?|\sigma&space;-I|<&space;\varepsilon" title="|\sigma -I|< \varepsilon" /> . Записывая определение математическим языком, получим : </p>
                    <br><img src="https://latex.codecogs.com/gif.latex?I&space;=&space;\lim_{d\rightarrow&space;0}&space;\sigma&space;\Leftrightarrow&space;\forall&space;\varepsilon&space;>&space;0&space;\exists\delta&space;>&space;0&space;\forall&space;T&space;\forall&space;\xi&space;_k&space;\in&space;[x_{k-1},x_k]&space;(d<&space;\delta&space;\Rightarrow&space;|\sigma&space;-I|<&space;\varepsilon&space;)" title="I = \lim_{d\rightarrow 0} \sigma \Leftrightarrow \forall \varepsilon > 0 \exists\delta > 0 \forall T \forall \xi _k \in [x_{k-1},x_k] (d< \delta \Rightarrow |\sigma -I|< \varepsilon )" /></br>
                    <p>Функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> называется <em><span style="color: chocolate">интегрируемой (по Риману)</span></em> на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> , если существует конечный предел I интегральных сумм <img src="https://latex.codecogs.com/gif.latex?\sigma" title="\sigma" /> при 
                        <img src="https://latex.codecogs.com/gif.latex?d&space;\rightarrow&space;0" title="d \rightarrow 0" />. Этот предел называется <em><span style="color: chocolate">определенным интегралом</span></em> от функции <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> по <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> и обозначается как :
                  <img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}&space;f(x)dx" title="\int_{a}^{b} f(x)dx" /></p>
                    <a>Функция  <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> называется <em>подынтегральной функцией</em> , <img src="https://latex.codecogs.com/gif.latex?f(x)dx" title="f(x)dx" />  - <em>подынтегральным выражением</em>.</a>
                    <br align="justify"><span style="color: brown">Замечание:</span> с геометрической точки зрения определенный интеграл - есть площадь криволинейной трапеции, а с механической точки зрения определенный интеграл выражает работу переменной силы при перемещении материальной точки из одного положения в другое.</br>
                    <br><u>Пример</u>.Вычислить интеграл, пользуясь определением:</br>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}1\cdot&space;dx&space;\Rightarrow&space;f(x)&space;\equiv&space;1&space;,&space;\forall&space;x\in&space;[a,b]" title="\int_{a}^{b}1\cdot dx \Rightarrow f(x) \equiv 1 , \forall x\in [a,b]" /> . Разобьем отрезок <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />
                        произвольно  на n частичных отрезков вида <img src="https://latex.codecogs.com/gif.latex?[x_{k-1},x_k]" title="[x_{k-1},x_k]" />. Выберем на каждом из отрезков произвольную точку <img src="https://latex.codecogs.com/gif.latex?\xi&space;_k" title="\xi _k" /> и составим интегральную сумму : 
                     <img src="https://latex.codecogs.com/gif.latex?\sigma&space;=f(\xi&space;_1)\cdot&space;\Delta&space;x_1&plus;f(\xi&space;_2)\cdot&space;\Delta&space;x_2&space;&plus;&space;...&space;&plus;&space;f(\xi&space;_n)\cdot&space;\Delta&space;x_n&space;=&space;1\cdot&space;(x_1-x_0)&plus;1\cdot&space;(x_2-x_1)&plus;...&plus;1\cdot&space;(x_n-x_{n-1})=&space;x_n-x_0=b-a" title="\sigma =f(\xi _1)\cdot \Delta x_1+f(\xi _2)\cdot \Delta x_2 + ... + f(\xi _n)\cdot \Delta x_n = 1\cdot (x_1-x_0)+1\cdot (x_2-x_1)+...+1\cdot (x_n-x_{n-1})= x_n-x_0=b-a" /> </a>
                       <br> Далее по определению необходимо найти предел интегральных сумм:</br>
                        <a><img src="https://latex.codecogs.com/gif.latex?\lim_{d\rightarrow&space;0}&space;\sigma&space;=&space;\lim_{d\rightarrow&space;0}&space;(b-a)&space;=&space;b&space;-&space;a&space;\newline&space;\int_{a}^{b}&space;1\cdot&space;dx&space;=&space;b&space;-&space;a" title="\lim_{d\rightarrow 0} \sigma = \lim_{d\rightarrow 0} (b-a) = b - a \newline \int_{a}^{b} 1\cdot dx = b - a" /></a>
                    <p align="justify">Сформулируем <b><span style="color: brown">необходимое условие интегрируемости функции</b></span>: если функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> интегрируем на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> , то на этом отрезке функция является ограниченной.</p>
                   <a align="justify"><span style="color:brown">Заметим</span>, что ограниченность функции является лишь необходимым , но не достаточным условием ее интгрируемости. </a>
                </div>
            </div>
            <div id="footer"></div>
        </div>

    </form>
</body>
</html>
