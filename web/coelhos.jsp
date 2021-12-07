<%
    int erro;

    request.getSession().getAttribute("erro");
    // int erro = (Integer) session.getAttribute("erro");
    if ((Integer) session.getAttribute("erro") == null) {
        erro = 0;
    } else {
        erro = (Integer) session.getAttribute("erro");
    }
%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <link rel="shortcut icon" href="lib/img/Logo.png"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@1,700&family=Nunito:ital,wght@1,700&family=Yellowtail&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="lib/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="lib/css/style.css">
        <script type="text/javascript" src="lib/js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript" src="lib/js/script.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <title>PetCaring - Coelho</title>
    </head>
    <body>
        <div id="preloader">
            <div id="status"></div>
        </div>
        <div class="collapse" id="navbarToggleExternalContent">
            <div class="bg-dark p-4">
                <h5 class="text-white h4">Collapsed content</h5>
                <span class="text-muted">Toggleable via the navbar brand.</span>
            </div>
        </div>
        <%
            if (erro == 0) {
        %>
        <%@include file="lib/include/header.jsp"%>
        <%
        } else {
        %>
        <%@include file="lib/include/headerLogado.jsp"%>
        <%            }
        %>
        <div class="container">
            <div class="row">
                <div id="bannerNome"><h3 id="ttGDR">GUIA DE RAÇAS</h3></div>
                <div id="bannerSub"><h3 id="subTT">CONHEÇA O PET IDEAL PARA VOCÊ!</h3></div>
                <div id="contentRaca">
                    <div class="badge bg-secondary" style="width: 4rem;font-size:25px;">17</div>
                    <div class="badge bg-success" style="width: 8rem; font-size:25px;">
                        RAÇAS
                    </div>
                </div>
            </div>
        </div>
        <div class="container">	
            <div class="row">
                <div class="col">
                    <div class="btn-toolbar " role="toolbar" aria-label="Toolbar with button groups">
                        <div class="btn-group me-2 " role="group" aria-label="First group">
                            <div class="row">
                                <div class="col">
                                    <a href="caes.jsp"><button type="button"class="btn btn-success">CÃES</button></a>
                                    <a href="gatos.jsp"><button type="button" class="btn btn-success">GATOS</button></a>
                                    <a href="hamster.jsp"><button type="button" class="btn btn-success active">HAMSTER</button></a>
                                    <a href="aves.jsp"><button type="button" class="btn btn-success">AVES</button></a>
                                    <a href="coelhos.jsp"><button type="button" class="btn btn-success">COELHOS</button></a>
                                </div>	
                            </div>	
                        </div>
                        <!--<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                            <div class="btn-group me-2" role="group" aria-label="First group">
                                <button type="button" class="btn btn-success">A</button>
                                <button type="button" class="btn btn-success">B</button>
                                <button type="button" class="btn btn-success">C</button>
                                <button type="button" class="btn btn-success">D</button>
                                <button type="button" class="btn btn-success">E</button>
                                <button type="button" class="btn btn-success">F</button>
                                <button type="button" class="btn btn-success">G</button>
                                <button type="button" class="btn btn-success">H</button>
                                <button type="button" class="btn btn-success">I</button>
                                <button type="button" class="btn btn-success">J</button>
                                <button type="button" class="btn btn-success">K</button>
                                <button type="button" class="btn btn-success">L</button>
                                <button type="button" class="btn btn-success">M</button>
                                <button type="button" class="btn btn-success">N</button>
                                <button type="button" class="btn btn-success">O</button>
                                <button type="button" class="btn btn-success">P</button>
                                <button type="button" class="btn btn-success">Q</button>
                                <button type="button" class="btn btn-success">R</button>
                                <button type="button" class="btn btn-success">S</button>
                                <button type="button" class="btn btn-success">T</button>
                                <button type="button" class="btn btn-success">U</button>
                                <button type="button" class="btn btn-success">V</button>
                                <button type="button" class="btn btn-success">W</button>
                                <button type="button" class="btn btn-success">X</button>
                                <button type="button" class="btn btn-success">Y</button>
                                <button type="button" class="btn btn-success">Z</button>
                            </div>
                        </div>-->
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row mx-4">
                <div class="col">
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColAngora"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Angorá</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Turquia</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Longa</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> A fêmea pode chegar até 3,5Kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Angorá</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColCheckered"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Gigante Quadriculado</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> França</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> de curta a média</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> 5 a 5,4 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Gigante Quadriculado</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColFrench"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">French lop</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> França</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Média</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> 4,5 a 6,8 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">French lop</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColLeon"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Leão</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> França e Bélgica</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Longa</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b>  1,3 a 2kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Leão</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColMiniLop"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Mini Lop</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Alemanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Média</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> até 3Kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Mini Lop</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColPolones"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Polonês</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Incerto</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> 1,5 Kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Polonês</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColIngles"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Borboleta Inglês</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Incerto</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> 2 a 3 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Borboleta Inglês</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColHotot"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Dwarf hotot</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> França</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Média</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b>  4,1 a 5 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Dwarf hotot</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColFlandres"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Gigante de Flandres</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Bélgica</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> 5 a 10 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Gigante de Flandres</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgLebBelg"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Lebre Belga</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Bélgica</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> 2,7 a 4,1kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Lebre Belga</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColMiniRex"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Mini rex</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> França</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> 2,04 Kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Mini rex</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColRex"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Rex</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> França</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> 4,5 Kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Rex</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">	
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColCalifornia"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Califórnia</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Estados Unidos</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Média</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> 4 a 5 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Califórnia</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColEnglishLop"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">English Lop</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Incerto</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio a Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b>  Média</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> 4,5 a 5,4 quilos</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">English Lop</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColJersey"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Jersey Wooly</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Estados Unidos</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Longa</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> até 1,5kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Jersey Wooly</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColLionLop"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Mini Lion Lop</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Inglaterra</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Longa</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> 1,6 Kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Mini Lion Lop</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColDwarf"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Netherland Dwarf</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Holanda</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Média</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> 1,4 Kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Netherland Dwarf</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>