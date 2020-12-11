<%@ page language="C#" autoeventwireup="true" codebehind="12.ClassesIntegrableFunctions.aspx.cs" inherits="WebMRPO.TheoryPages._12_ClassesIntegrableFunctions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Классы интегрируемых функций</title>
    <style>
        #workspace{
            height: 1700px;
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
                    <h1 align="center">Классы интегрируемых функций</h1>
                    <p align="center"><i><span style="color:brown">Интегрируемость непрерывных функций</span></i></p>
                    <p align="justify"><b><span style="color:brown">Теорема:</span></b> если функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> непрерывна на отрезке 
                        <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> , то на этом отрезке функция интегрируема. </p>
                    <a align="justify"><span style="color:brown"><b>Доказательство:</b></span> возьмем произвольное положительное число <img src="https://latex.codecogs.com/gif.latex?\varepsilon" title="\varepsilon" /> . Так как функция непрерывна на отрезке 
<img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> , то на этом отрезке по теореме Кантора функция равномерно непрерывна. Значит для числа <img src="https://latex.codecogs.com/gif.latex?\frac{\varepsilon&space;}{b-a}" title="\frac{\varepsilon }{b-a}" />
    найдется такое положительное число  <img src="https://latex.codecogs.com/gif.latex?\delta" title="\delta" /> , что для любых точек <img src="https://latex.codecogs.com/gif.latex?x'&space;,&space;x''&space;,...\in&space;[a,b]" title="x' , x'' ,...\in [a,b]" />
                        таких что <img src="https://latex.codecogs.com/gif.latex?|x'-x''|<&space;\delta" title="|x'-x''|< \delta" /> , выполнится неравенство <img src="https://latex.codecogs.com/gif.latex?|f(x')-f(x'')|<&space;\frac{\varepsilon&space;}{b-a}" title="|f(x')-f(x'')|< \frac{\varepsilon }{b-a}" />.</a>
                    <br>Рассмотрим разбиение Т отрезка <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> , такое что <img src="https://latex.codecogs.com/gif.latex?d(T)<&space;\delta" title="d(T)< \delta" />. Тогда по следствию из теоремы Кантора на каждом частичном отрезке 
                        <img src="https://latex.codecogs.com/gif.latex?[x_{k-1},x_k]" title="[x_{k-1},x_k]" /> колебания функции удовлетворяют неравенству <img src="https://latex.codecogs.com/gif.latex?\omega&space;_k<&space;\frac{\varepsilon&space;}{b-a}" title="\omega _k< \frac{\varepsilon }{b-a}" />.
                    </br>
                    <br>Отсюда получим, что разность верхних и нижних сумм Дарбу будет соответственно равна : </br>
                    <br><img src="https://latex.codecogs.com/gif.latex?S&space;-&space;s&space;=&space;\sum_{k=1}^{n}\omega&space;_k\cdot&space;\Delta&space;x_k<&space;\sum_{k=1}^{n}&space;\frac{\varepsilon&space;}{b-a}\cdot&space;\Delta&space;x_k=\frac{\varepsilon&space;}{b-a}\cdot&space;\sum_{k=1}^{n}&space;\Delta&space;x_k&space;=&space;\frac{\varepsilon&space;}{b-a}&space;\cdot&space;(b-a)&space;=&space;\varepsilon" title="S - s = \sum_{k=1}^{n}\omega _k\cdot \Delta x_k< \sum_{k=1}^{n} \frac{\varepsilon }{b-a}\cdot \Delta x_k=\frac{\varepsilon }{b-a}\cdot \sum_{k=1}^{n} \Delta x_k = \frac{\varepsilon }{b-a} \cdot (b-a) = \varepsilon" />.</br>
                    <a>А это по критерию интегрируемости функции и означает, что функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> интегрируема на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> , что и требовалось доказать. </a>
                     <p align="center"><i><span style="color:brown">Интегрируемость монотонных функций</span></i></p>
                     <p align="justify"><b><span style="color:brown">Теорема:</span></b> монотонная на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> интегрируема на этом отрезке.</p>
                    <a align="justify"><span style="color:brown"><b>Доказательство:</b></span> будем полагать , что функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> является возрастающей функцией на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> 
                        , тогда для любого значения аргумента выполнится <img src="https://latex.codecogs.com/gif.latex?f(a)\leq&space;f(x)\leq&space;f(b),\forall&space;x\in&space;[a,b]" title="f(a)\leq f(x)\leq f(b),\forall x\in [a,b]" /> . Это неравенство показывает, что функция является также ограниченной на этом отрезке. </a>
                    <br align="justify">Рассмотрим произвольное положительное число <img src="https://latex.codecogs.com/gif.latex?\varepsilon" title="\varepsilon" /> и разобьем отрезок <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" />
                        на равные частичные отрезки, длины которых меньше чем <img src="https://latex.codecogs.com/gif.latex?\frac{\varepsilon&space;}{f(b)-f(a)}" title="\frac{\varepsilon }{f(b)-f(a)}" />. Оценим разность верхних и нижних сумм Дарбу для этого разбиения:</br>
                    <br><img src="https://latex.codecogs.com/gif.latex?S-s=\sum_{k=1}^{n}(f(x_k)-f(x_{k-1}))\cdot&space;\Delta&space;x_k<&space;\sum_{k=1}^{n}(f(x_k)-f(x_{k-1}))\cdot\frac{\varepsilon&space;}{f(b)-f(a)}=&space;\frac{\varepsilon&space;}{f(b)-f(a)}&space;\cdot&space;\sum_{k=1}^{n}(f(x_k)-f(x_{k-1}))=\frac{\varepsilon&space;}{f(b)-f(a)}&space;\cdot(f(x_1)-f(x_0)&plus;f(x_2)-f(x_1)&plus;...&plus;f(x_n)-f(x_{n-1})))=\frac{\varepsilon&space;}{f(b)-f(a)}&space;\cdot&space;(f(b)-f(a))=\varepsilon" title="S-s=\sum_{k=1}^{n}(f(x_k)-f(x_{k-1}))\cdot \Delta x_k< \sum_{k=1}^{n}(f(x_k)-f(x_{k-1}))\cdot\frac{\varepsilon }{f(b)-f(a)}= \frac{\varepsilon }{f(b)-f(a)} \cdot \sum_{k=1}^{n}(f(x_k)-f(x_{k-1}))=\frac{\varepsilon }{f(b)-f(a)} \cdot(f(x_1)-f(x_0)+f(x_2)-f(x_1)+...+f(x_n)-f(x_{n-1})))=\frac{\varepsilon }{f(b)-f(a)} \cdot (f(b)-f(a))=\varepsilon" />.</br>
                <a>А это по критерию интегрируемости и означает, что функция <img src="https://latex.codecogs.com/gif.latex?f(x)" title="f(x)" /> интегрируема на отрезке <img src="https://latex.codecogs.com/gif.latex?[a,b]" title="[a,b]" /> , что и требовалось доказать. </a>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
