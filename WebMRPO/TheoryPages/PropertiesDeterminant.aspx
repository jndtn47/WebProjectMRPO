<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PropertiesDeterminant.aspx.cs" Inherits="WebMRPO.TheoryPages.PropertiesDeterminant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Свойства определитель</title>
    <style>
        #workspace{
            height: 2000px;
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
                    <h1 align="center">Свойства определителя матрицы.</h1>
                    <p align="justify">1. Определитель единичной матрицы равен единице: <i>det(E) = 1</i></p>
                    <p align="justify">2. Определитель матрицы с двумя равными строками (столбцами) равен нулю.</p>
                    <p align="justify">3. Определитель матрицы с двумя пропорциональными строками (столбцами) равен нулю.</p>
                    <p align="justify">4. Определитель матрицы, содержащий нулевую строку (столбец), равен нулю.</p>
                    <p align="justify">5. Определитель матрицы равен нулю если две (или несколько) строк (столбцев) матрицы линейно зависимы.</p>
                    <p align="justify">6. При транспонировании значение определителя матрицы не меняется:<img src="https://latex.codecogs.com/gif.latex?\det&space;(A)=\det&space;(A^T)" title="\det (A)=\det (A^T)" />.</p>
                    <p align="justify">7. Определитель обратной матрицы: <img src="https://latex.codecogs.com/gif.latex?\det&space;(A^{-1})=\det&space;(A)^{-1}" title="\det (A^{-1})=\det (A)^{-1}" /></p>
                    <p align="justify">8. Определитель матрицы не изменится, если к какой-то его строке (столбцу) прибавить другую строку (столбец), умноженную на некоторое число.</p>
                    <p align="justify">9. Определитель матрицы не изменится, если к какой-то его строке (столбцу) прибавить линейную комбинации других строк (столбцов).</p>
                    <p align="justify">10. Если поменять местами две строки (столбца) матрицы, то определитель матрицы поменяет знак.</p>
                    <p align="justify">11. Общий множитель в строке (столбце) можно выносить за знак определителя.</p>
                    <p align="center"><img src="https://latex.codecogs.com/gif.latex?\begin{vmatrix}&space;a_{11}&space;&&space;a_{12}&space;&&space;...&space;&&space;a_{1n}\\&space;a_{21}&space;&&space;a_{22}&space;&&space;...&space;&&space;a_{2n}\\&space;...&space;&&space;...&space;&&space;...&space;&&space;...\\&space;ka_{i1}&space;&&space;ka_{i2}&space;&&space;...&space;&&space;ka_{in}\\&space;...&space;&&space;...&space;&&space;...&space;&&space;...\\&space;a_{m1}&space;&&space;a_{m2}&space;&&space;...&space;&&space;a_{mn}&space;\end{vmatrix}=k\begin{vmatrix}&space;a_{11}&space;&&space;a_{12}&space;&&space;...&space;&&space;a_{1n}\\&space;a_{21}&space;&&space;a_{22}&space;&&space;...&space;&&space;a_{2n}\\&space;...&space;&&space;...&space;&&space;...&space;&&space;...\\&space;a_{i1}&space;&&space;a_{i2}&space;&&space;...&space;&&space;a_{in}\\&space;...&space;&&space;...&space;&&space;...&space;&&space;...\\&space;a_{m1}&space;&&space;a_{m2}&space;&&space;...&space;&&space;a_{mn}&space;\end{vmatrix}" title="\begin{vmatrix} a_{11} & a_{12} & ... & a_{1n}\\ a_{21} & a_{22} & ... & a_{2n}\\ ... & ... & ... & ...\\ ka_{i1} & ka_{i2} & ... & ka_{in}\\ ... & ... & ... & ...\\ a_{m1} & a_{m2} & ... & a_{mn} \end{vmatrix}=k\begin{vmatrix} a_{11} & a_{12} & ... & a_{1n}\\ a_{21} & a_{22} & ... & a_{2n}\\ ... & ... & ... & ...\\ a_{i1} & a_{i2} & ... & a_{in}\\ ... & ... & ... & ...\\ a_{m1} & a_{m2} & ... & a_{mn} \end{vmatrix}" /></p>
                    <p align="justify">12. Если квадратная матрица n-того порядка умножается на некоторое ненулевое число, то определитель полученной матрицы равен произведению определителя исходной матрицы на это число в n-той степени:<img src="https://latex.codecogs.com/gif.latex?B=kA\Rightarrow&space;\det(B)&space;=&space;k^n\det(A)" title="B=kA\Rightarrow \det(B) = k^n\det(A)" />, где A матрица n×n, k - число.</p>
                    <p align="justify">13. Если каждый элемент в какой-то строке определителя равен сумме двух слагаемых, то исходный определитель равен сумме двух определителей, в которых вместо этой строки стоят первые и вторые слагаемые соответственно, а остальные строки совпадают с исходным определителем:</p>
                    <p align="center"><img src="https://latex.codecogs.com/gif.latex?\begin{vmatrix}&space;a_{11}&space;&&space;a_{12}&space;&&space;...&space;&&space;a_{1n}\\&space;a_{21}&space;&&space;a_{22}&space;&&space;...&space;&&space;a_{2n}\\&space;...&space;&&space;...&space;&&space;...&space;&&space;...\\&space;b_{i1}&plus;c_{i1}&space;&&space;b_{i2}&plus;c_{i2}&space;&&space;...&space;&&space;b_{in}&plus;c_{in}\\&space;...&space;&&space;...&space;&&space;...&space;&&space;...\\&space;a_{m1}&space;&&space;a_{m2}&space;&&space;...&space;&&space;a_{mn}&space;\end{vmatrix}=&space;\begin{vmatrix}&space;a_{11}&space;&&space;a_{12}&space;&&space;...&space;&&space;a_{1n}\\&space;a_{21}&space;&&space;a_{22}&space;&&space;...&space;&&space;a_{2n}\\&space;...&space;&&space;...&space;&&space;...&space;&&space;...\\&space;b_{i1}&space;&&space;b_{i2}&space;&&space;...&space;&&space;b_{in}\\&space;...&space;&&space;...&space;&&space;...&space;&&space;...\\&space;a_{m1}&space;&&space;a_{m2}&space;&&space;...&space;&&space;a_{mn}&space;\end{vmatrix}&plus;&space;\begin{vmatrix}&space;a_{11}&space;&&space;a_{12}&space;&&space;...&space;&&space;a_{1n}\\&space;a_{21}&space;&&space;a_{22}&space;&&space;...&space;&&space;a_{2n}\\&space;...&space;&&space;...&space;&&space;...&space;&&space;...\\&space;c_{i1}&space;&&space;c_{i2}&space;&&space;...&space;&&space;c_{in}\\&space;...&space;&&space;...&space;&&space;...&space;&&space;...\\&space;a_{m1}&space;&&space;a_{m2}&space;&&space;...&space;&&space;a_{mn}&space;\end{vmatrix}" title="\begin{vmatrix} a_{11} & a_{12} & ... & a_{1n}\\ a_{21} & a_{22} & ... & a_{2n}\\ ... & ... & ... & ...\\ b_{i1}+c_{i1} & b_{i2}+c_{i2} & ... & b_{in}+c_{in}\\ ... & ... & ... & ...\\ a_{m1} & a_{m2} & ... & a_{mn} \end{vmatrix}= \begin{vmatrix} a_{11} & a_{12} & ... & a_{1n}\\ a_{21} & a_{22} & ... & a_{2n}\\ ... & ... & ... & ...\\ b_{i1} & b_{i2} & ... & b_{in}\\ ... & ... & ... & ...\\ a_{m1} & a_{m2} & ... & a_{mn} \end{vmatrix}+ \begin{vmatrix} a_{11} & a_{12} & ... & a_{1n}\\ a_{21} & a_{22} & ... & a_{2n}\\ ... & ... & ... & ...\\ c_{i1} & c_{i2} & ... & c_{in}\\ ... & ... & ... & ...\\ a_{m1} & a_{m2} & ... & a_{mn} \end{vmatrix}" /></p>
                    <p align="justify">14. Определитель верхней (нижней) треугольной матрицы равен произведению его диагональных элементов.</p>
                    <p align="justify">15. Определитель произведения матриц равен произведению определителей этих матриц: <i>det(A·B) = det(A)·det(B)</i>.</p>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
