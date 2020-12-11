<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LimitTheoremForComplexFunction.aspx.cs" Inherits="WebMRPO.TheoryPages.LimitTheoremForComplexFunction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Предел сложной функциикций</title>
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
                        <body>
                            <h4>Предел сложной функциикций</h4>
                            <div><b><span style="color: brown">Теорема</span></b></div>
                            <div>Пусть функции t=g(x) и y=f(t) имеют пределы:</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}g(x)=t_{0}" title="\lim_{x\rightarrow x_{0}}g(x)=t_{0}" />;</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{t\rightarrow&space;t_{0}}f(t)=y_{0}" title="\lim_{t\rightarrow t_{0}}f(t)=y_{0}" />.</div>
                            <div>И пусть существует такая проколотая окрестность
                                <img src="https://latex.codecogs.com/gif.latex?\dot{U}(x_{0})" title="\dot{U}(x_{0})" />
                                точки x0, на которой</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?g(x)\neq&space;t_{0}" title="g(x)\neq t_{0}" />; x принадлежит
                                <img src="https://latex.codecogs.com/gif.latex?\dot{U}(x_{0})" title="\dot{U}(x_{0})" />.</div>
                            <div>Тогда существует предел сложной функции f(g(x)), и он равен y0:</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{t\rightarrow&space;x_{0}}f(g(x))=y_{0}" title="\lim_{t\rightarrow x_{0}}f(g(x))=y_{0}" /></div>
                            <div>Здесь
                                <img src="https://latex.codecogs.com/gif.latex?x_{0},t_{0},y_{0}" title="x_{0},t_{0},y_{0}" />
                                – конечные или бесконечно удаленные точки:
                                <img src="https://latex.codecogs.com/gif.latex?x_{0},t_{0},y_{0}" title="x_{0},t_{0},y_{0}" />
                                принадлежат множеству действительным числам. Окрестности и соответствующие им пределы могут быть как двусторонние, так и односторонние.</div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div>Теорема о пределе сложной функции применяется в том случае, когда функция f(t) не определена в точке t0 или имеет значение, отличное от предельного y0. Для применения этой теоремы, должна существовать проколотая окрестность
                                <img src="https://latex.codecogs.com/gif.latex?\dot{U}(x_{0})" title="\dot{U}(x_{0})" />
                                точки x0, на которой множество значений функции g не содержит точку t0.</div>

                        </body>
                    </div>
                </div>
                <div id="footer"></div>
            </div>
        </div>
    </form>
</body>
</html>
