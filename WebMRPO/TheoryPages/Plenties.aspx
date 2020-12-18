<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Plenties.aspx.cs" Inherits="WebMRPO.TheoryPages.Plenties" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Множества. Операции над множествами.</title>
    <style>
        #workspace{
            height: 4200px;
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
                    <h2 align="center">Множество. Примеры множеств.</h2>
                    <p align="justify">Множество – это фундаментальное понятие не только математики, но и всего окружающего мира. Возьмите прямо сейчас в руку любой предмет. Вот вам и множество, состоящее из одного элемента.</p>
                    <p align="justify">В широком смысле, <i>множество</i> – это совокупность объектов (элементов), которые понимаются как единое целое (по тем или иным признакам, критериям или обстоятельствам). Причём, это не только материальные объекты, но и буквы, цифры, теоремы, мысли, эмоции и т.д.</p>
                    <p align="justify">Обычно множества обозначаются большими латинскими буквами <i>A, B, C, D, ...</i> (как вариант, с подстрочными индексами: <i>A1, A2, A3, ...</i> и т.п.), а его элементы записываются в фигурных скобках, например:</p>
                    <p align="justify"><i>A={а, б, в ,г,..., я}</i>-множество букв русского алфавита;</p>
                    <p align="justify"><i>B={1, 2, 3, 4, 5,...}</i>-множество натуральных чисел;</p>
                    <p align="justify"><i>S1={Катя, Саша, Паша, Лена}</i>– множество студентов в 1-м ряду</p>
                    <p align="justify">Множества <i>A</i> и <i>S1</i> являются конечными (состоящими из конечного числа элементов), а множество <i>N</i> – это пример бесконечного множества. 
                        Кроме того, в теории и на практике рассматривается так называемое пустое множество: ∅– множество, в котором нет ни одного элемента.</p>
                    <p align="justify">Принадлежность элемента множеству записывается значком ∈, например: <i>б ∈ A</i>, <i>β ∉ A</i>, <i>5 ∈ N</i>, <i>5,5 ∉ N</i>, <i>Валера ∉ S1</i>.</p>
                    <p align="justify">Вышеприведённые множества записаны прямым перечислением элементов, но это не единственный способ. Многие множества удобно определять с помощью некоторого признака (ов), который присущ всем его элементам. Например:
                        <img src="https://latex.codecogs.com/gif.latex?N^*=&space;\left&space;\{&space;n\in&space;N:n<100&space;\right&space;\}" title="N^*= \left \{ n\in N:n<100 \right \}" />– множество всех натуральных чисел, меньших ста.</p>
                    <p align="justify"><b>Запомните:</b> "|" или ":" выражает словесный оборот «которые», «таких, что».</p>
                    <p align="center"><b>Подмножества.</b></p>
                    <p align="justify">Mножество <i>G</i> является <i>подмножеством множества</i> <i>A</i>, если каждый элемент множества <i>G</i> принадлежит множеству <i>A</i>. Иными словами, множество <i>G</i> содержится во множестве <i>A</i>: <i>G ⊂ A</i>. Значок ⊂ называют <i>значком включения.</i></p>
                    <p align="justify">Вернёмся к примеру, в котором  <i>A</i>– это множество букв русского алфавита. Обозначим через <i>B</i> – множество его гласных букв. Тогда: <i>B ⊂ A</i></p>
                    <p align="justify">Отношения между подмножествами удобно изображать с помощью условной геометрической схемы, которая называется <i>кругами Эйлера</i>.</p>
                    <p><center><img src="../resources/Planties/Planties1.jpg" width="35%" /></center></p>
                    <p align="center"><b>Действия над множествами. Диаграммы Венна</b></p>
                    <p align="justify"><i>Объединением множеств A и B</i> называют множество A∪B, которое состоит из элементов, принадлежащих хотя бы одному из множеств.</p>
                    <p align="justify">Объединение записывается следующим образом: A∪B={x|x∈A или x∈B}</p>
                    <p align="justify">Таким образом объединение множеств выглядит графически:</p>
                    <p><center><img src="../resources/Planties/Planties2.jpg" width="30%" /></center></p>
                    <p align="justify"><i>Пересечением множеств</i> A и B является множество A∩B, которое состоит из элементов, входящих в оба множества.</p>
                    <p align="justify">Пересечение множеств записывается следующим образом: A∩B={x|x∈A и x∈B}</p>
                    <p align="justify">Таким образом пересечение множеств выглядит графически:</p>
                    <p><center><img src="../resources/Planties/Planties3.jpg" width="35%" /></center></p>
                    <p align="justify"><i>Дополнением к множеству</i> A является множество <img src="https://latex.codecogs.com/gif.latex?\overline{A}" title="\overline{A}" />, которое состоит из элементов, не входящих в А. <img src="https://latex.codecogs.com/gif.latex?\overline{A}" title="\overline{A}" />={x|x∉A}</p>
                    <p><center><img src="../resources/Planties/Planties4.jpg" width="35%" /></center></p>
                    <p align="justify"><i>Симметричная разность</i> A \ B — это такое множество, куда входят все те элементы первого множества, которые не входят во второе множество, а, также те элементы второго множества, которые не входят в первое множество.</p>
                    <p align="justify">Разность множеств записывается следующим образом: A△B=(A∖B)∪(B∖A)</p>
                    <p align="justify">Таким образом разность выглядит графически:</p>
                    <p><center><img src="../resources/Planties/Planties6.jpg" width="35%" /></center></p>
                    <p align="justify"><i>Разностью</i> A \ B является множество элементов A, не входящих в B.</p>
                    <p align="justify">Разность множеств записывается следующим образом: A∖B={x|x∈Aиx∉B}</p>
                    <p align="justify">Таким образом разность выглядит графически:</p>
                    <p><center><img src="../resources/Planties/Planties5.jpg" width="35%" /></center></p>

                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
