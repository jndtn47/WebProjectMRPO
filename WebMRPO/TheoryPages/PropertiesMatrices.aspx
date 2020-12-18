<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PropertiesMatrices.aspx.cs" Inherits="WebMRPO.TheoryPages.PropertiesMatrices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Свойства матрицы.</title>
    <style>
        #workspace{
            height: 1300px;
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
                    <p align="center"><b>Свойства линейных операции над матрицами</b></p>
                    <p align="justify">1) <i>A + B = B + A </i>(коммутативность сложения матриц);</p>
                    <p align="justify">2) <i>(A + B) + C = A + (B + C)</i> (ассоциативность сложения матриц);</p>
                    <p align="justify">3) <i>A + O = A;</i></p>
                    <p align="justify">4) <i>A + (–A) = O;</i></p>
                    <p align="justify">5) <i>α ⋅(βA) =(α⋅β)A</i> (ассоциативность относительно умножения чисел);</p>
                    <p align="justify">6) <i>(α+β)A =αA +βA</i> (дистрибутивность умножения на матрицу относительно сложения чисел);</p>
                    <p align="justify">7) <i>α(A + B) = αA + αB</i> (дистрибутивность умножения на число относительно сложения матриц);</p>
                    <p align="justify">8) <i>1 ⋅ A = A.</i></p>
                    <p align="center"><b>Свойства операции умножения матриц.</b></p>
                    <p align="justify">1) AE = EA = A , AO = OA = O;</p>
                    <p align="justify">2) (AB)C = A(BC) (ассоциативность умножения матриц);</p>
                    <p align="justify">3) (A + B)C = AC + BC; C(A + B) = CA + CB – дистрибутивность умножения матриц относительно сложения матриц.</p>
                    <p align="center"><b>Свойства операции транспонирования матриц.</b></p>
                    <p align="justify">1) <img src="https://latex.codecogs.com/gif.latex?(A^T)^T=A" title="(A^T)^T=A" /></p>
                    <p align="justify">2) <img src="https://latex.codecogs.com/gif.latex?(A&plus;B)^T=A^T&plus;B^T" title="(A+B)^T=A^T+B^T" /></p>
                    <p align="justify">3) <img src="https://latex.codecogs.com/gif.latex?(\alpha&space;A)^T=\alpha&space;A^T" title="(\alpha A)^T=\alpha A^T" /></p>
                    <p align="justify">4) <img src="https://latex.codecogs.com/gif.latex?(A\cdot&space;B)^T=B^T\cdot&space;A^T" title="(A\cdot B)^T=B^T\cdot A^T" /></p>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
