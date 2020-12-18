<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComplexFunction.aspx.cs" Inherits="WebMRPO.TheoryPages.ComplexFunction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Производная сложной функции</title>
    <style>
        #workspace {
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
                    <div id="imgH">
                        <img src="../resources/HeaderImg.png" width="700" height="80" /></div>
                    <asp:Button ID="btnAuthorization" runat="server" Text="Войти" PostBackUrl="~/AuthorizationPage.aspx" class="buttonMenu buttonHeader" />
                    <asp:Button ID="btnRegistration" runat="server" Text="Зарегистрироваться" PostBackUrl="~/RegistrationPage.aspx" class="buttonMenu buttonHeader" />
                </div>
                <div id="menu">
                    <hr />
                    <asp:Button ID="Button1" runat="server" Text="Главная" class="buttonMenu" PostBackUrl="~/MainWindow.aspx" />
                    <asp:Button ID="Button2" runat="server" Text="Теория" class="buttonMenu" PostBackUrl="~/TheoryPages/1.TheConceptOfIndefiniteIntegral.aspx" />
                    <asp:Button ID="Button3" runat="server" Text="Программы" class="buttonMenu" />
                    <asp:Button ID="Button4" runat="server" Text="О проекте" class="buttonMenu" PostBackUrl="~/About.aspx" />
                </div>
                <div id="content">
                    <div id="theorylist">
                        <%Response.Write(htmlArrayList);%>
                        <div>
                        </div>
                    </div>
                    <div id="text">
                        <h4>Производная сложной функции</h4>

                        <div><span style="color: chocolate">Сложной функцией</span></em> считается такая функция, у которой аргумент также является функцией.</div>
                        <div>Обозначается это таким образом: f(g(x)). Имеем, что функция g(x) считается аргументом f(g(x)).</div>
                        <div>
                            Степень вложенности определено любым натуральным числом и записывается как
                                <img src="https://latex.codecogs.com/gif.latex?y=f(f_{1}(f_{2}(f_{3})(...(f_{n}(x))))))" title="y=f(f_{1}(f_{2}(f_{3})(...(f_{n}(x))))))" />.
                        </div>
                        <div>Понятие композиция функции относится к количеству вложенных функций по условию задачи. Для решения используется формула нахождения производной сложной функции вида:</div>
                        <div>
                            <img src="https://latex.codecogs.com/gif.latex?(f(g(x)))'=f'(g(x))*g'(x)" title="(f(g(x)))'=f'(g(x))*g'(x)" />
                        </div>
</body>
</div>
                </div>
                <div id="footer"></div>
</div>
        </div>
    </form>
</body>
</html>
