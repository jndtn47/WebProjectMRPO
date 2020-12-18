<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ellipse.aspx.cs" Inherits="WebMRPO.TheoryPages.Ellipse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Линии второго порядка. Эллипс и его каноническое уравнение. Окружность.</title>
    <style>
        #workspace{
            height: 2200px;
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
                    <h2 align="center">Линии второго порядка. Эллипс и его каноническое уравнение. Окружность.</h2>
                    <p align="center"><b>Линии второго порядка</b></p>
                    <p align="justify"><i>Алгебраической линией (кривой) второго порядка</i> называется геометрическое место точек плоскости,
                        которое в декартовой системе координат <i>Oxy</i> задается уравнением второй степени относительно текущих координат.</p>
                    <p align="center"><img src="https://latex.codecogs.com/gif.latex?Ax^{2}&plus;2Bxy&plus;Cy^{2}&plus;2Dx&plus;2Ey&plus;F=0" title="Ax^{2}+2Bxy+Cy^{2}+2Dx+2Ey+F=0" /></p>
                    <p align="justify">Коэффициенты этого уравнения - действительные числа, но по крайней мере одно из чисел A, B, или C отлично от нуля.</p>
                    Окружность, ее каноническое уравнение.
                    <p align="center"><b>Окружность, ее каноническое уравнение.</b></p>
                    <p align="justify"><i>Окружностью</i> называется множество всех точек плоскости, равноудаленных от заданной точки, называемой <i>центром</i></p>
                    <p align="justify">Пусть точка <i>M(x,y)</i>, принадлежит окружности, тогда по определению |M<sub>0</sub>M|=R, т.е.</p>
                    <p align="justify"><img src="https://latex.codecogs.com/gif.latex?(x-x_0)^{2}&plus;(y-y_0)^{2}=R^{2}" title="(x-x_0)^{2}+(y-y_0)^{2}=R^{2}" /></p>
                    <p align="justify">Данное уровнение, называется каноническим уравнением окружности с центром в точке<i>M(x<sub>0</sub>, y<sub>0</sub>)</i>, и радиусом R .</p>
                    <p align="center"><img src="../resources/Ellipse/Ellipse.PNG" /></p>
                    <p align="center"><b>Каноническое уравнение эллипса.</b></p>
                    <p align="justify"><i>Эллипсом</i> называется множество всех точек плоскости, сумма расстояний от каждой из которых до двух данных точек этой плоскости, называемых <i>фокусами</i>, есть величина постоянная, большая, чем расстояние между фокусами.</p>
                    <p align="center"><img src="../resources/Ellipse/Ellipse1.PNG" width="50%" /></p>
                    <p align="justify">Каноническое уравнение эллипса имеет вид:</p>
                    <p align="justify"><img src="https://latex.codecogs.com/gif.latex?\frac{x^{2}}{a^{2}}&plus;\frac{y^{2}}{b^{2}}=1" title="\frac{x^{2}}{a^{2}}+\frac{y^{2}}{b^{2}}=1" /></p>
                    <p align="justify">где <i>a и b (a > b)</i> - длины полуосей, т. е. половины длин отрезков, отсекаемых эллипсом на осях координат.</p>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
