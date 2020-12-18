<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InverseFunction.aspx.cs" Inherits="WebMRPO.TheoryPages.InverseFunction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Производная обратной функции</title>
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
                        <h4>Производная обратной функции</h4>
                        <body>
                            <div>Если некоторая функция g в каждой точке х области значений обратимой функции f принимает значение у такое, что f(y)=x, то говорят, что функция g - есть <span style="color: chocolate">обратная к f функция</span></em>. Пусть дан график некоторой обратимой функции f. Для того, чтобы построить график обратной функции, можно пользоваться следующим утверждением: график функции f и обратной к ней функции g будут симметричны относительно прямой, заданной уравнением y=x.</div>
                            <div>
                                <img src="../resources/InverseFunction/funkcia_obr.png" width="450" height="280" />
                            </div>
                            <div>Если функция g является обратной к функции f, то функция g будет являться <span style="color: chocolate">обратимой функцией</span></em>. А функция f будет обратной к функции g. Обычно говорят, что две функции f и g взаимно обратные друг к другу.</div>
                            <div><b><span style="color: brown">Теорема </span></b></div>
                            <div>Пусть y=f(x) и x=φ(y) - взаимно обратные функции. Тогда если функция y=f(x) имеет не равную нулю производную f‘(x), то обратная функция имеет производную φ‘(y).
                                <img src="https://latex.codecogs.com/gif.latex?\varphi'(y)=\frac{1}{f'(y)}" title="\varphi'(y)=\frac{1}{f'(y)}" />
                                или
                                <img src="https://latex.codecogs.com/gif.latex?x_{y}'=\frac{1}{y_{x}'}" title="x_{y}'=\frac{1}{y_{x}'}" />
                            </div>
                            <div>Поскольку y=f(x) и x=φ(y) - взаимно обратные функции, то x=φ(f(x)). Применяя дифференцирование, получаем: 1=ϕ′(y)f′(x)</div>

                        </body>
                    </div>
                </div>
                <div id="footer"></div>
            </div>
        </div>
    </form>
</body>
</html>
