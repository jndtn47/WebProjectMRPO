<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebMRPO.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/StyleMainWindow.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Shpargalka</title>
    <style>
        p {
            font-family: "Monotype Corsiva";
            font-size: 30px;
        }

        h1 {
            font-family: "Monotype Corsiva";
            font-size: 45px;
        }

        #text {
            margin-left: 20px;
            margin-right: 20px;
        }

        #imgH {
            position: absolute;
            left: 205px;
            top: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="workspace">
            <div id="header">
                <div id="imgH"><img src="resources/HeaderImg.png" width="700" height="80" /></div>
            <asp:Button ID="btnAuthorization" runat="server" Text="Войти" PostBackUrl="~/AuthorizationPage.aspx" class="buttonMenu buttonHeader" />
            <asp:Button ID="btnRegistration" runat="server" Text="Зарегистрироваться" PostBackUrl="~/RegistrationPage.aspx" class="buttonMenu buttonHeader" />
            </div>
            <div id="menu">
                <hr />
                <asp:Button ID="Button1" runat="server" Text="Главная" class="buttonMenu" PostBackUrl="~/MainWindow.aspx" />
                <asp:Button ID="Button2" runat="server" Text="Теория" class="buttonMenu" PostBackUrl="~/TheoryPages/1.TheConceptOfIndefiniteIntegral.aspx" />
                <asp:Button ID="Button3" runat="server" Text="Программы" class="buttonMenu" />
                <asp:Button ID="Button4" runat="server" Text="О проекте" class="buttonMenu" PostBackUrl="~/About.aspx"/>
            </div>
            <div id="content">
                <div id="text">
                    <h1 align="center">О проекте</h1>
                    <br />
                    <p align="justify">
                        Будучи студентами мы часто сталкивались с проблемой поиска необходимого материала 
                    по различным темам, например, интегрирование рациональных дробей или дифференцирование сложной функции. К сожалению, не всегда удается с первого раза найти такой материал, в котором содержалось бы подробное описание рассматриваемого понятия.</p>
<p>Именно поэтому мы решили создать сайт, который отвечал бы всем нашим запросам,то есть , находясь лишь на одном этом сайте, мы смогли бы не только найти теорию по различным разделам математики, но и смогли бы посмотреть подробное решение задач.
                    </p>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
