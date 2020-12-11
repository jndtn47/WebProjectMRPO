<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StraightLineInSpace.aspx.cs" Inherits="WebMRPO.TheoryPages.StraightLineInSpace" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Прямая в пространстве</title>
    <style>
        #workspace{
            height: 1500px;
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
                     <h2 align="center">Прямая в пространстве</h2>
                     <p align="center"><b>Канонические уравнения прямой</b></p>
                     <p align="justify">Если известна некоторая точка пространства <img src="https://latex.codecogs.com/gif.latex?M(x_0,y_0,z_0)" title="M(x_0,y_0,z_0)" />, 
                         принадлежащая прямой, и направляющий вектор <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{p}(p_1,p_2,p_3)" title="\overrightarrow{p}(p_1,p_2,p_3)" /> данной прямой, то  канонические уравнения этой прямой выражаются формулами:</p>                     
                     <p align="center"><img src="https://latex.codecogs.com/gif.latex?\frac{x-x_0}{p_1}=\frac{y-y_0}{p_2}=\frac{y-y_0}{p_3}" title="\frac{x-x_0}{p_1}=\frac{y-y_0}{p_2}=\frac{y-y_0}{p_3}" /></p>
                     <p align="center"><b>Как составить уравнения пространственной прямой по двум точкам?</b></p>
                     <p align="justify">Если известны две точки пространства <img src="https://latex.codecogs.com/gif.latex?M_1(x_1,y_1,z_1)" title="M_1(x_1,y_1,z_1)" />, <img src="https://latex.codecogs.com/gif.latex?M_2(x_2,y_2,z_2)" title="M_2(x_2,y_2,z_2)" />, то уравнения прямой, проходящей через данные точки, выражаются формулами:</p>
                     <p align="center"><img src="https://latex.codecogs.com/gif.latex?\frac{x-x_1}{x_2-x_1}=\frac{y-y_1}{y_2-y_1}=\frac{z-z_1}{z_2-z_1}" title="\frac{x-x_1}{x_2-x_1}=\frac{y-y_1}{y_2-y_1}=\frac{z-z_1}{z_2-z_1}" /></p>
                     <p align="center"><b>Параметрические уравнения прямой в пространстве</b></p>
                     <p align="justify">Если известна точка <img src="https://latex.codecogs.com/gif.latex?M(x_0,y_0,z_0)" title="M(x_0,y_0,z_0)" />, 
                     принадлежащая прямой, и направляющий вектор <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{p}(p_1,p_2,p_3)" title="\overrightarrow{p}(p_1,p_2,p_3)" /> данной прямой, то параметрические уравнения этой прямой задаются системой:</p>
                     <p align="center"><img src="https://latex.codecogs.com/gif.latex?\left\{\begin{matrix}&space;x=p_1t&plus;x_0\\&space;y=p_2t&plus;y_0\\&space;z=p_3t&plus;z_0&space;\end{matrix}\right." title="\left\{\begin{matrix} x=p_1t+x_0\\ y=p_2t+y_0\\ z=p_3t+z_0 \end{matrix}\right." /></p>



                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
