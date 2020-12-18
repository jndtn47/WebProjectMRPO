<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductOfVectors.aspx.cs" Inherits="WebMRPO.TheoryPages.ProductOfVectors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Произведение векторов</title>
    <style>
        #workspace{
            height: 3600px;
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
                   <h2 align="center" >Векторное произведение векторов. Смешанное произведение векторов</h2>
                   <p align="center"><b>Векторное произведение векторов</b></p>
                   <p aling="justify"><b>Определение:</b> Векторным произведением <img src="https://latex.codecogs.com/gif.latex?\left&space;[&space;\overrightarrow{a}\&space;\times&space;\overrightarrow{b}\right&space;]" title="\left [ \overrightarrow{a}\ \times \overrightarrow{b}\right ]" />
                       неколлинеарных векторов <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}" title="\overrightarrow{a}" /> и <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{b}" title="\overrightarrow{b}" />, взятых в данном порядке, 
                       называется ВЕКТОР <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{N}" title="\overrightarrow{N}" />, длина которого численно равна площади параллелограмма, построенного на данных векторах; вектор <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{N}" title="\overrightarrow{N}" /> 
                       ортогонален векторам <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}" title="\overrightarrow{a}" /> и <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{b}" title="\overrightarrow{b}" />,, 
                       и направлен так, что базис <img src="https://latex.codecogs.com/gif.latex?(\overrightarrow{a};\overrightarrow{b};\overrightarrow{N})" title="(\overrightarrow{a};\overrightarrow{b};\overrightarrow{N})" /> имеет правую ориентацию:</p>
                    <center><img src="../resources/ProductOfVectors/PVector1.PNG" width="40%" /></center>
                   <p aling="center"><b>Свойства векторного произведения векторов</b></p>
                    <center><img src="../resources/ProductOfVectors/PVector3.PNG" width="95%" /></center>
                    <center><b>Векторное произведение векторов в координатах</b></center>
                    <p aling="justify">Векторное произведение векторов <img src="https://latex.codecogs.com/gif.latex?\overline{v}(v_1;v_2;v_3)" title="\overline{v}(v_1;v_2;v_3)" /> и <img src="https://latex.codecogs.com/gif.latex?\overline{w}(w_1;w_2;w_3)" title="\overline{w}(w_1;w_2;w_3)" />
                        заданных в ортонормированном базисе <img src="https://latex.codecogs.com/gif.latex?(\overline{i};&space;\overline{j};&space;\overline{k})" title="(\overline{i}; \overline{j}; \overline{k})" /> , выражается формулой:</p>
                    <p aling="justify"><img src="https://latex.codecogs.com/gif.latex?\overrightarrow{v}\times&space;\overrightarrow{w}=\begin{vmatrix}&space;\overrightarrow{i}&space;&&space;\overrightarrow{j}&space;&&space;\overrightarrow{k}\\&space;v&space;v_1&&space;v_2&space;&&space;v_3\\&space;w_1&space;&&space;w_2&space;&&space;w_3&space;\end{vmatrix}&space;=\begin{vmatrix}&space;v_2&space;&&space;v_3\\&space;w_2&&space;w_3&space;\end{vmatrix}\cdot&space;\overrightarrow{i}-\begin{vmatrix}&space;v_1&space;&&space;v_3\\&space;w_1&space;&&space;w_3&space;\end{vmatrix}\cdot&space;\overrightarrow{j}&plus;\begin{vmatrix}&space;v_1&space;&v_2&space;\\&space;w_1&&space;w_2&space;\end{vmatrix}\cdot&space;\overrightarrow{k}" title="\overrightarrow{v}\times \overrightarrow{w}=\begin{vmatrix} \overrightarrow{i} & \overrightarrow{j} & \overrightarrow{k}\\ v v_1& v_2 & v_3\\ w_1 & w_2 & w_3 \end{vmatrix} =\begin{vmatrix} v_2 & v_3\\ w_2& w_3 \end{vmatrix}\cdot \overrightarrow{i}-\begin{vmatrix} v_1 & v_3\\ w_1 & w_3 \end{vmatrix}\cdot \overrightarrow{j}+\begin{vmatrix} v_1 &v_2 \\ w_1& w_2 \end{vmatrix}\cdot \overrightarrow{k}" /></p>
                    <p aling="justify"> Если векторы нужно умножить в другом порядке, то и строки следует поменять местами:
                        <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{w}\times&space;\overrightarrow{v}=\begin{vmatrix}&space;\overrightarrow{i}&space;&&space;\overrightarrow{j}&space;&&space;\overrightarrow{k}\\&space;v&space;w_1&space;&&space;w_2&space;&&space;w_3\\&space;v_1&&space;v_2&space;&&space;v_3&space;\end{vmatrix}" title="\overrightarrow{w}\times \overrightarrow{v}=\begin{vmatrix} \overrightarrow{i} & \overrightarrow{j} & \overrightarrow{k}\\ v w_1 & w_2 & w_3\\ v_1& v_2 & v_3 \end{vmatrix}" /></p>
                    <p aling="justify">Согласно свойствам определителя, если в определителе две строки переставить местами, то он сменит знак. Этот факт полностью соответствует свойству антикоммутативности векторного произведения.</p>
                    <p aling="justify">Данный определитель всегда раскрываем по первой строке, что продемонстрировано выше. В результате получается ВЕКТОР.</p>
                    <p aling="center"><b>Смешанное произведение векторов</b></p>
                    <p aling="justify">Смешанное произведение векторов – это произведение трёх векторов: <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}\cdot\overrightarrow{b}\cdot&space;\overrightarrow{c}" title="\overrightarrow{a}\cdot\overrightarrow{b}\cdot \overrightarrow{c}" /></p>
                    <p aling="justify"><b>Определение:</b> Смешанным произведением <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}\cdot\overrightarrow{b}\cdot&space;\overrightarrow{c}" title="\overrightarrow{a}\cdot\overrightarrow{b}\cdot \overrightarrow{c}" />
                        некомпланарных векторов <img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a},\overrightarrow{b},\overrightarrow{c}" title="\overrightarrow{a},\overrightarrow{b},\overrightarrow{c}" />,
                        взятых в данном порядке, называется объём параллелепипеда, построенного на данных векторах,
                        снабжённый знаком «+», если базис <img src="https://latex.codecogs.com/gif.latex?(\overrightarrow{a},\overrightarrow{b},\overrightarrow{c})" title="(\overrightarrow{a},\overrightarrow{b},\overrightarrow{c})" /> правый,
                        и знаком «–», если базис <img src="https://latex.codecogs.com/gif.latex?(\overrightarrow{a},\overrightarrow{b},\overrightarrow{c})" title="(\overrightarrow{a},\overrightarrow{b},\overrightarrow{c})" /> левый.</p>
                    <center><img src="../resources/ProductOfVectors/PVector4.PNG" width="50%" /></center>
                    <p aling="justify"><b>Геометрический смысл смешанного произведения.</b> Модуль смешанного произведения трех векторов <i>a,b</i> и <i>с</i> равен объёму параллелепипеда, образованного этими векторами:<p><i>Vпарал = |a · [b × c]|</i></p></p>
                    <p aling="center"><b>Смешанное произведение векторов в координатах</b></p>
                    <p aling="justify">Мы можем умножить вектора, если они указаны на координатной плоскости. Возьмем <img src="https://latex.codecogs.com/gif.latex?(\overrightarrow{a},\overrightarrow{b},\overrightarrow{c})" title="(\overrightarrow{a},\overrightarrow{b},\overrightarrow{c})" />
                    <p aling="justify">Для того, чтобы определить, чему равно произведение векторов, следует знать координаты умножаемых векторов. Для операции можно использовать такую формулу/</p>
                         <p aling="justify"><img src="https://latex.codecogs.com/gif.latex?\overrightarrow{a}\cdot&space;\overrightarrow{b}\cdot&space;\overrightarrow{c}=\begin{vmatrix}&space;a_1&space;&&space;a_2&space;&&space;a_3\\&space;b_1&space;&&space;b_2&space;&&space;b_3\\&space;c_1&space;&&space;c_2&space;&&space;c_2&space;\end{vmatrix}" title="\overrightarrow{a}\cdot \overrightarrow{b}\cdot \overrightarrow{c}=\begin{vmatrix} a_1 & a_2 & a_3\\ b_1 & b_2 & b_3\\ c_1 & c_2 & c_2 \end{vmatrix}" /></p>
                  
                 </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
