<%@ page language="C#" autoeventwireup="true" codebehind="6.SimplestFractions.aspx.cs" inherits="WebMRPO.TheoryPages.SimplestFractions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>>Интегрирование простейших дробей<title>
    <style>
        #workspace{
            height: 2500px;
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
                    <h1 align="center">Интегрирование простейших дробей </h1>
                      <p align="center"><em><span style="color: brown"> Первый тип:</span></em></p>
                    <br> <img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{A}{x-a}dx=A\cdot&space;\int&space;\frac{dx}{x-a}=A\cdot&space;\int&space;\frac{d(x-a)}{x-a}=A\cdot&space;ln|x-a|&plus;C" title="\int \frac{A}{x-a}dx=A\cdot \int \frac{dx}{x-a}=A\cdot \int \frac{d(x-a)}{x-a}=A\cdot ln|x-a|+C" /></br>
                     <p align="center"><em><span style="color: brown">Второй тип:</span></em></p>
                    <br> <img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{A}{(x-a)^{\alpha&space;}}dx=A\cdot&space;\int&space;\frac{dx}{(x-a)^{\alpha&space;}}=A\cdot&space;\int&space;(x-a)^{-\alpha}dx=A\cdot&space;\int&space;(x-a)^{-\alpha}d(x-a)=A\cdot&space;\frac{(x-a)^{-\alpha&plus;1}}{-\alpha&space;&plus;1}&plus;C=\frac{A}{1-\alpha&space;}\cdot&space;\frac{1}{(x-a)^{\alpha&space;-1}}&plus;C&space;,&space;\alpha&space;>&space;1" title="\int \frac{A}{(x-a)^{\alpha }}dx=A\cdot \int \frac{dx}{(x-a)^{\alpha }}=A\cdot \int (x-a)^{-\alpha}dx=A\cdot \int (x-a)^{-\alpha}d(x-a)=A\cdot \frac{(x-a)^{-\alpha+1}}{-\alpha +1}+C=\frac{A}{1-\alpha }\cdot \frac{1}{(x-a)^{\alpha -1}}+C , \alpha > 1" /></br>
                      <p align="justify">Для вычисления последующих интегралов рассмотрим некоторые <span style="color: brown">вспомогательные интегралы:</span></p>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{tdt}{t^{2}&plus;a^{2}}=\frac{1}{2}\cdot&space;\int&space;\frac{2tdt}{t^{2}&plus;a^{2}}=\frac{1}{2}\cdot&space;\int&space;\frac{d(t^{2}&plus;a^{2})}{t^{2}&plus;a^{2}}=\frac{1}{2}\cdot&space;ln|t^{2}&plus;a^{2}|&plus;C=\frac{1}{2}\cdot&space;ln(t^{2}&plus;a^{2})&plus;C" title="\int \frac{tdt}{t^{2}+a^{2}}=\frac{1}{2}\cdot \int \frac{2tdt}{t^{2}+a^{2}}=\frac{1}{2}\cdot \int \frac{d(t^{2}+a^{2})}{t^{2}+a^{2}}=\frac{1}{2}\cdot ln|t^{2}+a^{2}|+C=\frac{1}{2}\cdot ln(t^{2}+a^{2})+C" /></br>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{tdt}{(t^2&plus;a^2)^\alpha&space;}=\frac{1}{2}\cdot&space;\int&space;\frac{d(t^2&plus;a^2)}{(t^2&plus;a^2)^\alpha&space;}=\frac{1}{2}\cdot&space;\int&space;(t^2&plus;a^2)^{-\alpha}\cdot&space;d(t^2&plus;a^2)=\frac{1}{2}\cdot&space;\frac{(t^2&plus;a^2)^{-\alpha&space;&plus;1}}{1-\alpha&space;}&plus;C=\frac{1}{2(1-\alpha&space;)}\cdot&space;\frac{1}{(t^2&plus;a^2)^{\alpha&space;-1}}&plus;C" title="\int \frac{tdt}{(t^2+a^2)^\alpha }=\frac{1}{2}\cdot \int \frac{d(t^2+a^2)}{(t^2+a^2)^\alpha }=\frac{1}{2}\cdot \int (t^2+a^2)^{-\alpha}\cdot d(t^2+a^2)=\frac{1}{2}\cdot \frac{(t^2+a^2)^{-\alpha +1}}{1-\alpha }+C=\frac{1}{2(1-\alpha )}\cdot \frac{1}{(t^2+a^2)^{\alpha -1}}+C" /></br>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{dt}{t^2&plus;a^2}=\frac{1}{a}\cdot&space;arctg(\frac{t}{a})&plus;C" title="\int \frac{dt}{t^2+a^2}=\frac{1}{a}\cdot arctg(\frac{t}{a})+C" /></br>
                        <p align="center"><em><span style="color: brown">Третий тип:</span></em></p>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{Mx&plus;N}{x^2&plus;px&plus;q}dx=\int&space;\frac{Mx&plus;N}{(x^2&plus;2\cdot&space;\frac{p}{2}\cdot&space;x&plus;\frac{p^2}{4})&plus;q-\frac{p^2}{4}}dx&space;=\int&space;\frac{Mx&plus;N}{(x&plus;\frac{p}{2})^2&plus;(q-\frac{p^2}{4})}dx=\int&space;\frac{M(x&plus;\frac{p}{2})&plus;N-\frac{MP}{2}}{(x&plus;\frac{p}{2})^2&plus;(q-\frac{p^2}{4})}dx=\begin{bmatrix}&space;t=x&plus;\frac{p}{2}&space;&&space;dt=dx\\&space;N-\frac{MP}{2}=&space;B&space;&&space;a^2=q-\frac{p^2}{4}&space;\end{bmatrix}&space;=&space;\int&space;\frac{Mt&plus;B}{t^2&plus;a^2}dt=\int&space;\frac{Mt}{t^2&plus;a^2}dt&plus;\int&space;\frac{B}{t^2&plus;a^2}dt=M\cdot&space;\frac{1}{2}\cdot&space;ln(t^2&plus;a^2)&plus;\frac{B}{a}\cdot&space;arctg(\frac{t}{a})&plus;C" title="\int \frac{Mx+N}{x^2+px+q}dx=\int \frac{Mx+N}{(x^2+2\cdot \frac{p}{2}\cdot x+\frac{p^2}{4})+q-\frac{p^2}{4}}dx =\int \frac{Mx+N}{(x+\frac{p}{2})^2+(q-\frac{p^2}{4})}dx=\int \frac{M(x+\frac{p}{2})+N-\frac{MP}{2}}{(x+\frac{p}{2})^2+(q-\frac{p^2}{4})}dx=\begin{bmatrix} t=x+\frac{p}{2} & dt=dx\\ N-\frac{MP}{2}= B & a^2=q-\frac{p^2}{4} \end{bmatrix} = \int \frac{Mt+B}{t^2+a^2}dt=\int \frac{Mt}{t^2+a^2}dt+\int \frac{B}{t^2+a^2}dt=M\cdot \frac{1}{2}\cdot ln(t^2+a^2)+\frac{B}{a}\cdot arctg(\frac{t}{a})+C" /></br>
                    <br>Возвращаясь к исходным переменным, получим необходимый ответ.</br>
                     <p align="center"><em><span style="color: brown">Четвертый тип:</span></em></p>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{Mx&plus;N}{(x^2&plus;px&plus;q)^\alpha&space;}dx=\int&space;\frac{Mx&plus;N}{((x&plus;\frac{p}{2})^2&plus;(q-\frac{p^2}{4})^2)^\alpha&space;}dx&space;=\int&space;\frac{M(x&plus;\frac{p}{2})&plus;N-\frac{MP}{2}}{((x&plus;\frac{p}{2})^2&plus;(q-\frac{p^2}{4})^2)^\alpha&space;}dx=\begin{bmatrix}&space;t=x&plus;\frac{p}{2}&&&space;dt=dx\\&space;B=N-\frac{MP}{2}&&a^2=q-\frac{p^2}{4}&space;\end{bmatrix}&space;=&space;\int&space;\frac{Mt&plus;B}{(t^2&plus;a^2)^\alpha&space;}dt=M\cdot&space;\int&space;\frac{t}{(t^2&plus;a^2)^\alpha&space;}dt&plus;B\cdot&space;\int&space;\frac{dt}{(t^2&plus;a^2)^\alpha&space;}=..." title="\int \frac{Mx+N}{(x^2+px+q)^\alpha }dx=\int \frac{Mx+N}{((x+\frac{p}{2})^2+(q-\frac{p^2}{4})^2)^\alpha }dx =\int \frac{M(x+\frac{p}{2})+N-\frac{MP}{2}}{((x+\frac{p}{2})^2+(q-\frac{p^2}{4})^2)^\alpha }dx=\begin{bmatrix} t=x+\frac{p}{2}&& dt=dx\\ B=N-\frac{MP}{2}&&a^2=q-\frac{p^2}{4} \end{bmatrix} = \int \frac{Mt+B}{(t^2+a^2)^\alpha }dt=M\cdot \int \frac{t}{(t^2+a^2)^\alpha }dt+B\cdot \int \frac{dt}{(t^2+a^2)^\alpha }=..." /></br>
                    <br>Для дальнейших вычислений используются второй и четвертый вспомогательные интегралы.</br>
                    <p><u>Пример:</u></p>
                    <br><img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{2x^3&plus;4x^2&plus;x&plus;2}{(x-1)^2\cdot&space;(x^2&plus;x&plus;1)}dx=\int&space;\frac{2}{x-1}dx&plus;\int&space;\frac{3}{(x-1)^2}dx&plus;\int&space;\frac{dx}{x^2&plus;x&plus;1}=2\cdot&space;\int&space;\frac{d(x-1)}{x-1}&plus;3\cdot&space;\int&space;(x-1)^{-2}\cdot&space;d(x-1)&plus;\int&space;\frac{dx}{(x^2&plus;2\cdot&space;\frac{1}{2}\cdot&space;x&plus;\frac{1}{4})&plus;\frac{3}{4}}=2ln|x-1|&plus;3\cdot&space;\frac{(x-1)^{-1}}{-1}&plus;\int&space;\frac{d(x&plus;\frac{1}{2})}{(x&plus;\frac{1}{2})^2&plus;(\frac{\sqrt{3}}{2})^2}=2ln|x-1|-\frac{3}{x-1}&plus;\frac{2}{\sqrt{3}}\cdot&space;arctg(\frac{(2x&plus;1)\sqrt{3}}{3})&plus;C" title="\int \frac{2x^3+4x^2+x+2}{(x-1)^2\cdot (x^2+x+1)}dx=\int \frac{2}{x-1}dx+\int \frac{3}{(x-1)^2}dx+\int \frac{dx}{x^2+x+1}=2\cdot \int \frac{d(x-1)}{x-1}+3\cdot \int (x-1)^{-2}\cdot d(x-1)+\int \frac{dx}{(x^2+2\cdot \frac{1}{2}\cdot x+\frac{1}{4})+\frac{3}{4}}=2ln|x-1|+3\cdot \frac{(x-1)^{-1}}{-1}+\int \frac{d(x+\frac{1}{2})}{(x+\frac{1}{2})^2+(\frac{\sqrt{3}}{2})^2}=2ln|x-1|-\frac{3}{x-1}+\frac{2}{\sqrt{3}}\cdot arctg(\frac{(2x+1)\sqrt{3}}{3})+C" /></br>

                </div>
            </div>
            <div id="footer"</div>
        </div>
    </form>
</body>
</html>
