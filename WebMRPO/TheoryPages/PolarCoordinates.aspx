<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PolarCoordinates.aspx.cs" Inherits="WebMRPO.TheoryPages.PolarCoordinates" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Полярные координаты</title>
    <style>
        #workspace{
            height: 3800px;
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
                     <h2 align="center">Полярные координаты</h2>
                     <p align="justify">Чтобы определить полярную систему координат на плоскости, 
                    достаточно зафиксировать начало координат <i>O</i> и задать единичный координатный вектор <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{i}" title="\overrightarrow{i}" />. 
                    Точка <i>O</i> называется <i>полюсом</i>, а луч  <i>OP</i>, сонаправленный с вектором <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{i}" title="\overrightarrow{i}" /> – <i>полярной осью</i>.</p>
                    <center><img src="../resources/PolarCoordinates/PC1.PNG" width="40%" /></center>
                    <p align="justify">Любая отличная от начала координат точка <i>M</i> плоскости однозначно определяется.
                    своим расстоянием <i>r=|OM|</i> от полюса и ориентированным углом <img src="https://latex.codecogs.com/gif.latex?\varphi" title="\varphi" /> между полярной осью и отрезком <i>OM</i>:</p>
                    <center><img src="../resources/PolarCoordinates/PC2.PNG" width="40%" /></center>
                    <p align="justify">Число <i>r=|OM|</i> называют полярным радиусом точки <i>M</i> или первой полярной координатой. 
                        Расстояние не может быть отрицательным, поэтому полярный радиус любой точки <img src="https://latex.codecogs.com/gif.latex?r\geqslant&space;0" title="r\geqslant 0" />.</p>
                    <p align="justify">Число <img src="https://latex.codecogs.com/gif.latex?\varphi" title="\varphi" /> называют <i>полярным углом данной точки или второй полярной координатой.</i>.
                        Полярный угол стандартно изменяется в пределах <img src="https://latex.codecogs.com/gif.latex?-\pi<&space;\varphi&space;\leqslant&space;\pi" title="-\pi< \varphi \leqslant \pi" />.</p>
                    <p align="justify">Пару <img src="https://latex.codecogs.com/gif.latex?(r,&space;\varphi&space;)" title="(r, \varphi )" /> называют полярными координатами точки <i>M</i>. </p>
                    <p align="justify"><b>Примеры</b></p>
                    <center><img src="../resources/PolarCoordinates/PC3.PNG" width="80%" /></center>
                    <p align="center"><b>Уравнение линии в полярных координатах</b></p>
                    <p><b>Спираль Архимеда.</b> <img src="https://latex.codecogs.com/gif.latex?r(t)=2t,t\in[0;8\pi]" title="r(t)=2t,t\in[0;8\pi]" /></p>
                    <center><img src="../resources/PolarCoordinates/PC4.png" width="40%" /></center>
                    <p><b>Кардиоида</b></p>
                    <center><img src="../resources/PolarCoordinates/PC5.png" width="40%" /></center>
                    <p><b>Сердце.</b> <img src="https://latex.codecogs.com/gif.latex?r(t)=2-2\sin&space;t&plus;\sin&space;\frac{\sqrt{\left&space;|&space;\cos&space;t&space;\right&space;|}}{\sin&space;t&space;&plus;1,4},&space;t\in&space;[0;2\pi]" title="r(t)=2-2\sin t+\sin \frac{\sqrt{\left | \cos t \right |}}{\sin t +1,4}, t\in [0;2\pi]" /></p>
                    <center><img src="../resources/PolarCoordinates/PC6.png" width="40%" /></center>

                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
