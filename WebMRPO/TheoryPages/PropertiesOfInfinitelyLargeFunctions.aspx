<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PropertiesOfInfinitelyLargeFunctions.aspx.cs" Inherits="WebMRPO.TheoryPages.PropertiesOfInfinitelyLargeFunctions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title>Свойства бесконечно больших функций</title>
    <style>
        #workspace{
            height: 2500px;
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
                            <h4>Свойства бесконечно больших функций</h4>
                            <div>Сумма или разность ограниченной функции, на некоторой проколотой окрестности точки x0, и бесконечно большой функции при
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=0" title="\lim_{x\rightarrow x_{0}}f(x)=0" />
                                является бесконечно большой функцией при
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=0" title="\lim_{x\rightarrow x_{0}}f(x)=0" />.</div>
                            <div>Если функция f(x) является бесконечно большой при
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=0" title="\lim_{x\rightarrow x_{0}}f(x)=0" />, а функция g(x) – ограничена, на некоторой проколотой окрестности точки x0, то
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}\frac{g(x)}{f(x)}=0" title="\lim_{x\rightarrow x_{0}}\frac{g(x)}{f(x)}=0" />.</div>
                            <div>Если функция f(x), на некоторой проколотой окрестности точки x0, удовлетворяет неравенству:
                                <img src="https://latex.codecogs.com/gif.latex?\left&space;|&space;f(x)&space;\right&space;|\geq&space;M>&space;0" title="\left | f(x) \right |\geq M> 0" />, а функция
                                <img src="https://latex.codecogs.com/gif.latex?\alpha&space;(x)" title="\alpha (x)" />
                                является бесконечно малой при
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=0" title="\lim_{x\rightarrow x_{0}}f(x)=0" />:</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}\alpha&space;(x)=0" title="\lim_{x\rightarrow x_{0}}\alpha (x)=0" />, и
                                <img src="https://latex.codecogs.com/gif.latex?\alpha&space;(x)\neq&space;0" title="\alpha (x)\neq 0" />
                                (на некоторой проколотой окрестности точки x0), то </div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}\frac{f(x)}{\alpha&space;(x)}=\propto" title="\lim_{x\rightarrow x_{0}}\frac{f(x)}{\alpha (x)}=\propto" /></div>
                            <div></div>
                            <div></div>
                        </body>
                    </div>
                </div>
                <div id="footer"></div>
            </div>
        </div>
    </form>
</body>
</html>
