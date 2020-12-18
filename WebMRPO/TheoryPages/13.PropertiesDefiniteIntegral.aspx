<%@ page language="C#" autoeventwireup="true" codebehind="13.PropertiesDefiniteIntegral.aspx.cs" inherits="WebMRPO.TheoryPages._13_PropertiesDefiniteIntegral" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Свойства определенного интеграла</title>
    <style>
        #workspace{
            height: 3000px;
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
                    <h1 align="center">Свойства определенного интеграла</h1>
                    <p><b><span style="color:brown">№1.</span></b>По определению полагают, что</p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{a}&space;f(x)dx&space;=&space;0&space;\newline&space;\int_{a}^{b}&space;f(x)dx&space;=&space;-&space;\int_{b}^{a}&space;f(x)dx" title="\int_{a}^{a} f(x)dx = 0 \newline \int_{a}^{b} f(x)dx = - \int_{b}^{a} f(x)dx" /></a>
                    <p><b><span style="color:brown">№2.</span></b> Пусть функции <img src="https://latex.codecogs.com/gif.latex?f(x),g(x)" title="f(x),g(x)" /> интегрируемы на отрезке  <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> 
                        , тогда функции <img src="https://latex.codecogs.com/gif.latex?f(x)&plus;g(x)&space;,f(x)-g(x)" title="f(x)+g(x) ,f(x)-g(x)" /> также интегрируемы на этом отрезке, причем выполняется равенство:</p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}(f(x)\pm&space;g(x))&space;=&space;\int_{a}^{b}&space;f(x)dx&space;\pm&space;\int_{a}^{b}&space;g(x)dx" title="\int_{a}^{b}(f(x)\pm g(x)) = \int_{a}^{b} f(x)dx \pm \int_{a}^{b} g(x)dx" /></a>
                    <br><b><span style="color:brown">Доказательство:</span></b> рассмотрим произвольное разбиение Т отрезка <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />  и произвольные точки 
                    <img src="https://latex.codecogs.com/gif.latex?\xi&space;_k" title="\xi _k" />  отрезков <img src="https://latex.codecogs.com/gif.latex?[x_{k-1},x_k]" title="[x_{k-1},x_k]" />. Составим интегральную сумму для функции 
                    <img src="https://latex.codecogs.com/gif.latex?f(x)&plus;g(x)" title="f(x)+g(x)" />:</br>
                    <a><img src="https://latex.codecogs.com/gif.latex?\sigma&space;=\sum_{k=1}^{n}(f(\xi&space;_k)&plus;g(\xi&space;_k))\cdot&space;\Delta&space;x_k=\sum_{k=1}^{n}f(\xi&space;_k)\cdot&space;\Delta&space;x_k&plus;\sum_{k=1}^{n}g(\xi&space;_k)\cdot&space;\Delta&space;x_k" title="\sigma =\sum_{k=1}^{n}(f(\xi _k)+g(\xi _k))\cdot \Delta x_k=\sum_{k=1}^{n}f(\xi _k)\cdot \Delta x_k+\sum_{k=1}^{n}g(\xi _k)\cdot \Delta x_k" /></a>
                   <br>Так как функции <img src="https://latex.codecogs.com/gif.latex?f(x),g(x)" title="f(x),g(x)" /> по условию интегрируемы на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />, значит существует предел правой части равенства при 
                       <img src="https://latex.codecogs.com/gif.latex?d&space;\rightarrow&space;0" title="d \rightarrow 0" /> , а значит существует и предел левой части равенства при  <img src="https://latex.codecogs.com/gif.latex?d&space;\rightarrow&space;0" title="d \rightarrow 0" />, то есть 
                       функция <img src="https://latex.codecogs.com/gif.latex?f(x)&plus;g(x)" title="f(x)+g(x)" /> является интегрируемой на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />  и верно </br>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}&space;(f(x)&plus;g(x))dx=\int_{a}^{b}&space;f(x)dx&space;&plus;&space;\int_{a}^{b}&space;g(x)dx" title="\int_{a}^{b} (f(x)+g(x))dx=\int_{a}^{b} f(x)dx + \int_{a}^{b} g(x)dx" /></a>
                    <p><b><span style="color:brown">№3.</span></b> Если функция     <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />  интегрируема на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />, то функция 
                        <img src="https://latex.codecogs.com/gif.latex?k\cdot&space;f(x),k\in&space;\mathbb{R}" title="k\cdot f(x),k\in \mathbb{R}" /> также интегрируема на этом отрезке, и верно равенство:</p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}k\cdot&space;f(x)&space;=&space;k\cdot&space;\int_{a}^{b}f(x)dx" title="\int_{a}^{b}k\cdot f(x) = k\cdot \int_{a}^{b}f(x)dx" /></a>
                    <br><b><span style="color:brown">Доказательство:</span></b> рассмотрим произвольное разбиение Т отрезка <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />  и произвольные точки 
                    <img src="https://latex.codecogs.com/gif.latex?\xi&space;_k" title="\xi _k" />  отрезков <img src="https://latex.codecogs.com/gif.latex?[x_{k-1},x_k]" title="[x_{k-1},x_k]" />. Составим интегральную сумму для функции 
                    <img src="https://latex.codecogs.com/gif.latex?k\cdot&space;f(x)" title="k\cdot f(x)" />:</br>
                    <a><img src="https://latex.codecogs.com/gif.latex?\sigma&space;=\sum_{m=1}^{n}(k\cdot&space;f(\xi&space;_m))\cdot&space;\Delta&space;x_m=&space;k\cdot&space;(\sum_{m=1}^{n}f(\xi&space;_m)\cdot&space;\Delta&space;x_m)" title="\sigma =\sum_{m=1}^{n}(k\cdot f(\xi _m))\cdot \Delta x_m= k\cdot (\sum_{m=1}^{n}f(\xi _m)\cdot \Delta x_m)" /></a>
                    <br>Так как функция  <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> интегрируема на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> и число k можно выносить за знак предела, то существует предел правой части равенства при  <img src="https://latex.codecogs.com/gif.latex?d&space;\rightarrow&space;0" title="d \rightarrow 0" />. А значит существует и предел левой части равенства, что означает интегрируемость 
                        функции <img src="https://latex.codecogs.com/gif.latex?k\cdot&space;f(x)" title="k\cdot f(x)" /> на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />. Что и требовалось доказать.</br>
                    <p><b><span style="color:brown">№4.</span></b> Пусть функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />  интегрируема на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />, тогда она интегрируема на любом отрезке 
                    <img src="https://latex.codecogs.com/gif.latex?[c,d]" title="[c,d]" /> , содержащемся в  <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />.</p>
                    <p><b><span style="color:brown">№5.</span></b> Если функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />  интегрируема на <img src="https://latex.codecogs.com/gif.latex?[a,c]&space;,&space;[c,b]" title="[a,c] , [c,b]" />, то функция 
                        <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> интегрируема на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />, причем имеет место равенство:</p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}f(x)dx=\int_{a}^{c}f(x)dx&plus;\int_{c}^{b}f(x)dx" title="\int_{a}^{b}f(x)dx=\int_{a}^{c}f(x)dx+\int_{c}^{b}f(x)dx" /></a>
                    <p><b><span style="color:brown">№6.</span></b> Если функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />  интегрируема на <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> и
                    <img src="https://latex.codecogs.com/gif.latex?f(x)\geq&space;0&space;,&space;\forall&space;x\in&space;[a,b]" title="f(x)\geq 0 , \forall x\in [a,b]" /> , то </p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}f(x)dx&space;\geq&space;0" title="\int_{a}^{b}f(x)dx \geq 0" /></a>
                    <p><b><span style="color:brown">№7.</span></b> Если функции  <img src="https://latex.codecogs.com/gif.latex?f(x),g(x)" title="f(x),g(x)" /> интегрируемы на отрезке  <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> и верно 
                    <img src="https://latex.codecogs.com/gif.latex?f(x)\geq&space;g(x),\forall&space;x\in&space;[a,b]" title="f(x)\geq g(x),\forall x\in [a,b]" /> , то </p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}f(x)dx&space;\geq&space;\int_{a}^{b}g(x)dx" title="\int_{a}^{b}f(x)dx \geq \int_{a}^{b}g(x)dx" /></a>
                     <p><b><span style="color:brown">№8.</span></b> Если функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />  интегрируема на <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> и <img src="https://latex.codecogs.com/gif.latex?m\leq&space;f(x)\leq&space;M,\forall&space;x\in&space;[a,b]" title="m\leq f(x)\leq M,\forall x\in [a,b]" /> 
                         , то </p>
                    <a><img src="https://latex.codecogs.com/gif.latex?m\cdot&space;(b-a)\leq&space;\int_{a}^{b}f(x)dx\leq&space;M\cdot&space;(b-a)" title="m\cdot (b-a)\leq \int_{a}^{b}f(x)dx\leq M\cdot (b-a)" /></a>
                    <p><b><span style="color:brown">№9.</span></b> Если функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />  интегрируема на <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> , то функция <img src="https://latex.codecogs.com/gif.latex?|f(x)|" title="|f(x)|" />
                        также интегрируема на <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> и верно равенство: </p>
                    <a><img src="https://latex.codecogs.com/gif.latex?|\int_{a}^{b}f(x)dx|\leq&space;\int_{a}^{b}|f(x)|dx" title="|\int_{a}^{b}f(x)dx|\leq \int_{a}^{b}|f(x)|dx" /></a>
                    <p><b><span style="color:brown">№10.Теорема о среднем:</span></b> пусть функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" />  интегрируема на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />
                      и m , M - точняя нижняя и точная верхняя грани функции на этом отрезке. Тогда найдется такое число <img src="https://latex.codecogs.com/gif.latex?\mu" title="\mu" /> , удовлетворяющее неравенству <img src="https://latex.codecogs.com/gif.latex?m\leq&space;\mu\leq&space;M" title="m\leq \mu\leq M" /> 
                     , что выполнится </p>
                    <a><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}f(x)dx=\mu&space;(b-a)" title="\int_{a}^{b}f(x)dx=\mu (b-a)" /></a>
                   <br><span style="color:brown">Замечание:</span> если функция непрерывна на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />, то на этом отрезке найдется такая точка с ,
                       что выполнится:
                   </br> 
                    <br><img src="https://latex.codecogs.com/gif.latex?\int_{a}^{b}f(x)dx=f(c)\cdot&space;(b-a)" title="\int_{a}^{b}f(x)dx=f(c)\cdot (b-a)" /></br>
                <a>При этом условие непрерывности функции является сущесnвенным.</a>
                </div>
            </div>
            <div id="footer"></div>
        </div>

    </form>
</body>
</html>
