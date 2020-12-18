<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parabola.aspx.cs" Inherits="WebMRPO.TheoryPages.Parabola" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Парабола и её каноническое уравнение</title>
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
                     <h2 align="center">Парабола и её каноническое уравнение</h2>
                     <p align="justify"><i>Параболой </i> называется множество точек плоскости, равноудаленных от данной точки, называемой <i>фокусом</i>, и данной прямой, называемой <i>директрисой.</i></p>
                     <p align="justify">Если директрисой параболы является прямая:</p>
                     <p align="justify"><img src="https://latex.codecogs.com/gif.latex?D:&space;x=-\frac{p}{2}" title="D: x=-\frac{p}{2}" />, 
                         а фокусом - точка <img src="https://latex.codecogs.com/gif.latex?F(\frac{p}{2};0)" title="F(\frac{p}{2};0)" />, то уравнение параболы имеет вид: <img src="https://latex.codecogs.com/gif.latex?y^2=2px" title="y^2=2px" />, где <img src="https://latex.codecogs.com/gif.latex?p>0" title="p>0" /></p>
                     <center><img src="../resources/Parabola/Parabola1.PNG" width="40%" /></center>
                     <p align="justify"><u>Пример.</u> Построить параболу <img src="https://latex.codecogs.com/gif.latex?y^2=4x" title="y^2=4x" />.</p>
                    <p align="justify"><b>Решение:</b> вершина известна, найдём дополнительные точки. Уравнение <img src="https://latex.codecogs.com/gif.latex?y=\sqrt{4}=2\sqrt{2}" title="y=\sqrt{4}=2\sqrt{2}" /> определяет верхнюю дугу параболы, уравнение <img src="https://latex.codecogs.com/gif.latex?y=-2\sqrt{2}" title="y=-2\sqrt{2}" /> – нижнюю дугу.</p>
                     <center><img src="../resources/Parabola/Parabola2.PNG" width="40%" /></center>
                     
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
