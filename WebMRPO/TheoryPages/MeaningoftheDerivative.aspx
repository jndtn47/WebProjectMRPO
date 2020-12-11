<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MeaningoftheDerivative.aspx.cs" Inherits="WebMRPO.TheoryPages.MeaningoftheDerivative" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Геометрический и физический смысл производной</title>
    <style>
        #workspace{
            height: 1500px;
        }
        a {
            color: black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                        <h4>Геометрический и физический смысл производной</h4>
                        <body>
                            <div><span style="color: chocolate">Геометрический смысл производной</span></em>: производная от функции в точке равна тангенсу угла между осью OX и касательной к графику функции в данной точке.</div>
                            <div>
                                <img src="../resources/MeaningoftheDerivative/i.jpg" width="450" height="280" />
                            </div>
                            <div></div>
                            <div><span style="color: chocolate">Физический смысл производной</span></em>: производная пути по времени равна скорости прямолинейного движения.</div>
                            <div>
                                Действительно, еще со школьных времен всем известно, что скорость – это частное пути x=f(t) и времени t. Средняя скорость за некоторый промежуток времени:
                            </div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?v_{cp}=\frac{\Delta&space;x}{\Delta&space;t}=\frac{f(t_{0}&plus;\Delta&space;t)-f(t_{0})}{\Delta&space;t}" title="v_{cp}=\frac{\Delta x}{\Delta t}=\frac{f(t_{0}+\Delta t)-f(t_{0})}{\Delta t}" /></div>
                            <div>Чтобы узнать скорость движения в момент времени t0 нужно вычислить предел:</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?v_{t=t_{0}}=\lim_{\Delta&space;t\rightarrow&space;0}\frac{\Delta&space;x}{\Delta&space;t}=\lim_{\Delta&space;t\rightarrow&space;0}\frac{(f(t_{0})&plus;\Delta&space;t)-f(t_{0})}{\Delta&space;t}" title="v_{t=t_{0}}=\lim_{\Delta t\rightarrow 0}\frac{\Delta x}{\Delta t}=\lim_{\Delta t\rightarrow 0}\frac{(f(t_{0})+\Delta t)-f(t_{0})}{\Delta t}" />
                            </div>
                        </body>
                    </div>
                </div>
                <div id="footer"></div>
            </div>
    </form>
</body>
</html>
