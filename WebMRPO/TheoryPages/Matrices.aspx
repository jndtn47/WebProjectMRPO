<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Matrices.aspx.cs" Inherits="WebMRPO.TheoryPages.Matrices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Действия с матрицами</title>
    <style>
        #workspace{
            height: 2800px;
        }
        a {
            color: black;
        }
    </style>
</head>
    <script type="text/javascript" src="http://tex.yourequations.com/"></script>
<body>
    <form id="form1" runat="server">
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
                    <h2 align="center">Действия с матрицами</h2>
                    <p align="justify"><i>Матрица</i> – это прямоугольная таблица элементов. Ну а если простым языком – таблица чисел.</p>
                    <p align="justify">Обычно матрицы обозначаются прописными латинскими буквами. Например, матрица A, матрица B и так далее. Матрицы могут быть разного размера: прямоугольные, квадратные, также есть матрицы-строки и матрицы-столбцы, называемые векторами. Размер матрицы определяется количеством строк и столбцов. Например, запишем прямоугольную матрицу размера m на n, где m – количество строк, а n – количество столбцов.</p>
                    <p align="center"><img src="https://latex.codecogs.com/gif.latex?A=\begin{pmatrix}&space;a_{11}&space;&a_{12}&space;&&space;...&space;&a_{1n}&space;\\&space;a_{21}&space;&&space;a_{22}&space;&&space;...&space;&&space;a_{2n}\\&space;...&space;&&space;...&space;&&space;...&space;&&space;...\\&space;a_{m1}&space;&&space;a_{m2}&space;&&space;...&space;&&space;a_{mn}&space;\end{pmatrix}" title="A=\begin{pmatrix} a_{11} &a_{12} & ... &a_{1n} \\ a_{21} & a_{22} & ... & a_{2n}\\ ... & ... & ... & ...\\ a_{m1} & a_{m2} & ... & a_{mn} \end{pmatrix}" /></p>
                    <p align="justify">Элементы, для которых i=j (a11, a22, .. ) образуют главную диагональ матрицы, и называются диагональными.</p>
                    <p align="justify"><b>Операции сложения и вычитания матриц</b></p>
                    <p align="justify">Сразу предупредим, что можно складывать только матрицы одинакового размера. В результате получится матрица того же размера. Складывать (или вычитать) матрицы просто – достаточно только сложить их соответствующие элементы. Приведем пример. Выполним сложение двух матриц A и В размером два на два.</p>
                    <p align="center"><img src="../resources/Matrices/Matrices.png" width="50%" /></p>
                    <p align="justify">Вычитание выполняется по аналогии, только с противоположным знаком.</p>
                    <p align="justify"><b>Умножение матрицы на число.</b></p>
                    <p align="justify">На произвольное число можно умножить любую матрицу. Чтобы сделать это, нужно умножить на это число каждый ее элемент. Например, умножим матрицу A из первого примера на число 5:</p>
                    <p align="center"><img src="../resources/Matrices/Matrices1.png" width="50%" /></p>
                    <p align="justify"><b>Операция умножения матриц.</b></p>
                    <p align="justify">Перемножить между собой удастся не все матрицы. Например, у нас есть две матрицы - A и B. Их можно умножить друг на друга только в том случае, если число столбцов матрицы А равно числу строк матрицы В.  При этом каждый элемент получившейся матрицы, стоящий в i-ой строке и j-м столбце, будет равен сумме произведений соответствующих элементов в i-й строке первого множителя и j-м столбце второго. Чтобы понять этот алгоритм, запишем, как умножаются две квадратные матрицы:</p>
                    <p align="center"><img src="../resources/Matrices/Matrices2.png" width="50%" /></p>
                    <p align="justify">И пример с реальными числами. Умножим матрицы:</p>
                    <p align="center"><img src="../resources/Matrices/Matrices3.png" width="50%" /></p>
                    <p align="justify"><b>Операция транспонирования матрицы.</b></p>
                    <p align="justify">Транспонирование матрицы – это операция, когда соответствующие строки и столбцы меняются местами. Например, транспонируем матрицу A из первого примера:</p>
                    <p align="center"><img src="../resources/Matrices/Matrices4.png" width="30%" /></p>

                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
