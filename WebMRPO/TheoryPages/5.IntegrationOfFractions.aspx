<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5.IntegrationOfFractions.aspx.cs" Inherits="WebMRPO.TheoryPages.IntegrationOfFractions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Интегрирование рациональных функций (рациональных дробей)</title>
    <style>
        #workspace {
            height: 3100px;
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
                <asp:Button ID="btnAuthorization" runat="server" Text="Войти" PostBackUrl="~/AuthorizationPage.aspx" class="buttonMenu buttonHeader" />
                <asp:Button ID="btnRegistration" runat="server" Text="Зарегистрироваться" PostBackUrl="~/RegistrationPage.aspx" class="buttonMenu buttonHeader" />
            </div>
            <div id="menu">
                <hr />
                <asp:Button ID="Button1" runat="server" Text="Главная" class="buttonMenu" />
                <asp:Button ID="Button2" runat="server" Text="Теория" class="buttonMenu" />
                <asp:Button ID="Button3" runat="server" Text="Программы" class="buttonMenu" />
                <asp:Button ID="Button4" runat="server" Text="О проекте" class="buttonMenu" />
            </div>
            <div id="content">
                <div id="theorylist">
                    <%Response.Write(htmlArrayList);%>
                </div>
                <div id="text">
                    <h1 align="center">Интегрирование рациональных функций (рациональных дробей)</h1>
                    <p align="justify">
                        <span style="color: chocolate"><em>Многочленом n-ой степени переменной х</em></span> называется функция вида 
                         <img src="https://latex.codecogs.com/gif.latex?P(x)=a_{n}\cdot&space;x^{n}&plus;a_{n-1}\cdot&space;x^{n-1}&plus;...&plus;a_{1}\cdot&space;x&plus;a_{0}&space;;&space;a_{0},a_{1}...a_{n}\in&space;\mathbb{R},a_{n}\neq&space;0,n\in&space;\mathbb{N}\cup\begin{Bmatrix}&space;0&space;\end{Bmatrix}" title="P(x)=a_{n}\cdot x^{n}+a_{n-1}\cdot x^{n-1}+...+a_{1}\cdot x+a_{0} ; a_{0},a_{1}...a_{n}\in \mathbb{R},a_{n}\neq 0,n\in \mathbb{N}\cup\begin{Bmatrix} 0 \end{Bmatrix}" />
                    </p>
                    <p align="justify">
                        <span style="color: chocolate"><em>Рациональной функцией переменной х</em></span> называется функция, аналитическое выражение которой составлено с помощью 
                   переменной х и постоянных, используя основные арифметические операции.
                    </p>
                    <a align="justify"><span style="color: brown">Заметим</span>, что всякая рациональная функция представима в виде отношения двух многочленов, то есть в виде 
                       <img src="https://latex.codecogs.com/gif.latex?R(x)=\frac{P(x)}{Q(x)}" title="R(x)=\frac{P(x)}{Q(x)}" />.</a>
                    <br align="justify"><u>Например:</u> </br>
                    <a>
                        <img src="https://latex.codecogs.com/gif.latex?R(x)=5\cdot&space;x&plus;3-\frac{x}{x^{2}&plus;5}" title="R(x)=5\cdot x+3-\frac{x}{x^{2}+5}" /></a>
                    <p align="justify">
                        <span style="color: chocolate"><em>Рациональная функция (дробь)</em></span>
                        <img src="https://latex.codecogs.com/gif.latex?R(x)=\frac{P(x)}{Q(x)}" title="R(x)=\frac{P(x)}{Q(x)}" />
                        называется 
                    <span style="color: chocolate"><em>правильной</em></span>, если степень числителя меньше степени знаменателя. В противном случае рациональная функция называется неправильной.
                    </p>
                    <a><span style="color: brown">Отметим</span>, что всякую неправильную дробь можно представить в виде суммы многочленов и правильных дробей, если разделить числитель на знаменатель, например, уголком.</a>
                    <p align="justify">
                        Число а называется
                        <span style="color: chocolate"><em>корнем многочлена</em></span>
                        <img src="https://latex.codecogs.com/gif.latex?Q(x)" title="Q(x)" />
                        кратности
                        <img src="https://latex.codecogs.com/gif.latex?\alpha" title="\alpha" />, если 
                        этот многочлен можно представить в виде :
                        <img src="https://latex.codecogs.com/gif.latex?Q(x)=(x-a)^{\alpha&space;}\cdot&space;q(x),&space;q(a)\neq&space;0" title="Q(x)=(x-a)^{\alpha }\cdot q(x), q(a)\neq 0" />
                    </p>
                    <a><u>Например</u> для многочлена
                        <img src="https://latex.codecogs.com/gif.latex?Q(x)=x^{3}&plus;x^{2}=x^{2}\cdot&space;(x&plus;1)=(x-0)^{2}\cdot&space;(x&plus;1)" title="Q(x)=x^{3}+x^{2}=x^{2}\cdot (x+1)=(x-0)^{2}\cdot (x+1)" />, корнем кратности два является число 0, а корнем кратности 1 
                        - число -1.</a>
                    <p align="justify">
                        <b><span style="color: brown">Теорема №1</span></b>: всякий многочлен, старший коэффициент которого равен единице, с действительными коэффициентами 
                        можно представить в виде
                        <img src="https://latex.codecogs.com/gif.latex?Q(x)=&space;(x-a_{1})^{\alpha&space;_{1}}\cdot&space;(x-a_{2})^{\alpha&space;_{2}}\cdot&space;...\cdot&space;(x-a_{k})^{\alpha&space;_{k}}\cdot&space;(x^{2}&plus;p_{1}x&plus;q_{1})^{\beta&space;_{1}}\cdot&space;(x^{2}&plus;p_{2}x&plus;q_{2})^{\beta&space;_{2}}\cdot&space;...\cdot&space;(x^{2}&plus;p_{m}x&plus;q_{m})^{\beta&space;_{m}}" title="Q(x)= (x-a_{1})^{\alpha _{1}}\cdot (x-a_{2})^{\alpha _{2}}\cdot ...\cdot (x-a_{k})^{\alpha _{k}}\cdot (x^{2}+p_{1}x+q_{1})^{\beta _{1}}\cdot (x^{2}+p_{2}x+q_{2})^{\beta _{2}}\cdot ...\cdot (x^{2}+p_{m}x+q_{m})^{\beta _{m}}" />
                        (*),
                         где
                        <img src="https://latex.codecogs.com/gif.latex?a_{1},a_{2}...a_{k}" title="a_{1},a_{2}...a_{k}" />
                        - различные действительные корни многочлена кратности
                        <img src="https://latex.codecogs.com/gif.latex?\alpha&space;_{1},\alpha&space;_{2}...\alpha&space;_{k}" title="\alpha _{1},\alpha _{2}...\alpha _{k}" />
                        соответственно, а каждый их кратных трехчленов не имеет действительных корней.
                    </p>
                    <p align="justify">
                        <b><span style="color: brown">Теорема №2</span></b>: пусть дробь
                        <img src="https://latex.codecogs.com/gif.latex?R(x)=\frac{P(x)}{Q(x)}" title="R(x)=\frac{P(x)}{Q(x)}" />
                        является правильной, знаменатель которой представим в виде (*), тогда для этой дроби справедливо представление в виде:
                    <img src="https://latex.codecogs.com/gif.latex?R(x)=\frac{A_{11}}{x-a_{1}}&plus;\frac{A_{12}}{(x-a_{1})^{2}}&plus;...&plus;\frac{A_{1\alpha&space;_1}}{(x-a_{1})^{\alpha&space;_{1}}}&plus;\frac{A_{21}}{x-a_{2}}&plus;\frac{A_{22}}{(x-a_{2})^{2}}&plus;...&plus;\frac{A_{2\alpha&space;_{2}}}{(x-a_{2})^{\alpha&space;_{2}}}&plus;...&plus;\frac{A_{k1}}{x-a_{k}}&plus;\frac{A_{k2}}{(x-a_{k})^{2}}&plus;...&plus;\frac{A_{k\alpha&space;_{k}}}{(x-a_{k})^{\alpha&space;_{k}}}&plus;\frac{M_{11}x&plus;N_{11}}{x^{2}&plus;p_{1}x&plus;q_{1}}&plus;\frac{M_{12}x&plus;N_{12}}{(x^{2}&plus;p_{1}x&plus;q_{1})^{2}}&plus;...&plus;\frac{M_{1\beta&space;_{1}}x&plus;N_{1\beta&space;_{1}}}{(x^{2}&plus;p_{1}x&plus;q_{1})^{\beta&space;_{1}}}&plus;...&plus;\frac{M_{l1}x&plus;N_{l1}}{x^{2}&plus;p_{l}x&plus;q_{l}}&plus;\frac{M_{l2}x&plus;N_{l2}}{(x^{2}&plus;p_{l}x&plus;q_{l})^{2}}&plus;...&plus;\frac{M_{l\beta&space;_{l}x&plus;N_{l\beta&space;_{l}}}}{(x^{2}&plus;p_{l}x&plus;q_{l})^{\beta&space;_{l}}}&space;,&space;A_{11},A_{12},...,M_{11},...,N_{11},...&space;\in&space;\mathbb{R}" title="R(x)=\frac{A_{11}}{x-a_{1}}+\frac{A_{12}}{(x-a_{1})^{2}}+...+\frac{A_{1\alpha _1}}{(x-a_{1})^{\alpha _{1}}}+\frac{A_{21}}{x-a_{2}}+\frac{A_{22}}{(x-a_{2})^{2}}+...+\frac{A_{2\alpha _{2}}}{(x-a_{2})^{\alpha _{2}}}+...+\frac{A_{k1}}{x-a_{k}}+\frac{A_{k2}}{(x-a_{k})^{2}}+...+\frac{A_{k\alpha _{k}}}{(x-a_{k})^{\alpha _{k}}}+\frac{M_{11}x+N_{11}}{x^{2}+p_{1}x+q_{1}}+\frac{M_{12}x+N_{12}}{(x^{2}+p_{1}x+q_{1})^{2}}+...+\frac{M_{1\beta _{1}}x+N_{1\beta _{1}}}{(x^{2}+p_{1}x+q_{1})^{\beta _{1}}}+...+\frac{M_{l1}x+N_{l1}}{x^{2}+p_{l}x+q_{l}}+\frac{M_{l2}x+N_{l2}}{(x^{2}+p_{l}x+q_{l})^{2}}+...+\frac{M_{l\beta _{l}x+N_{l\beta _{l}}}}{(x^{2}+p_{l}x+q_{l})^{\beta _{l}}} , A_{11},A_{12},...,M_{11},...,N_{11},... \in \mathbb{R}" />
                    </p>
                    <p align="justify">
                        Дроби вида
                        <img src="https://latex.codecogs.com/gif.latex?\frac{A}{x-a},\frac{A}{(x-a)^{\alpha&space;}},\frac{Mx&plus;N}{x^{2}&plus;px&plus;q}&space;,&space;\frac{Mx&plus;N}{(x^{2}&plus;px&plus;q)^{\beta&space;}}" title="\frac{A}{x-a},\frac{A}{(x-a)^{\alpha }},\frac{Mx+N}{x^{2}+px+q} , \frac{Mx+N}{(x^{2}+px+q)^{\beta }}" />
                        называются 
                        <span style="color: chocolate"><em>простейшими дробями 1 - 4 типов</em></span>.
                    </p>
                    <a>Из теоремы №2 следует, что всякая правильная рациональная дробь может быть представлена в виде суммы/разности простейших дробей 1 - 4 типов. При этом для того чтобы определить коэффициенты в разложении, правую часть приводят к общему 
                        знаменателю, и приравнивают коэффициенты при соответсвующих степенях многочлена в числителе.
                    </a>
                    <p><u>Например:</u> </p>
                    <br>
                        <img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{x&plus;3}{x^2(x&plus;1)(x-2)}dx=I&space;\newline&space;\frac{x&plus;3}{x^2(x&plus;1)(x-2)}=\frac{A}{x}&plus;\frac{B}{x^2}&plus;\frac{C}{x&plus;1}&plus;\frac{D}{x-2}&space;=&space;\newline&space;=&space;\frac{Ax(x&plus;1)(x-2)&plus;B(x-2)(x&plus;1)&plus;cx^2(x-2)&plus;Dx^2(x&plus;1)}{x^2(x&plus;1)(x-2)}=&space;\newline&space;=&space;\frac{Ax^3-2Ax^2&plus;Ax^2-2Ax&plus;Bx^2-2Bx&plus;Bx-2B&plus;Cx^3-2Cx^2&plus;Dx^3&plus;Dx^2}{x^2(x&plus;1)(x-2)}&space;=&space;\newline&space;=&space;\frac{(A&plus;C&plus;D)x^3&plus;(-A&plus;B-2C&plus;D)x^2&plus;(-B-2A)x&plus;(-2B)}{x^2(x&plus;1)(x-2)}&space;\newline" title="\int \frac{x+3}{x^2(x+1)(x-2)}dx=I \newline \frac{x+3}{x^2(x+1)(x-2)}=\frac{A}{x}+\frac{B}{x^2}+\frac{C}{x+1}+\frac{D}{x-2} = \newline = \frac{Ax(x+1)(x-2)+B(x-2)(x+1)+cx^2(x-2)+Dx^2(x+1)}{x^2(x+1)(x-2)}= \newline = \frac{Ax^3-2Ax^2+Ax^2-2Ax+Bx^2-2Bx+Bx-2B+Cx^3-2Cx^2+Dx^3+Dx^2}{x^2(x+1)(x-2)} = \newline = \frac{(A+C+D)x^3+(-A+B-2C+D)x^2+(-B-2A)x+(-2B)}{x^2(x+1)(x-2)} \newline" /></br>
                    <br>
                        <img src="https://latex.codecogs.com/gif.latex?\left\{\begin{matrix}&space;A&plus;C&plus;D&space;=&space;0\\&space;-A&plus;B-2C&plus;D=0&space;\\&space;-2A-B=1&space;\\&space;-2B=3&space;\end{matrix}\right.\rightarrow&space;\left\{\begin{matrix}&space;A=&space;\frac{1}{4}\\&space;B=-&space;\frac{3}{2}&space;\\&space;C=-\frac{2}{3}&space;\\&space;D=\frac{5}{12}&space;\end{matrix}\right." title="\left\{\begin{matrix} A+C+D = 0\\ -A+B-2C+D=0 \\ -2A-B=1 \\ -2B=3 \end{matrix}\right.\rightarrow \left\{\begin{matrix} A= \frac{1}{4}\\ B=- \frac{3}{2} \\ C=-\frac{2}{3} \\ D=\frac{5}{12} \end{matrix}\right." /></br>
                    <br>
                        <img src="https://latex.codecogs.com/gif.latex?\frac{x&plus;3}{x^{2}\cdot&space;(x&plus;1)\cdot&space;(x-2)}=\frac{1}{4x}-\frac{3}{2x^{2}}-\frac{2}{3(x&plus;1)}&plus;\frac{5}{12(x-2)}" title="\frac{x+3}{x^{2}\cdot (x+1)\cdot (x-2)}=\frac{1}{4x}-\frac{3}{2x^{2}}-\frac{2}{3(x+1)}+\frac{5}{12(x-2)}" /></br>
                    <a>Таким образом, ответ:</a>
                    <br>
                        <img src="https://latex.codecogs.com/gif.latex?\int&space;\frac{x&plus;3}{x^2(x&plus;1)(x-2)}dx=\frac{1}{4}&space;\int&space;\frac{dx}{x}-\frac{3}{2}\int&space;\frac{dx}{x^2}-\frac{2}{3}\int&space;\frac{dx}{x&plus;1}&plus;\frac{5}{12}\int&space;\frac{dx}{x-2}=\frac{1}{4}\cdot&space;ln|x|-\frac{3}{2}\cdot&space;\frac{x^{-3}}{-3}-\frac{2}{3}\cdot&space;ln|x&plus;1|&plus;\frac{5}{12}\cdot&space;ln|x-2|&plus;C=&space;\frac{1}{4}\cdot&space;ln|x|&plus;\frac{1}{2x^3}-\frac{2}{3}\cdot&space;ln|x&plus;1|&plus;\frac{5}{12}\cdot&space;ln|x-2|&plus;C" title="\int \frac{x+3}{x^2(x+1)(x-2)}dx=\frac{1}{4} \int \frac{dx}{x}-\frac{3}{2}\int \frac{dx}{x^2}-\frac{2}{3}\int \frac{dx}{x+1}+\frac{5}{12}\int \frac{dx}{x-2}=\frac{1}{4}\cdot ln|x|-\frac{3}{2}\cdot \frac{x^{-3}}{-3}-\frac{2}{3}\cdot ln|x+1|+\frac{5}{12}\cdot ln|x-2|+C= \frac{1}{4}\cdot ln|x|+\frac{1}{2x^3}-\frac{2}{3}\cdot ln|x+1|+\frac{5}{12}\cdot ln|x-2|+C" /></br>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
