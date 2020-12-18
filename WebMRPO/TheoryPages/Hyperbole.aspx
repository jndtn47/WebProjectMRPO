<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hyperbole.aspx.cs" Inherits="WebMRPO.TheoryPages.Hyperbole" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Гипербола и её каноническое уравнение</title>
    <style>
        #workspace{
            height: 2800px;
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
    <script type="text/javascript" src="http://tex.yourequations.com/"></script>
<body>
    <form id="form1" runat="server">
        <div id="workspace">
            <div id="header">
                 <div id="imgH"><img src="../resources/HeaderImg.png" width="700" height="80" /></div>
                <asp:Button ID="btnAuthorization" runat="server" Text="Войти" PostBackUrl="~/AuthorizationPage.aspx" class="buttonMenu buttonHeader" />
                <asp:Button ID="btnRegistration" runat="server" Text="Зарегистрироваться" PostBackUrl="~/RegistrationPage.aspx" class="buttonMenu buttonHeader" />
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
                    <div>
                        <%Response.Write(htmlArrayList);%>
                    </div>
                </div>
                <div id="text">
                     <h2 align="center">Гипербола и её каноническое уравнение</h2>
                     <p align="justify"><i>Гиперболой</i> называется множество всех точек плоскости, разность 
                     расстояний от каждой из которых до двух данных точек этой плоскости, 
                     называемых <i>фокусами</i>, есть величина постоянная, меньшая, чем расстояние 
                     между фокусами. </p>
                     <p align="justify">Для вывода уравнения гиперболы расположим ее фокусы <i>F<sub>1</sub></i> и <i>F<sub>2</sub></i> на оси <i>Ox</i> симметрично оси <i>Oy</i>.
                         Обозначим расстояние между фокусами <i>|F<sub>1</sub>F<sub>2</sub>|=2c</i>. Тогда в выбранной системе координат <i>xOy</i> координаты точек 
                         <i>F<sub>1</sub>(-c, 0), F<sub>2</sub>(c, 0)</i>.</p>
                     <p align="center"><img src="../resources/Hyperbole/Hyperbole1.PNG" width="50%" /></p>
                     <p align="justify">Пусть <i>M(x, y)</i> - произвольная точка, принадлежащая гиперболе, а <i>|MF<sub>1</sub>|-|MF<sub>2</sub>|</i>=<img src="https://latex.codecogs.com/gif.latex?\pm" title="\pm" />2a
                         и по определению гиперболы <i>2a < 2c</i>, т.е. <i>a < c</i>.</p>
                     <p align="justify">Используя формулу расстояния между двумя точками, получаем</p>
                     <center><img src="https://latex.codecogs.com/gif.latex?\sqrt{(x&plus;c)^{2}&plus;y^{2}}-\sqrt{(x-c)^{2}&plus;y^{2}}=\pm&space;2a" title="\sqrt{(x+c)^{2}+y^{2}}-\sqrt{(x-c)^{2}+y^{2}}=\pm 2a" /></center>
                     <p align="justify">После преобразований, как это было сделано при выводе уравнения эллипса, получим <i>каноническое уравнение гиперболы</i></p>
                     <center><img src="https://latex.codecogs.com/gif.latex?\frac{x^2}{a^2}-\frac{y^2}{b^2}=1" title="\frac{x^2}{a^2}-\frac{y^2}{b^2}=1" />,</center>
                     <p align="justify">где <img src="https://latex.codecogs.com/gif.latex?a^2&plus;b^2=c^2" title="a^2+b^2=c^2" />.</p>
                     <p align="justify"><u>Пример.</u> Построить гиперболу, заданную уравнением <img src="https://latex.codecogs.com/gif.latex?5x^2-4y^2=20" title="5x^2-4y^2=20" /></p>
                     <p align="justify"><b>Решение:</b>на первом шаге приведём данное уравнение к каноническому виду <img src="https://latex.codecogs.com/gif.latex?\frac{x^2}{a^2}-\frac{y^2}{b^2}=1" title="\frac{x^2}{a^2}-\frac{y^2}{b^2}=1" />.</p>
                     <p align="justify">Справа необходимо получить «единицу», поэтому обе части исходного уравнения делим на 20:</p>
                     <center><img src="https://latex.codecogs.com/gif.latex?\frac{5x^2-4y^2}{20}=\frac{20}{20}" title="\frac{5x^2-4y^2}{20}=\frac{20}{20}" /></center>
                     <center><img src="https://latex.codecogs.com/gif.latex?\frac{5x^2}{20}-\frac{4y^2}{20}=1" title="\frac{5x^2}{20}-\frac{4y^2}{20}=1" /></center>
                     <p align="justify">Здесь можно сократить обе дроби, но оптимальнее сделать каждую из них трёхэтажной:</p>
                     <center><img src="https://latex.codecogs.com/gif.latex?\frac{x^2}{\frac{20}{5}}-\frac{y^2}{\frac{20}{4}}=1" title="\frac{x^2}{\frac{20}{5}}-\frac{y^2}{\frac{20}{4}}=1" /></center>
                     <p align="justify">Выделяем квадраты в знаменателях:</p>
                     <center><img src="https://latex.codecogs.com/gif.latex?\frac{x^2}{2^2}-\frac{y^2}{\sqrt{5}^{2}}=1" title="\frac{x^2}{2^2}-\frac{y^2}{\sqrt{5}^{2}}=1" /></center>
                     <p align="justify">Готово.</p>
                     <p align="justify">Итак, воспользуемся плодом наших трудов – каноническим уравнением <img src="https://latex.codecogs.com/gif.latex?\frac{x^2}{2^2}-\frac{y^2}{\sqrt{5}^{2}}=1" title="\frac{x^2}{2^2}-\frac{y^2}{\sqrt{5}^{2}}=1" /></p>
                     <center><img src="../resources/Hyperbole/Hyperbole2.PNG" width="50%" /></center>

                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
