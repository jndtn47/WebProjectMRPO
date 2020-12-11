<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Straight.aspx.cs" Inherits="WebMRPO.TheoryPages.Straight" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Уравнение прямой на плоскости. Направляющий вектор прямой. Вектор нормали</title>
    <style>
        #workspace{
            height: 3000px;
        }
        a {
            color: black;
        }
    </style>
</head>
    <script type="text/javascript" src="http://tex.yourequations.com/"></script>
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
                    <div>
                        <%Response.Write(htmlArrayList);%>
                    </div>
                </div>
                <div id="text">
                      <h2 align="center" >Уравнение прямой на плоскости. Направляющий вектор прямой. Вектор нормали</h2>
                      <p align="center"><b>Уравнение прямой с угловым коэффициентом</b></p>
                      <p aling="justify">Всем известный «школьный» вид уравнения прямой <i>y=kx+b</i> называется <i>уравнением прямой с угловым коэффициентом k</i>.
                       Например, если прямая задана уравнением <i>y=2x-2</i>, то её угловой коэффициент: <i>k=2</i>. 
                       Рассмотрим геометрический смысл данного коэффициента и то,  как его значение влияет на расположение прямой:</p>
                      <center><img src="../resources/Straight/Straight1.PNG" width="50%" /></center>
                      <p aling="justify">В курсе геометрии доказывается, что угловой коэффициент прямой равен тангенсу угла между положительным направлением оси <i>OX</i> и данной прямой: <img src="https://latex.codecogs.com/gif.latex?\varphi" title="\varphi" /><i>=tg(k)</i>, причём угол <img src="https://latex.codecogs.com/gif.latex?\varphi" title="\varphi" /> «откручивается» против часовой стрелки.</p>
                     <p aling="justify">При этом возможны следующие случаи:</p>
                     <p aling="justify">1) Если угловой коэффициент отрицателен: <i>k<0</i>, то линия, грубо говоря, идёт сверху вниз. Примеры – «синяя» и «малиновая» прямые на чертеже.</p>
                     <p aling="justify">2) Если угловой коэффициент положителен: <i>k>0</i>, то линия идёт снизу вверх. Примеры – «чёрная» и «красная» прямые на чертеже.</p>
                     <p aling="justify">3) Если угловой коэффициент равен нулю: <i>k=0</i>, <i>y=kx+b</i> то уравнение <i>y=b</i> принимает вид , и соответствующая прямая параллельна оси <i>OX</i>. Пример – «жёлтая» прямая.</p>
                     <p aling="justify">4) Для семейства прямых <i>x=C, где С=const</i>, параллельных оси <i>OY</i> (на чертеже нет примера, кроме самой оси <i>OY</i>), углового коэффициента не существует (тангенс 90 градусов не определён).</p>
                     <p aling="justify"><b>Чем больше угловой коэффициент по модулю, тем круче идёт график прямой. Обратно: чем меньше угловой коэффициент по модулю, тем прямая является более пологой.</b></p>
                     <p aling="justify">В геометрических задачах часто фигурируют несколько прямых, поэтому их удобно как-нибудь обозначать.</p>
                     <p aling="justify"><b>Обозначения:</b> прямые обозначаются маленькими латинскими буквами: <i>a,b,c,d,...</i></p>
                     <p aling="justify"><b>Как составить уравнение прямой с угловым коэффициентом?</b></p>
                     <p aling="justify">Если известна точка <i>M(x<sub>0</sub>,y<sub>0</sub>)</i>, принадлежащая некоторой прямой, и угловой коэффициент <i>k</i> этой прямой, 
                         то уравнение данной прямой выражается формулой: <i>y-y<sub>0</sub>=k(x-x<sub>0</sub>)</i></p>
                    <p aling="justify"><b>Общее уравнение прямой</b></p>
                    <p aling="justify">Общее уравнение прямой имеет вид: <i>Ax+By+c=0</i>где <i>A, B, C</i> – некоторые числа. При этом коэффициенты <i>A, B</i> одновременно не равны нулю, так как уравнение теряет смысл.</p>
                    <p aling="justify">Первый коэффициент (чаще всего ) делаем положительным!</p>
                    <p aling="justify">В аналитической геометрии уравнение прямой почти всегда будет задано в общей форме.</p>
                    <p aling="justify"><b>Направляющий вектор прямой</b></p>
                    <p aling="justify">Вектор, который параллелен прямой, называется направляющим вектором данной прямой. Очевидно, что у любой прямой бесконечно много направляющих векторов, причём все они будут коллинеарны (сонаправлены или нет – не важно).</p>
                    <p aling="justify">Направляющий вектор я буду обозначать следующим образом: <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{p}(p_1,p_2)" title="\overrightarrow{p}(p_1,p_2)" /></p>
                    <p aling="justify"><b>Как составить уравнение прямой по точке и направляющему вектору?</b></p>
                    <p aling="justify">Если известна некоторая точка <i>M(x<sub>0</sub>;</i>, принадлежащая прямой, и направляющий вектор <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{p}(p_1,p_2)" title="\overrightarrow{p}(p_1,p_2)" />
                    этой прямой <img src="https://latex.codecogs.com/gif.latex?(p_1\neq&space;0,p_2\neq&space;0)" title="(p_1\neq 0,p_2\neq 0)" />,
                    то уравнение данной прямой можно составить по формуле: <img src="https://latex.codecogs.com/gif.latex?\frac{x-x_0}{p_1}=\frac{y-y_0}{p_2}" title="\frac{x-x_0}{p_1}=\frac{y-y_0}{p_2}" /></p>
                    <p aling="justify"><b>Как найти направляющий вектор по общему уравнению прямой?</b></p>
                    <p aling="justify">Если прямая задана общим уравнением <i>Ax+Bx+C=0</i>, то вектор <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{p}(-B;A)" title="\overrightarrow{p}(-B;A)" /> является направляющим вектором данной прямой.</p>
                    <p aling="justify"><b>Как составить уравнение прямой по двум точкам?</b></p>
                    <p aling="justify">Если известны две точки <img src="https://latex.codecogs.com/gif.latex?M_1(x_1;&space;y_1),&space;M_2(x_2;&space;y_2)" title="M_1(x_1; y_1), M_2(x_2; y_2)" />, 
                    то уравнение прямой, проходящей через данные точки, можно составить по формуле: <img src="https://latex.codecogs.com/gif.latex?\frac{x-x_1}{x_2-x_1}=\frac{y-y_1}{y_2-y_1}" title="\frac{x-x_1}{x_2-x_1}=\frac{y-y_1}{y_2-y_1}" /></p>
                    <p aling="justify"><b>Вектор нормали прямой (нормальный вектор)</b></p>
                    <p aling="justify">Если прямая задана общим уравнением <i>Ax+By+c=0</i> в прямоугольной системе координат, то вектор <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{n}(A;B)" title="\overrightarrow{n}(A;B)" /> является вектором нормали данной прямой.</p>
                    <p aling="justify"><b>Как составить уравнение прямой по точке и вектору нормали?</b></p>
                    <p aling="justify">Если известна некоторая точка <i>M(x<sub>0</sub>,y<sub>0</sub>)</i>, принадлежащая прямой, и вектор нормали <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{n}(n_1;n_2)" title="\overrightarrow{n}(n_1;n_2)" /> этой прямой, то уравнение данной прямой выражается формулой: <img src="https://latex.codecogs.com/gif.latex?n_1\cdot&space;(x-x_0)&plus;n_2\cdot&space;(y-y_0)=0" title="n_1\cdot (x-x_0)+n_2\cdot (y-y_0)=0" /> </p>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
