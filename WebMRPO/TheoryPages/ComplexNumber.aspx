<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComplexNumber.aspx.cs" Inherits="WebMRPO.TheoryPages.ComplexNumber" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Комплексные числа</title>
    <style>
        #workspace{
            height: 2000px;
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
                     <h1 align="center">Комплексные числа</h1>
                     <p><b>Определение 1.</b> <i>Комплексное число</i> - это упорядоченная пара вещественных, или символ</p> <p>z = x + iy, где i - мнимая единица: <img src="https://latex.codecogs.com/gif.latex?i^2" title="i^2" />= −1; x называется действительной, а y - мнимой частью z.</p>
                     <p align="justify">Это определение становится содержательным, если сказать, что можно делать с комплексными числами, точнее, определить арифметические действия над ними.</p>
                     <p align="justify"><b>Определение 2</b>Сложение комплексных чисел происходит покомпонентно, а умножение - по распределительному закону, с учетом равенства <img src="https://latex.codecogs.com/gif.latex?i^2" title="i^2" /> = −1. Точнее, пусть z<sub>1</sub> = x<sub>1</sub> + y<sub>1</sub>, z<sub>2</sub> = x<sub>2</sub> + y<sub>2</sub>. Тогда</p>
                     <p align="center"><img src="https://latex.codecogs.com/gif.latex?z_1&plus;z_2=(x_1&plus;x_2)&plus;i(y_1&plus;y_2)" title="z_1+z_2=(x_1+x_2)+i(y_1+y_2)" /></p>
                     <p align="center"><img src="https://latex.codecogs.com/gif.latex?z_1z_2=(x_1x_2-y_1y_2)&plus;i(x_1x_2&plus;y_1y_2)" title="z_1z_2=(x_1x_2-y_1y_2)+i(x_1x_2+y_1y_2)" /></p>
                     <p align="center"><b>Формула Муавра.</b></p>
                     <p align="justify">При возведении комплексного числа в степень n его модуль возводится в степень n, а аргумент умножается на n: если |z| = r, arg z = ϕ, то
                     <p align="center"><img src="https://latex.codecogs.com/gif.latex?\left&space;|&space;z^n&space;\right&space;|=r^n" title="\left | z^n \right |=r^n" />, <img src="https://latex.codecogs.com/gif.latex?\arg&space;z^n=n\varphi" title="\arg z^n=n\varphi" /></p>
                     <p align="center"><img src="https://latex.codecogs.com/gif.latex?z^n=r^n(\cos&space;n\varphi&space;&plus;i\sin&space;n\varphi&space;)" title="z^n=r^n(\cos n\varphi +i\sin n\varphi )" /></p>
                     <p align="justify">Функции cos nϕ и sin nϕ являются многочленами от cos ϕ и sin ϕ; они находятся по формуле бинома из формулы Муавра:</p>
                     <p align="center"><img src="https://latex.codecogs.com/gif.latex?\cos&space;n\varphi&space;&plus;i\sin&space;n\varphi=(\cos&space;\varphi&space;&plus;i\sin&space;\varphi&space;)^n" title="\cos n\varphi +i\sin n\varphi=(\cos \varphi +i\sin \varphi )^n" /></p>
                     <p align="center"><img src="../resources/ComplexNumber/ComplexNumber1.jpg" width="100%" /></p>
                     
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
