<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Higher-orderDerivatives.aspx.cs" Inherits="WebMRPO.TheoryPages.Higher_orderDerivatives" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Производные и дифференциалы высших порядков</title>
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
                            <h4>Производные и дифференциалы высших порядков</h4>
                            <div>Пусть функция f(x) определена и дифференцируема на некотором промежутке X, тогда ее производная
                                <img src="https://latex.codecogs.com/gif.latex?f'(x)" title="f'(x)" />
                                также является функцией от x на этом промежутке. Если
                                <img src="https://latex.codecogs.com/gif.latex?f'(x)" title="f'(x)" />
                                имеет производную на промежутке X, то эта производная называется <span style="color: chocolate">производной второго порядка</span></em> функции y = f(x) и обозначается:
                                <img src="https://latex.codecogs.com/gif.latex?y''" title="y''" />
                                или
                                <img src="https://latex.codecogs.com/gif.latex?f''(x)" title="f''(x)" />.</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?f''(x)=(f'(x))'" title="f''(x)=(f'(x))'" /></div>
                            <div>Производная от производной второго порядка называется <span style="color: chocolate">производной третьего порядка</span></em> и обозначается:
                                <img src="https://latex.codecogs.com/gif.latex?y'''" title="y'''" />
                                или
                                <img src="https://latex.codecogs.com/gif.latex?f'''(x)" title="f'''(x)" />.</div>
                            <div>Вообще, производной n-го порядка называется производная от производной (n – 1)-го порядка и обозначается:
                                <img src="https://latex.codecogs.com/gif.latex?y^{(n)}" title="y^{(n)}" />
                                или
                                <img src="https://latex.codecogs.com/gif.latex?f^{(n)}(x)" title="f^{(n)}(x)" />. Итак,
                                <img src="https://latex.codecogs.com/gif.latex?f^{(n)}(x)=(f^{(n-1)}(x))'" title="f^{(n)}(x)=(f^{(n-1)}(x))'" />.</div>
                            <div>Производные y", y"", … называются <span style="color: chocolate">производными высших порядков</span></em></div>

                        </body>
                    </div>
                </div>
                <div id="footer"></div>
            </div>
        </div>
    </form>
</body>
</html>
