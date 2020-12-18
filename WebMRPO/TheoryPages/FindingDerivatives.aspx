<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FindingDerivatives.aspx.cs" Inherits="WebMRPO.TheoryPages.FindingDerivatives" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Правила нахождения производных</title>
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
                        <h4>Правила нахождения производных</h4>
                        <body>
                            <div>Процесс нахождения производной называется <span style="color: chocolate">дифференцированием</span></em>. Функция, которая имеет производную в данной точке, называется <span style="color: chocolate">дифференцируемой</span></em>.</div>
                            <div>Как найти производную? Согласно определению, нужно составить отношение приращения функции и аргумента, а затем вычислить предел при стремящемся к нулю приращении аргумента. Конечно, можно вычислять все производные так, но на практике это слишком долгий путь. Ниже приведем таблицу с производными элементарных функций.</div>
                            <div>
                                <img src="../resources/FindingDerivatives/fm10.png" width="450" height="280" />
                            </div>
                            <div>Рассмотрим некоторые правила вычисления производных:</div>
                            <ins>1 правило. Выносим константу</ins>
                            <div>Константу можно вынести за знак производной. Более того - это нужно делать. При решении примеров по математике возьмите за правило - если можете упростить выражение, обязательно упрощайте.</div>
                            <ins>2 правило. Производная суммы функций</ins>
                            <div>Производная суммы двух функций равна сумме производных этих функций. То же самое справедливо и для производной разности функций.</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?({u\pm&space;v})'={u}'\pm&space;{v}'" title="({u\pm v})'={u}'\pm {v}'" /></div>
                            <ins>3 правило. Производная произведения функций</ins>
                            <div>Производная произведения двух дифференцируемых функций вычисляется по формуле:</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?({uv})'={u}'v&plus;&space;{v}'u" title="({uv})'={u}'v+ {v}'u" /></div>
                            <ins>4 правило. Производная частного двух функций</ins>
                            <div>Формула для определения производной от частного двух функций:</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?({\frac{u}{v}})'=\frac{u'v-uv'}{v^{2}}" title="({\frac{u}{v}})'=\frac{u'v-uv'}{v^{2}}" /></div>
                        </body>
                    </div>
                </div>
                <div id="footer"></div>
            </div>
        </div>
    </form>
</body>
</html>
