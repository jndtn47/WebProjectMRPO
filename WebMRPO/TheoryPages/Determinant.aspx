<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Determinant.aspx.cs" Inherits="WebMRPO.TheoryPages.Determinant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Определитель</title>
    <style>
        #workspace{
            height: 3800px;
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
                    <h1 align="center">Определитель</h1>
                    <p align="justify">Определитель (детерминант) матрицы — некоторое число, с которым можно сопоставить любую квадратную матрицу <img src="https://latex.codecogs.com/gif.latex?A=(a_{ij})_{n\times&space;m}" title="A=(a_{ij})_{n\times m}" /></p>
                    <p align="justify">|А|, Δ, det A - символы, которыми обозначают определитель матрицы.</p>
                    <p align="justify">Способ вычисления определителя выбирают в зависимости от порядка матрицы.</p>
                    <p align="justify">Определитель матрицы 2-го порядка вычисляют по формуле:</p> 
                    <p><img src="https://latex.codecogs.com/gif.latex?\begin{vmatrix}&space;a_{11}&space;&&space;a_{12}\\&space;a_{21}&space;&&space;a_{22}&space;\end{vmatrix}=a_{11}a_{22}-a_{12}a_{21}" title="\begin{vmatrix} a_{11} & a_{12}\\ a_{21} & a_{22} \end{vmatrix}=a_{11}a_{22}-a_{12}a_{21}" /></p>
                    <center><img src="../resources/Determinant/Determinant1.PNG" width="90%" /></center>
                    <p align="justify">Чтобы найти определитель матрицы 3-го порядка, необходимо одно из правил:</p>
                    <p align="justify">1. правило треугольника;</p>
                    <p align="justify">2. правило Саррюса.</p>
                    <p align="justify"><i>Как найти определитель матрицы 3-го порядка по методу треугольника?</i></p>
                    <p align="justify"><img src="https://latex.codecogs.com/gif.latex?\begin{vmatrix}&space;a_{11}&space;&&space;a_{12}&space;&&space;a_{13}\\&space;a_{21}&space;&&space;a_{22}&space;&&space;a_{23}\\&space;a_{31}&space;&&space;a_{32}&space;&&space;a_{33}&space;\end{vmatrix}=a_{11}a_{22}a_{33}&plus;a_{31}a_{12}a_{23}&plus;a_{21}a_{32}a_{13}-a_{13}a_{22}a_{31}-a_{21}a_{12}a_{33}-a_{11}a_{23}a_{32}" title="\begin{vmatrix} a_{11} & a_{12} & a_{13}\\ a_{21} & a_{22} & a_{23}\\ a_{31} & a_{32} & a_{33} \end{vmatrix}=a_{11}a_{22}a_{33}+a_{31}a_{12}a_{23}+a_{21}a_{32}a_{13}-a_{13}a_{22}a_{31}-a_{21}a_{12}a_{33}-a_{11}a_{23}a_{32}" /></p>
                    <p align="justify"><b>Правило Саррюса.</b></p>
                    <p align="justify">Чтобы вычислить определитель по методу Саррюса, необходимо учесть некоторые условия и выполнить следующие действия:</p>
                    <p align="justify">1. дописать слева от определителя два первых столбца;</p>
                    <p align="justify">2. перемножить элементы, которые расположены на главной диагонали и параллельных ей диагоналях, взяв произведения со знаком «+»;</p>
                    <p align="justify">3. перемножить элементы, которые расположены на побочных диагоналях и параллельных им, взяв произведения со знаком «—».</p>
                    <p align="center"><img src="../resources/Determinant/Determinant2.PNG" width="90%" /></p>
                    <p align="center"><b>Методы разложения по элементам строки и столбца</b></p>
                    <p align="justify">Чтобы вычислить определитель матрицу 4-го порядка, можно воспользоваться одним из 2-х способов:</p>
                    <p align="justify">1. разложением по элементам строки;</p>
                    <p align="justify">2. разложением по элементам столбца.</p>
                    <p align="justify">Представленные способы определяют вычисление определителя n как вычисление определителя порядка n-1 за счет представления определителя суммой произведений элементов строки (столбца) на их алгебраические дополнения.</p>
                    <p align="center"><img src="../resources/Determinant/Determinant4.PNG" width="90%" /></p>
                    <p align="center"><img src="../resources/Determinant/Determinant5.PNG" width="90%" />
                        <img src="../resources/Determinant/Determinant56.PNG" width="90%" /></p>


                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
