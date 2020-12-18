<<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScalarProductOfVectors.aspx.cs" Inherits="WebMRPO.TheoryPages.ScalarProductOfVectors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Скалярное произведение векторов</title>
    <style>
        #workspace{
            height: 3100px;
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
                    <h1 align="center" >Скалярное произведение векторов</h1>
                    <p align="center"><b>Определение скалярного произведения векторов. Свойства скалярного произведения. Типовые задачи</b></p>
                    <p aling="justify">Сначала про угол между векторами. Думаю, всем интуитивно понятно, что такое угол между векторами, но на всякий случай чуть подробнее. Рассмотрим свободные ненулевые векторы 
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}" title="\overrightarrow{a}" /> и <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{b}" title="\overrightarrow{b}" />.
                         Если отложить данные векторы от произвольной точки <i>M</i> , то получится картинка, которую многие уже представили мысленно:</p>
                    <center><img src="../resources/ScalarProductOfVectors/Scalar1.PNG" width="30%" /></center>
                    <p aling="justify">Угол между векторами <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}" title="\overrightarrow{a}" /> и <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{b}" title="\overrightarrow{b}" />
                        может принимать значения от 0 до 180 градусов (от 0 до <img src="https://latex.codecogs.com/gif.latex?\pi" title="\pi" /> радиан) включительно.</p>
                    <p aling="justify"><b>Oпределение:</b> Скалярным произведением двух векторов <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}" title="\overrightarrow{a}" /> и <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{b}" title="\overrightarrow{b}" />
                        называется <i>число</i>, равное произведению длин этих векторов на косинус угла между ними: <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}\cdot\overrightarrow{b}=|\overrightarrow{a}|\cdot&space;|\overrightarrow{b}|\cdot&space;\cos&space;\angle&space;(\overrightarrow{a};\overrightarrow{b})" title="\overrightarrow{a}\cdot\overrightarrow{b}=|\overrightarrow{a}|\cdot |\overrightarrow{b}|\cdot \cos \angle (\overrightarrow{a};\overrightarrow{b})" />.</p>
                    <p aling="justify"><u>Пример 1.</u> Найти скалярное произведение векторов <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}" title="\overrightarrow{a}" /> и <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{b}" title="\overrightarrow{b}" />,
                        если <img src="https://latex.codecogs.com/gif.latex?|\overrightarrow{a}|" title="|\overrightarrow{a}|" />=2, <img src="https://latex.codecogs.com/gif.latex?|\overrightarrow{b}|" title="|\overrightarrow{b}|" />=5, <img src="https://latex.codecogs.com/gif.latex?\angle&space;(\overrightarrow{a};\overrightarrow{b})=\frac{\pi}{6}" title="\angle (\overrightarrow{a};\overrightarrow{b})=\frac{\pi}{6}"/> </p>
                    <p aling="justify"><b>Решение:</b> Используем формулу, получим <img src="https://latex.codecogs.com/gif.latex?\overline{a}\overline{b}=2\cdot&space;5\cdot&space;\cos&space;\frac{\pi}{6}=5\sqrt{3}" title="\overline{a}\overline{b}=2\cdot 5\cdot \cos \frac{\pi}{6}=5\sqrt{3}"/>.</p>
                    <p align="center"><b>Скалярное произведение в координатах</b></p>
                    <p aling="justify"><i>Скалярное произведение векторов</i> <img src="https://latex.codecogs.com/gif.latex?\overline{v}(v_1,v_2)" title="\overline{v}(v_1,v_2)" /> и <img src="https://latex.codecogs.com/gif.latex?\overline{w}(w_1,w_2)" title="\overline{w}(w_1,w_2)" /> 
                        , выражается формулой <img src="https://latex.codecogs.com/gif.latex?\overline{v}\cdot\overline{w}=v_1w_1&plus;v_2w_2" title="\overline{v}\cdot\overline{w}=v_1w_1+v_2w_2" />.</p>
                    <p aling="justify">То есть, скалярное произведение равно сумме произведений соответствующих координат векторов.</p>
                    <p aling="center"><b>Проверка векторов на ортогональность с помощью скалярного произведения.</b></p>
                    <p aling="justify">Вернёмся к важному случаю, когда векторы являются ортогональными. Напоминаю: векторы <img src="https://latex.codecogs.com/gif.latex?\overline{v}" title="\overline{v}" /> и <img src="https://latex.codecogs.com/gif.latex?\overline{w}" title="\overline{w}" /> ортогональны тогда и только тогда, когда <img src="https://latex.codecogs.com/gif.latex?\overline{v}\cdot\overline{w}=0" title="\overline{v}\cdot\overline{w}=0" />.</p>
                    <p align="center"><b>Формула косинуса угла между векторами, которые заданы координатами</b></p>
                    <p aling="justify">Теперь у нас есть полная информация, чтобы ранее выведенную формулу косинуса угла между векторами <img src="https://latex.codecogs.com/gif.latex?\cos&space;\angle&space;(\overline{v};\overline{w})=\frac{\overline{v}\cdot&space;;\overline{w}}{|\overline{v}|\cdot&space;|\overline{w}|}" title="\cos \angle (\overline{v};\overline{w})=\frac{\overline{v}\cdot ;\overline{w}}{|\overline{v}|\cdot |\overline{w}|}" />выразить через координаты векторов 
                        <img src="https://latex.codecogs.com/gif.latex?\overline{v}" title="\overline{v}" /> и <img src="https://latex.codecogs.com/gif.latex?\overline{w}" title="\overline{w}" />: <img src="https://latex.codecogs.com/gif.latex?\cos&space;\angle&space;(\overline{v};\overline{w})=\frac{v_1w1&plus;v_2w_2}{\sqrt{v_1^{2}&plus;w_1^{2}}\cdot&space;\sqrt{v_2^{2}&plus;w_2^{2}}}" title="\cos \angle (\overline{v};\overline{w})=\frac{v_1w1+v_2w_2}{\sqrt{v_1^{2}+w_1^{2}}\cdot \sqrt{v_2^{2}+w_2^{2}}}" />.</p>
                    <p align="center"><b>Проекция вектора на вектор. Проекции вектора на координатные оси. Направляющие косинусы вектора</b></p>
                    <p aling="justify">Вектор можно проецировать под разными углами, но чаще всего (и по умолчанию) под  проекцией подразумевают ортогональную проекцию. Рассмотрим векторы <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}" title="\overrightarrow{a}" /> и <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{b}" title="\overrightarrow{b}" />:</p>
                    <center><img src="../resources/ScalarProductOfVectors/Scalar2.PNG" width="30%" /></center>
                    <p aling="justify">Спроецируем вектор <img src="https://latex.codecogs.com/gif.latex?\overline{a}" title="\overline{a}" /> на вектор <img src="https://latex.codecogs.com/gif.latex?\overline{b}" title="\overline{b}" />, 
                        для этого из начала и конца вектора <img src="https://latex.codecogs.com/gif.latex?\overline{a}" title="\overline{a}" /> опустим перпендикуляры на вектор <img src="https://latex.codecogs.com/gif.latex?\overline{b}" title="\overline{b}" /> (зелёные пунктирные линии).
                        Представьте, что на вектор <img src="https://latex.codecogs.com/gif.latex?\overline{b}" title="\overline{b}" /> перпендикулярно падают лучи света. 
                        Тогда отрезок <i>AB</i> (красная линия) будет «тенью» вектора <img src="https://latex.codecogs.com/gif.latex?\overline{a}" title="\overline{a}" />. 
                        В данном случае проекцией вектора <img src="https://latex.codecogs.com/gif.latex?\overline{a}" title="\overline{a}" /> на вектор <img src="https://latex.codecogs.com/gif.latex?\overline{b}" title="\overline{b}" /> является <i>длина</i> отрезка . То есть, <i>проекция – это число</i>.</p>
                    <p align="center"><b>Проекции вектора на координатные оси. Направляющие косинусы вектора</b></p>
                    <center><img src="../resources/ScalarProductOfVectors/Scalar3.PNG" /></center>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>