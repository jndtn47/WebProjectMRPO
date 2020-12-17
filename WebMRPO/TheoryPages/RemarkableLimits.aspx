<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemarkableLimits.aspx.cs" Inherits="WebMRPO.TheoryPages.RemarkableLimits" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Замечательные пределы</title>
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
                        <h4>Замечательные пределы</h4>
                        <body>
                            <div>Понятие «замечательные пределы» используется в математике для объяснения известных тождеств со взятием предела.</div>
                            <div>
                                <span style="color: chocolate">Первый замечательный предел</span></em>
                            </div>
                            <div><b><span style="color: brown">Лемма.</span></b></div>
                            <div>Предел отношения синуса к его аргументу равняется единице в случае стремления аргумента к 0.</div>
                            <div>Данная лемма служит основой для вычисления производных тригонометрических функций, которые содержат синус, арксинус, тангенс и арктангенс.</div>
                            <div>В записи тождество математического анализа имеет следующий вид:</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;0}\frac{sin(x)}{x}=1" title="\lim_{x\rightarrow 0}\frac{sin(x)}{x}=1" /></div>
                            <div>Второй замечательный предел</div>
                            <div><em><span style="color: chocolate">Определение. </span></em>Предел, лежащий в основе нахождения производных показательной функции и логарифма, называется <span style="color: chocolate">вторым замечательным.</span></em></div>
                            <div>Рассматриваемую лемму можно записать в виде формулы:</div>
                            <div>
                                <img src="https://latex.codecogs.com/gif.latex?\lim_{x\rightarrow&space;\propto&space;}(1&plus;\frac{1}{x})^{x}=e" title="\lim_{x\rightarrow \propto }(1+\frac{1}{x})^{x}=e" /></div>
                            <div>В данном случае х — действительное число; e — число Эйлера.</div>
                            <div>Некоторые следствия 1 и 2 замечательных пределов:</div>
                            <div>
                                <img src="../resources/Limits/wQL8Kd_dkn8.jpg" width="450" height="320" /></div>
                            <div>
                                <img src="../resources/Limits/WZYpWDZbroA.jpg" width="450" height="280" /></div>
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
