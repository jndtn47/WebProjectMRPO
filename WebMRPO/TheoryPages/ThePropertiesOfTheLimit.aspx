<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThePropertiesOfTheLimit.aspx.cs" Inherits="WebMRPO.TheoryPages.ThePropertiesOfTheLimit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Арифметические свойства предела функции</title>
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
                            <h4>Арифметические свойства предела функции</h4>
                            <div>Пусть функции f(x) и g(x) определены в некоторой проколотой окрестности точки<img src="https://latex.codecogs.com/gif.latex?x_{0}" title="x_{0}" />. И пусть существуют конечные пределы:
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=a" title="\lim_{x\rightarrow x_{0}}f(x)=a" />
                                и
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}g(x)=b" title="\lim_{x\rightarrow x_{0}}g(x)=b" />. И пусть С - постоянная (число). Тогда:</div>
                            <div>1)
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}(C*f(x))=C*a" title="\lim_{x\rightarrow x_{0}}(C*f(x))=C*a" /></div>
                            <div>2)
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}(f(x)\pm&space;g(x))=a\pm&space;b" title="\lim_{x\rightarrow x_{0}}(f(x)\pm g(x))=a\pm b" /></div>
                            <div>3)
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}(f(x)*g(x))=a*b" title="\lim_{x\rightarrow x_{0}}(f(x)*g(x))=a*b" /></div>
                            <div>4)
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}(\frac{f(x)}{g(x)})=\frac{a}{b}" title="\lim_{x\rightarrow x_{0}}(\frac{f(x)}{g(x)})=\frac{a}{b}" /></div>
                            <div>5)
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;x_{0}}f(x)=a\rightarrow&space;\lim_{x\rightarrow&space;x_{0}}\left&space;|&space;f(x)&space;\right&space;|=\left&space;|a&space;\right&space;|" title="\lim_{x\rightarrow x_{0}}f(x)=a\rightarrow \lim_{x\rightarrow x_{0}}\left | f(x) \right |=\left |a \right |" /></div>
                        </body>
                    </div>
                </div>
                <div id="footer"></div>
            </div>
        </div>
    </form>
</body>
</html>
