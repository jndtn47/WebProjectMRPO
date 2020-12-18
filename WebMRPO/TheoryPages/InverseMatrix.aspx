<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InverseMatrix.aspx.cs" Inherits="WebMRPO.TheoryPages.InverseMatrix" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Обратная Матрица.</title>
    <style>
        #workspace{
            height: 3700px;
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
                    <h2 align="center"><b>Обратная матрица</b></h2>
                    <p align="justify">Обратной матрицей, которую требуется отыскать для данной квадратной матрицы А, называется такая матрица <img src="https://latex.codecogs.com/gif.latex?A^{-1}" title="A^{-1}" /> 
                    произведение на которую матрицы А справа является единичной матрицей, т.е, <img src="https://latex.codecogs.com/gif.latex?AA^{-1}=E" title="AA^{-1}=E" /></p>
                    <p align="justify"><b>Нахождение обратной матрицы - задача, которая чаще решается двумя методами:</b></p>
                    <p align="justify">1. методом алгебраических дополнений, при котором, как было замечено в начале урока, требуется находить определители, миноры и алгебраические дополнения и транспонировать матрицы;</p>
                    <p align="justify">2. методом исключения неизвестных Гаусса, при котором требуется производить элементарные преобразования матриц (складывать строки, умножать строки на одно и то же число и т. д.).</p>
                    <p align="center"><b>Нахождение обратной матрицы методом алгебраических дополнений (союзной матрицы)</b></p>
                    <p align="justify">Для неособенной квадратной матрицы А обратной является матрица</p>                         
                    <p><img src="https://latex.codecogs.com/gif.latex?A^{-1}=\frac{1}{\left&space;|&space;A&space;\right&space;|}\cdot&space;A^T" title="A^{-1}=\frac{1}{\left | A \right |}\cdot A^T" />, где <img src="https://latex.codecogs.com/gif.latex?|A|\neq&space;0" title="|A|\neq 0" /></p>
                    <p align="center"><img src="../resources/InverseMatrix/InverseMatrix1.PNG" width="90%" /></p>
                    <p align="center"><img src="../resources/InverseMatrix/InverseMatrix2.PNG" width="90%" /></p>
                    <p align="center"><img src="../resources/InverseMatrix/InverseMatrix3.PNG" width="90%" /></p>
                    <p align="center"><b>Нахождение обратной матрицы методом исключения неизвестных Гаусса</b></p>
                    <p align="justify">Первый шаг для нахождения обратной матрицы методом исключения неизвестных Гаусса - приписать к матрице A единичную матрицу того же порядка, 
                    отделив их вертикальной чертой. Мы получим сдвоенную матрицу <img src="https://latex.codecogs.com/gif.latex?(A|E)" title="(A|E)" />. 
                    Умножим обе части этой матрицы на <img src="https://latex.codecogs.com/gif.latex?A^{-1}" title="A^{-1}" />, тогда получим</p>
                    <p align="justify"><img src="https://latex.codecogs.com/gif.latex?(A\cdot&space;A^{-1}|E\cdot&space;A^{-1})" title="(A\cdot A^{-1}|E\cdot A^{-1})" />, но <img src="https://latex.codecogs.com/gif.latex?A\cdot&space;A^{-1}=E,E\cdot&space;A^{-1}=A^{-1}" title="A\cdot A^{-1}=E,E\cdot A^{-1}=A^{-1}" /></p>
                    <p align="justify"><b>Алгоритм нахождения обратной матрицы методом исключения неизвестных Гаусса</b></p>
                    <p align="justify">1. К матрице A приписать единичную матрицу того же порядка.</p>
                    <p align="justify">2. Полученную сдвоенную матрицу преобразовать так, чтобы в левой её части получилась единичная матрица, тогда в правой части на месте единичной матрицы автоматически получится обратная матрица. Матрица A в левой части преобразуется в единичную матрицу путём элементарных преобразований матрицы.</p>
                    <p align="justify">3. Если в процессе преобразования матрицы A в единичную матрицу в какой-либо строке или в каком-либо столбце окажутся только нули, то определитель матрицы равен нулю, и, следовательно, матрица A будет вырожденной, и она не имеет обратной матрицы. В этом случае дальнейшее нахождение обратной матрицы прекращается.</p>
                    <p align="justify"><b>Пример</b></p>
                    <p align="center"><img src="../resources/InverseMatrix/InverseMatrix4.png" width="90%" /></p>

                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
