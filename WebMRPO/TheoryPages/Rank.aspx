<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rank.aspx.cs" Inherits="WebMRPO.TheoryPages.Rank" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ранг матрицы</title>
    <style>
        #workspace{
            height: 3200px;
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
    <script type="text/javascript" src="http://tex.yourequations.com/"></script>
<body>
    <form id="form1" runat="server">
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
                    <h2 align="center"><b>Ранг матрицы</b></h2>
                    <p align="justify">Ранг матрицы — наивысший порядок матрицы, отличный от нуля.</p>
                    <p align="justify">Обозначение: Rank (A), Rg (A), Rang (A).</p>
                    <p align="justify">Из определения ранга матрицы и минора матрицы становиться понятно, что ранг нулевой матрицы равен нулю, а ранг ненулевой матрицы отличен от нуля.</p>
                    <p align="justify">Нахождение ранга матрицы по определению</p>
                    <p align="justify">Метод перебора миноров — метод, основанный на определении ранга матрицы.</p>
                    <p align="justify">Алгоритм действий способом перебора миноров:</p>
                    <p align="justify">Необходимо найти ранг матрицы А порядка p×n. При наличии хотя бы одного элемента, отличного от нуля, то ранг матрицы как минимум равен единице (т.к. есть минор 1-го порядка, который не равен нулю).</p>
                    <p align="justify">Далее следует перебор миноров 2-го порядка. Если все миноры 2-го порядка равны нулю, то ранг равен единице. При существовании хотя бы одного не равного нулю минора 2-го порядка, необходимо перейти к перебору миноров 3-го порядка, а ранг матрицы, в таком случае, будет равен минимум двум.</p>
                    <p align="justify">Аналогичным образом поступим с рангом 3-го порядка: если все миноры матрицы равняются нулю, то ранг будет равен двум. При наличии хотя бы одного ненулевого минора 3-го порядка, то ранг матрицы равен минимум трем. И так далее, по аналогии.</p>
                    <p align="center"><img src="../resources/Rank/Rank1.PNG" width="80%" /></p>
                    <p align="center"><img src="../resources/Rank/Rank2.PNG" width="80%" /></p>
                    <p align="center"><img src="../resources/Rank/Rank3.PNG" width="80%" /></p>
                    <p align="center"><img src="../resources/Rank/Rank4.PNG" width="80%" /></p>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
