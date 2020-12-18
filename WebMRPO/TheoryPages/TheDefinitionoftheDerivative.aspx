<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TheDefinitionoftheDerivative.aspx.cs" Inherits="WebMRPO.TheoryPages.TheDefinitionoftheDerivative" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Определение производной</title>
    <style>
        #workspace{
            height: 1500px;
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
<body>
    <form id="form1" runat="server">
        <div>
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
                        <h4>Определение производной</h4>
                        <body>
                            <div>Пусть есть функция f(x), заданная в некотором интервале (a, b). Точки х и х0 принадлежат этому интервалу. При изменении х меняется и сама функция. <em><span style="color: chocolate">Изменение аргумента</span></em> – разность его значений х-х0. Эта разность записывается как дельта икс и называется <em><span style="color: chocolate">приращением аргумента</span></em>. Изменением или <em><span style="color: chocolate">приращением функции </span></em>называется разность значений функции в двух точках. Определение производной :</div>
                            <div><em><span style="color: chocolate">Производная функции в точке</span></em> – предел отношения приращения функции в данной точке к приращению аргумента, когда последнее стремится к нулю.</div>
                            <div></div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?{f}'({x}_0)=\lim_{\Delta&space;x\rightarrow&space;0}\frac{f(x_{0}&plus;\Delta&space;x)-f(x_{0})}{\Delta&space;x}" title="{f}'({x}_0)=\lim_{\Delta x\rightarrow 0}\frac{f(x_{0}+\Delta x)-f(x_{0})}{\Delta x}" /></div>
                            <div>или</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?{y}'({x}_0)=\lim_{\Delta&space;x\rightarrow&space;0}\frac{\Delta&space;y}{\Delta&space;x}" title="{y}'({x}_0)=\lim_{\Delta x\rightarrow 0}\frac{\Delta y}{\Delta x}" /></div>
                        </body>
                    </div>
                </div>
                <div id="footer"></div>
            </div>
    </form>
</body>
</html>
