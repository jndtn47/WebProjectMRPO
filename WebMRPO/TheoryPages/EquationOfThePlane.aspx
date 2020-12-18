<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EquationOfThePlane.aspx.cs" Inherits="WebMRPO.TheoryPages.EquationOfThePlane" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Уравнение плоскости.</title>
    <style>
        #workspace{
            height: 5500px;
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
                     <h2 align="center">Уравнение плоскости.</h2>
                     <p align="justify">Схематически плоскость можно нарисовать в виде параллелограмма, что создаёт впечатление пространства:</p>
                     <center><img src="../resources/EquationOfTheOPlane/EquationOfThePlane1.PNG" width="30%" /></center>
                     <p align="justify"><b>Обозначения:</b> плоскости принято обозначать маленькими греческими буквами <img src="https://latex.codecogs.com/gif.latex?\alpha,&space;\beta,&space;\gamma..." title="\alpha, \beta, \gamma..." /></p>
                     <p align="center">Общее уравнение плоскости</p>
                     <p align="justify">Общее уравнение плоскости имеет вид <i>Ax+By+Cz+D=0</i>, где коэффициенты <i>A, B, C</i> одновременно не равны нулю.</p>
                     <p align="justify">В самом общем случае, когда числа <i>A, B, C, D</i> не равны нулю, плоскость пересекает все три координатные оси. Например, так:</p>
                     <center><img src="../resources/EquationOfTheOPlane/EquationOfThePlane2.PNG" width="30%" /></center>
                     <p align="center"><b>Как составить уравнение плоскости по точке и двум неколлинеарным векторам?</b></p>
                     <p align="justify">Рассмотрим точку <img src="https://latex.codecogs.com/gif.latex?M_0(x_0,y_0,z_0)" title="M_0(x_0,y_0,z_0)" /> и два неколлинеарных вектора <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{v}(v_1,v_2,v_3)" title="\overrightarrow{v}(v_1,v_2,v_3)" /> и <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{w}(w_1,w_2,w_3)" title="\overrightarrow{w}(w_1,w_2,w_3)" />. 
                         Уравнение плоскости, которая проходит через точку <img src="https://latex.codecogs.com/gif.latex?M_0" title="M_0" /> параллельно векторам <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{v},\overrightarrow{w}" title="\overrightarrow{v},\overrightarrow{w}" /> выражается формулой:</p>
                     <center><img src="https://latex.codecogs.com/gif.latex?\begin{vmatrix}&space;x-x_0&space;&&space;v_1&space;&&space;w_1\\&space;y-y_0&space;&&space;v_2&space;&&space;w_2\\&space;z-z_0&space;&&space;v_3&space;&&space;w_3&space;\end{vmatrix}=0" title="\begin{vmatrix} x-x_0 & v_1 & w_1\\ y-y_0 & v_2 & w_2\\ z-z_0 & v_3 & w_3 \end{vmatrix}=0" /></center>
                     <p><center><img src="../resources/EquationOfTheOPlane/EquationOfThePlane3.PNG" width="50%" /></center></p>
                     <p align="center"><b>Как составить уравнение плоскости по трём точкам?</b></p>
                     <p align="justify">Уравнение плоскости, проходящей через три различные точки <img src="https://latex.codecogs.com/gif.latex?M_0(x_0,y_0,z_0),&space;M_1(x_1,y_1,z_1),&space;M_2(x_2,y_2,z_2)" title="M_0(x_0,y_0,z_0), M_1(x_1,y_1,z_1), M_2(x_2,y_2,z_2)" />, которые не лежат на одной прямой, можно составить по формуле:</p>
                     <center><img src="https://latex.codecogs.com/gif.latex?\begin{vmatrix}&space;x-x_0&space;&&space;x_1-x_0&space;&&space;x_2-x_0\\&space;y-y_0&space;&&space;y_1-y_0&space;&&space;y_2-y_0\\&space;z-z_0&space;&&space;z_1-z_0&space;&&space;z_2-z_0&space;\end{vmatrix}=0" title="\begin{vmatrix} x-x_0 & x_1-x_0 & x_2-x_0\\ y-y_0 & y_1-y_0 & y_2-y_0\\ z-z_0 & z_1-z_0 & z_2-z_0 \end{vmatrix}=0" /></center>
                     <p><center><img src="../resources/EquationOfTheOPlane/EquationOfThePlane4.PNG" width="50%" /></center></p>
                     <p align="center"><b>Как составить уравнение плоскости по точке и вектору нормали?</b></p>
                     <p align="justify"><i>Вектор нормали плоскости</i> – это вектор, который перпендикулярен данной плоскости.</p>
                     <p><center><img src="../resources/EquationOfTheOPlane/EquationOfThePlane5.PNG" width="30%" /></center></p>
                     <p align="justify">Уравнение плоскости, проходящей через точку <img src="https://latex.codecogs.com/gif.latex?M_0(x_0,y_0,z_0)" title="M_0(x_0,y_0,z_0)" /> перпендикулярно вектору <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{n}(n_1,n_2,n_3)" title="\overrightarrow{n}(n_1,n_2,n_3)" />, выражается формулой:</p>
                     <center><img src="https://latex.codecogs.com/gif.latex?n_1(x-x_0)&plus;n_2(y-y_0)&plus;n_3(z-z_0)=0" title="n_1(x-x_0)+n_2(y-y_0)+n_3(z-z_0)=0" /></center>
                     <p><center><img src="../resources/EquationOfTheOPlane/EquationOfThePlane6.PNG" width="30%" /></center></p>
                     <p align="justify"><b>Расстояние от точки <img src="https://latex.codecogs.com/gif.latex?M_0(x_0,y_0,z_0)" title="M_0(x_0,y_0,z_0)" /> до плоскости</b> <i>Ax+By+Cz+D=0</i> выражается формулой:</p>
                     <center><img src="https://latex.codecogs.com/gif.latex?\rho&space;(M_0,\sigma&space;)=\frac{\left&space;|&space;Ax_0&plus;By_0&plus;Cz_0&plus;D&space;\right&space;|}{\sqrt{A^2&plus;B^2&plus;C^2}}" title="\rho (M_0,\sigma )=\frac{\left | Ax_0+By_0+Cz_0+D \right |}{\sqrt{A^2+B^2+C^2}}" /></center>
                     <p><center><img src="../resources/EquationOfTheOPlane/EquationOfThePlane10.PNG" width="32%" /></center></p>
                     <p><b>Расстояние между двумя параллельными плоскостями</b> 
                    <img src="https://latex.codecogs.com/gif.latex?\sigma&space;_1:&space;Ax_1&plus;By_1&plus;Cz_1&plus;D_1=0," title="\sigma _1: Ax_1+By_1+Cz_1+D_1=0," /> <img src="https://latex.codecogs.com/gif.latex?\sigma&space;_2:&space;Ax_2&plus;By_2&plus;Cz_2&plus;D_2=0" title="\sigma _2: Ax_2+By_2+Cz_2+D_2=0" />
                     выражается формулой: <img src="https://latex.codecogs.com/gif.latex?\rho&space;(\sigma_1;\sigma_2)=\frac{\left&space;|&space;D_2-D_1&space;\right&space;|}{\sqrt{A^2&plus;B^2&plus;C^2}}" title="\rho (\sigma_1;\sigma_2)=\frac{\left | D_2-D_1 \right |}{\sqrt{A^2+B^2+C^2}}" /></p>
                    <p align="center"><img src="../resources/EquationOfTheOPlane/EquationOfThePlane7.PNG" width="30%" /></p>
                    <p align="justify"><b>Две плоскости пересекаются</b> тогда и только тогда, когда их коэффициенты при переменных <i>x, y, z</i> НЕ пропорциональны, то есть НЕ существует такого значения «лямбда», чтобы выполнялись равенства <img src="https://latex.codecogs.com/gif.latex?A_2=\lambda&space;A_1" title="A_2=\lambda A_1" />, <img src="https://latex.codecogs.com/gif.latex?B_2=\lambda&space;B_1" title="B_2=\lambda B_1" />, <img src="https://latex.codecogs.com/gif.latex?C_2=\lambda&space;C_1" title="C_2=\lambda C_1" />.</p>
                    <p align="center"><img src="../resources/EquationOfTheOPlane/EquationOfThePlane8.PNG" width="30%" /></p>
                    <p align="justify">Две пересекающиеся плоскости <img src="https://latex.codecogs.com/gif.latex?\sigma&space;_1:&space;Ax_1&plus;By_1&plus;Cz_1&plus;D_1=0," title="\sigma _1: Ax_1+By_1+Cz_1+D_1=0," /> <img src="https://latex.codecogs.com/gif.latex?\sigma&space;_2:&space;Ax_2&plus;By_2&plus;Cz_2&plus;D_2=0" title="\sigma _2: Ax_2+By_2+Cz_2+D_2=0" /> 
                    образуют четыре двухгранных угла и любой из этих углов называют <i>углом между плоскостями</i>. Обозначим угол между плоскостями через <img src="https://latex.codecogs.com/gif.latex?\varphi&space;=&space;\angle&space;(\sigma_1;&space;\sigma_2)" title="\varphi = \angle (\sigma_1; \sigma_2)" />:</p>
                    <p align="center"><img src="../resources/EquationOfTheOPlane/EquationOfThePlane9.PNG" width="30%" /></p>
                    <p align="justify">Наклон плоскости однозначно определяется её вектором нормали, поэтому угол между плоскостями можно найти через угол между нормальными векторами данных плоскостей.</p> 
                    <p align="center"><img src="../resources/EquationOfTheOPlane/EquationOfThePlane9.PNG" width="30%" /></p>
                    <p align="justify">А угол между векторами рассчитывается с помощью обыденной формулы: <img src="https://latex.codecogs.com/gif.latex?\cos&space;\varphi&space;=\frac{\overrightarrow{n_1}\overrightarrow{n_2}}{\left&space;|&space;\overrightarrow{n_1}\right&space;|\left&space;|&space;\overrightarrow{n_2}&space;\right&space;|}" title="\cos \varphi =\frac{\overrightarrow{n_1}\overrightarrow{n_2}}{\left | \overrightarrow{n_1}\right |\left | \overrightarrow{n_2} \right |}" /></p>
                    <p align="justify">Распишем формулу в коэффициентах: <img src="https://latex.codecogs.com/gif.latex?\cos&space;\varphi&space;=\frac{A_1A_2&plus;B_1B_2&plus;C_1C_2}{\sqrt{A_1^2&plus;B_1^2&plus;C_1^2}\cdot&space;\sqrt{A_2^2&plus;B_2^2&plus;C_2^2}}" title="\cos \varphi =\frac{A_1A_2+B_1B_2+C_1C_2}{\sqrt{A_1^2+B_1^2+C_1^2}\cdot \sqrt{A_2^2+B_2^2+C_2^2}}" /></p>

                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
