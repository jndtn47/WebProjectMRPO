<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vector.aspx.cs" Inherits="WebMRPO.TheoryPages.Vector" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Вектор</title>
    <style>
        #workspace {
            height: 8350px;
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
                    <h1 align="center">Векторы. Действия с векторами. Координаты вектора. Простейшие задачи с векторами.</h1>
                    <h3 align="center">Понятие вектора. Свободный вектор</h3>
                    <p align="justify">Сначала повторим школьное определение вектора. Вектором называется направленный отрезок, для которого указано его начало и конец.</p>
                    <center><img aling="center" src="../resources/Vector/Vector1.png" width="30%" /></center>
                    <p aling="justify">
                        В данном случае началом отрезка является точка
                        <img src="https://latex.codecogs.com/gif.latex?A" title="A" />
                        , концом отрезка – точка
                        <img src="https://latex.codecogs.com/gif.latex?B" title="B" />. Сам вектор обозначен через
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{AB}" title="\overrightarrow{AB}" />.
                    </p>
                    <p aling="justify">
                        Направление имеет существенное значение, если переставить стрелку в другой конец отрезка, то получится вектор
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{BA}" title="\overrightarrow{BA}" />, и это уже совершенно другой вектор. Понятие вектора удобно отождествлять с движением физического тела: согласитесь, зайти в двери института или выйти из дверей института – это совершенно разные вещи.
                    </p>
                    <p aling="justify">
                        Отдельные точки плоскости, пространства удобно считать так называемым нулевым вектором
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{O}" title="\overrightarrow{O}" />. У такого вектора конец и начало совпадают.
                    </p>
                    <p aling="justify">
                        <i>Длиной</i> или <i>модулем</i> ненулевого вектора
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{AB}" title="\overrightarrow{AB}" />
                        называется длина отрезка
                        <img src="https://latex.codecogs.com/gif.latex?AB" title="AB" />. Длина нулевого вектора
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{O}" title="\overrightarrow{O}" />
                        равна нулю.
                    </p>
                    <p aling="justify">
                        Длина вектора обозначается знаком модуля:
                        <img src="https://latex.codecogs.com/gif.latex?|\overrightarrow{AB}|" title="|\overrightarrow{AB}|" />.
                    </p>
                    <p aling="justify">Это были элементарные сведения о векторе, знакомые всем школьникам. В аналитической геометрии рассматривается так называемый <i>свободный вектор</i>.</p>
                    <p aling="justify">Если совсем просто – вектор можно отложить от любой точки:</p>
                    <center><img aling="center" src="../resources/Vector/Vector2.png" / width="30%" ></center>
                    <p aling="justify">Такие векторы мы привыкли называть равными (определение равных векторов будет дано ниже), но чисто с математической точки зрения это <u>один и тот же вектор</u> или свободный вектор. Почему свободный? Потому что в ходе решения задач вы можете «пристроить» тот или иной «школьный» вектор в <u>любую</u>, нужную вам точку плоскости или пространства. Это очень крутое свойство! Представьте направленный отрезок произвольной длины и направления – его можно «клонировать» бесконечное количество раз и в любой точке пространства, по сути, он существует <u>везде</u>. </p>
                    <p aling="justify"><i>Cвободный вектор</i> – это множество одинаковых направленных отрезков. Школьное определение вектора, данное в начале параграфа, подразумевает конкретный направленный отрезок, взятый из данного множества, который привязан к определённой точке плоскости или пространства.</p>
                    <p aling="justify">Следует отметить, что с точки зрения физики понятие свободного вектора в общем случае некорректно, и точка приложения имеет значение. Действительно, прямой удар одинаковой силы влёчет разные последствия. </p>
                    <p aling="justify">Далее, если не оговаривается иное, речь пойдёт только о свободных векторах.</p>
                    <h3 align="center">Действия с векторами. Коллинеарность векторов</h3>
                    <p aling="justify">В школьном курсе геометрии рассматривается ряд действий и правил с векторами: сложение по правилу треугольника, сложение по правилу параллелограмма, правило разности векторов, умножения вектора на число, скалярное произведение векторов и др. Для затравки повторим два правила, которые особенно актуальны для решения задач аналитической геометрии.</p>
                    <h4 align="center">Правило сложения векторов по правилу треугольников</h4>
                    <p aling="justify">
                        Рассмотрим два произвольных ненулевых вектора
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}" title="\overrightarrow{a}" />
                        и
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{b}" title="\overrightarrow{b}" />:
                    </p>
                    <center><img aling="center" src="../resources/Vector/Vector3.png" width="30%" /></center>
                    <p aling="justify">
                        Требуется найти сумму данных векторов. В силу того, что все векторы считаются свободными, отложим вектор
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{b}" title="\overrightarrow{b}" />
                        от конца вектора
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}" title="\overrightarrow{a}" />:
                    </p>
                    <center><img aling="center" src="../resources/Vector/Vector4.png" width="30%" /></center>
                    <p aling="justify">Аналогичное правило формулируется для суммы любого количества векторов. Как говорится, тело может пройти свой путь сильно поддатым по зигзагу, а может и на автопилоте – по результирующему вектору суммы.</p>
                    <p aling="justify">
                        Кстати, если вектор
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{b}" title="\overrightarrow{b}" />
                        отложить от начала вектора
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}" title="\overrightarrow{a}" />, то получится эквивалентное <i>правило параллелограмма</i> сложения векторов.
                    </p>
                    <h4 align="center">Умножение вектора на число</h4>
                    <p aling="justify">Сначала о коллинеарности векторов. Два вектора называются <i>коллинеарными</i>, если они лежат на одной прямой или на параллельных прямых. Грубо говоря, речь идёт о параллельных векторах. Но применительно к ним всегда используют прилагательное «коллинеарные».</p>
                    <p aling="justify">Представьте два коллинеарных вектора. Если стрелки данных векторов направлены в одинаковом направлении, то такие векторы называются <i>сонаправленными</i>. Если стрелки смотрят в разные стороны, то векторы будут <i>противоположно направлены</i>.</p>
                    <p aling="justify">
                        Произведением ненулевого вектора
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}" title="\overrightarrow{a}" />
                        на число
                        <img src="https://latex.codecogs.com/gif.latex?\lambda" title="\lambda" />
                        является такой вектор
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{b}" title="\overrightarrow{b}" />
                        , длина которого равна 
       <img src="https://latex.codecogs.com/gif.latex?|\lambda|" title="|\lambda|" />
                        <img src="https://latex.codecogs.com/gif.latex?|\overrightarrow{a}|" title="|\overrightarrow{a}|" />
                        причём векторы
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}" title="\overrightarrow{a}" />
                        и
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{b}" title="\overrightarrow{b}" />
                        сонаправлены при
                        <img src="https://latex.codecogs.com/gif.latex?\lambda\geqslant0" title="\lambda\geqslant0" />
                        и противоположно направлены при
                        <img src="https://latex.codecogs.com/gif.latex?\lambda\leqslant0" title="\lambda\leqslant0" />.
                    </p>
                    <p aling="justify">Правило умножения вектора на число легче понять с помощью рисунка:</p>
                    <center><img aling="center" src="../resources/Vector/Vector5.PNG" width="40%" /></center>
                    <p aling="justify"><i>Два вектора равны, если они сонаправлены и имеют одинаковую длину.</i> Заметьте, что сонаправленность подразумевает коллинеарность векторов. Определение будет неточным (избыточным), если сказать: «Два вектора равны, если они коллинеарны, сонаправлены и имеют одинаковую длину».</p>
                    <h3 align="center">Координаты вектора на плоскости и в пространстве</h3>
                    <p aling="justify">
                        Первым пунктом рассмотрим векторы на плоскости. Изобразим декартову прямоугольную систему координат и от начала координат отложим единичные векторы
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{i}" title="\overrightarrow{i}" />
                        и
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{j}" title="\overrightarrow{j}" />
                    </p>
                    <center><img aling="center" src="../resources/Vector/Vektor6.PNG" width="30%" /></center>
                    <p aling="justify">
                        Векторы
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{i}" title="\overrightarrow{i}" />
                        и
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{j}" title="\overrightarrow{j}" />
                        ортогональны. Ортогональны = Перпендикулярны.
                    </p>
                    <p aling="justify">
                        <b>Обозначение</b>: ортогональность векторов записывают привычным значком перпендикулярности, например:
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{i}\perp\overrightarrow{j}" title="\overrightarrow{i}\perp\overrightarrow{j}" />
                    </p>
                    <p aling="justify">Теперь рассмотрим векторы в трехмерном пространстве, здесь практически всё так же! Только добавится ещё одна координата. Трехмерные чертежи выполнять тяжко, поэтому ограничусь одним вектором, который для простоты отложу от начала координат:</p>
                    <center><img src="../resources/Vector/Vektor7.PNG" width="30%" /></center>
                    <h3 align="center">Простейшие задачи аналитической геометрии.Действия с векторами в координатах</h3>
                    <p aling="justify">Как найти вектор по двум точкам?</p>
                    <p aling="justify">
                        Если даны две точки плоскости <i>A(x<sub>1</sub>,y<sub>1</sub>)</i> и <i>B(x<sub>2</sub>,y<sub>2</sub>)</i>, то вектор
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{AB}" title="\overrightarrow{AB}" />
                        имеет следующие координаты:
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{AB}" title="\overrightarrow{AB}" /><i>(x<sub>2</sub>-x<sub>1</sub>,y<sub>2</sub>-y<sub>1</sub>)</i>
                    </p>
                    <p aling="justify">То есть, из координат конца вектора нужно вычесть соответствующие координаты начала вектора.</p>
                    <p aling="justify">
                        <u>Пример 1.</u>  Даны две точки плоскости <i>A(2,1)</i> и <i>B(-2,3)</i>. Найти координаты вектора
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{AB}" title="\overrightarrow{AB}" />
                    </p>
                    <p aling="justify">
                        <b>Решение:</b> по соответствующей формуле:
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{AB}" title="\overrightarrow{AB}" />(-2-2,3-1)=<img src="https://latex.codecogs.com/gif.latex?\overrightarrow{AB}" title="\overrightarrow{AB}" />(-4,2)
                    </p>
                    <center><img src="../resources/Vector/Vektor9.PNG" /></center>
                    <h3 align="center"><b>Как найти длину вектора?</b></h3>
                    <p aling="justify">
                        Если даны две точки плоскости <i>A(x<sub>1</sub>,y<sub>1</sub>)</i> и <i>B(x<sub>2</sub>,y<sub>2</sub>)</i>, то длину отрезка <i>AB</i> можно вычислить по формуле
                        <img src="https://latex.codecogs.com/gif.latex?|AB|=\sqrt{(x_{2}-x_{1})^{2}&plus;(y_{2}-y_{1})^{2}}" title="|AB|=\sqrt{(x_{2}-x_{1})^{2}+(y_{2}-y_{1})^{2}}" />
                    </p>
                    <p aling="justify"><b>Примечание:</b> Формулы останутся корректными, если переставить местами соответствующие координаты</p>
                    <p aling="justify">
                        <u>Пример 2.</u>  Даны две точки плоскости <i>A(-3,5)</i> и <i>B(1,-3)</i>. Найти длину вектора
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{AB}" title="\overrightarrow{AB}" />
                    </p>
                    <p aling="justify">
                        <b>Решение:</b> по соответствующей формуле:
                        <img src="https://latex.codecogs.com/gif.latex?|AB|=\sqrt{(1-(-3))^{2}&plus;(-3-5)^{2}}=\sqrt{80}=4\sqrt{5}" title="|AB|=\sqrt{(1-(-3))^{2}+(-3-5)^{2}}=\sqrt{80}=4\sqrt{5}" />
                    </p>
                    <center><img src="../resources/Vector/Vektor10.PNG" /></center>
                    <h3 align="center"><b>Действия с векторами в координатах</b></h3>
                    <center><img src="../resources/Vector/Vektor11.png" width="70%" /></center>

                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
