<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SurjectionInjectionBijection.aspx.cs" Inherits="WebMRPO.TheoryPages.SurjectionInjectionBijection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/StylePageTheory.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Сюръекция, инъекция и биекция</title>
    <style>
        #workspace{
            height: 1500px;
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
                    <h2 align="center"><b>Сюръекция, инъекция и биекция</b></h2>
                    <p align="justify">Правило для указания отображения <img src="https://latex.codecogs.com/gif.latex?f:X\rightarrow&space;Y" title="f:X\rightarrow Y" /> (или функцию <img src="https://latex.codecogs.com/gif.latex?f" title="f" />) 
                        можно произвольно представить стрелками. Если в множестве <i>Y</i> есть хотя бы один элемент, на который не указывает ни одна из стрелок, то это свидетельствует о том, что область значений функции <img src="https://latex.codecogs.com/gif.latex?f" title="f" />
                        не заполняет все множество <i>Y</i>, т. е. <img src="https://latex.codecogs.com/gif.latex?f(X)\subset&space;Y" title="f(X)\subset Y" />. Если же область значений <img src="https://latex.codecogs.com/gif.latex?f" title="f" /> совпадает с <i>Y</i> <img src="https://latex.codecogs.com/gif.latex?f(X)=&space;Y" title="f(X)= Y" />,
                        то такую функцию называют сюръективной, или короче — сюръекцией и говорят, что функция <img src="https://latex.codecogs.com/gif.latex?f" title="f" /> отображает множество <i>Х</i> на множество <i>Y</i></p>
                    <p align="justify">Итак, <img src="https://latex.codecogs.com/gif.latex?f:X\rightarrow&space;Y" title="f:X\rightarrow Y" /> есть сюръекция, если <img src="https://latex.codecogs.com/gif.latex?\forall&space;y\in&space;Y&space;\exists&space;x\in&space;X:f(x)=y" title="\forall y\in Y \exists x\in X:f(x)=y" /></p>
                    <p align="justify">Если к любому элементу <img src="https://latex.codecogs.com/gif.latex?y\in&space;Y" title="y\in Y" /> ведет не более одной стрелки, то <img src="https://latex.codecogs.com/gif.latex?f" title="f" />
                    называют инъективной функцией, или инъекцией. Эта функция не обязательно сюръективна, т.е. стрелки ведут не ко всем элементам множества <i>Y</i>. Итак, функция <img src="https://latex.codecogs.com/gif.latex?f:X\rightarrow&space;Y" title="f:X\rightarrow Y" /> представляет собой инъекцию, если два любых различных элемента из <i>X</i> имеют своими образами при отображении <img src="https://latex.codecogs.com/gif.latex?f" title="f" /> два различных элемента из <i>Y</i>.</p>
                   <p align="justify"><img src="https://latex.codecogs.com/gif.latex?y\in&space;f(x)\subseteq&space;Y&space;\exists&space;!x\in&space;X:f(x)=y" title="y\in f(x)\subseteq Y \exists !x\in X:f(x)=y" /></p>
                    <p align="justify">Функция является биективной, если каждый элемент кообласти отображается ровно на один элемент области определения.</p>
                    <p align="justify"><img src="https://latex.codecogs.com/gif.latex?\forall&space;y\in&space;f(x)=Y,&space;\exists&space;!x\in&space;X:f(x)=y" title="\forall y\in f(x)=Y, \exists !x\in X:f(x)=y" /></p>
                    <p align="center"><img src="../resources/SurjectionInjectionBijection/SurjectionInjectionBijection.PNG" width="80%" /></p>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
