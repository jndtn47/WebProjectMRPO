<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RelationshipBetweenLargeandSmallFunction.aspx.cs" Inherits="WebMRPO.TheoryPages.RelationshipBetweenLargeandSmallFunction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Связь между бесконечно большими и бесконечно малыми функциями</title>
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
                            <h4>Связь между бесконечно большими и бесконечно малыми функциями</h4>
                            <div>Если функция f(x) являются бесконечно большой при
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=0" title="\lim_{x\rightarrow x_{0}}f(x)=0" />, то функция
                                <img src="https://latex.codecogs.com/gif.latex?\frac{1}{f(x)}" title="\frac{1}{f(x)}" />
                                является <span style="color: chocolate">бесконечно малой</span></em> при
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=0" title="\lim_{x\rightarrow x_{0}}f(x)=0" />.</div>
                            <div>Если функция
                                <img src="https://latex.codecogs.com/gif.latex?\alpha&space;(x)" title="\alpha (x)" />
                                являются бесконечно малой при
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=0" title="\lim_{x\rightarrow x_{0}}f(x)=0" />, и
                                <img src="https://latex.codecogs.com/gif.latex?\alpha&space;(x)\neq&space;0" title="\alpha (x)\neq 0" />, то функция
                                <img src="https://latex.codecogs.com/gif.latex?\frac{1}{\alpha&space;(x)}" title="\frac{1}{\alpha (x)}" />
                                является <span style="color: chocolate">бесконечно большой</span></em> при
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=0" title="\lim_{x\rightarrow x_{0}}f(x)=0" />.</div>
                            <div>Связь между бесконечно малой и бесконечно большой функцией можно выразить символическим образом:</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?\frac{1}{\propto&space;}=0,&space;\frac{1}{0}=\propto" title="\frac{1}{\propto }=0, \frac{1}{0}=\propto" /></div>
                            <div>Если бесконечно малая функция имеет определенный знак при
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=0" title="\lim_{x\rightarrow x_{0}}f(x)=0" />, то есть положительна (или отрицательна) на некоторой проколотой окрестности точки x0, то этот факт можно выразить так:</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}\alpha&space;(x)=&plus;0&space;(\lim_{x\rightarrow&space;x_{0}}\alpha&space;(x)=-0)" title="\lim_{x\rightarrow x_{0}}\alpha (x)=+0 (\lim_{x\rightarrow x_{0}}\alpha (x)=-0)" /></div>
                            <div>Точно также если бесконечно большая функция имеет определенный знак при
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=0" title="\lim_{x\rightarrow x_{0}}f(x)=0" />, то пишут:</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=&plus;\propto(\lim_{x\rightarrow&space;x_{0}}f(x)=-\propto)" title="\lim_{x\rightarrow x_{0}}f(x)=+\propto(\lim_{x\rightarrow x_{0}}f(x)=-\propto)" /></div>
                            <div>Тогда символическую связь между бесконечно малыми и бесконечно большими функциями можно дополнить следующими соотношениями:</div>
                            <div>
                                <img src="../resources/RelationShip/Снимок.PNG" /></div>
                        </body>
                    </div>
                </div>
                <div id="footer"></div>
            </div>
        </div>
    </form>
</body>
</html>
