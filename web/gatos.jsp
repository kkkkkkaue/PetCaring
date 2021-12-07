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
        <title>PetCaring - Gatos</title>
    </head>
    <body>
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
        <div class="list-group" id="config">
            <a href="perfil.jsp"><button type="button" class="list-group-item list-group-item-action" id="lkPerfil">Perfil</button></a>
            <a href="configuracoes.jsp"><button type="button" class="list-group-item list-group-item-action">Configurações</button></a>
            <a href="naologado.jsp"><button type="button" class="list-group-item list-group-item-action"><b class="text-danger">Sair</b></button></a>
        </div>
        <ul id="Notific" class="list-group">
            <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
                The current link item
            </a>
            <a href="#" class="list-group-item list-group-item-action">A second link item</a>
            <a href="#" class="list-group-item list-group-item-action">A third link item</a>
            <a href="#" class="list-group-item list-group-item-action">A fourth link item</a>
            <a class="list-group-item list-group-item-action disabled">A disabled link item</a>
        </ul>


        <div class="container">
            <div class="row">
                <div id="bannerNome"><h3 id="ttGDR">GUIA DE RAÇAS</h3></div>
                <div id="bannerSub"><h3 id="subTT">CONHEÇA O PET IDEAL PARA VOCÊ!</h3></div>
                <div id="contentRaca">
                    <div class="badge bg-secondary" style="width: 4rem;font-size:25px;">47</div>
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
            <div class="row mx-5">
                <div class="col">

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgAbissinio"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Abissínio</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Etiópia</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3 e 5,5kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Abissínio</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgBalines"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Balinês</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Medio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Medio</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3,5 e 6kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Balinês</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgBobtailJapones"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Bobtail Japonês</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Japão</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Média</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3 a 5 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Bobtail Japonês</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgChartreux"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Chartreux</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> França</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio ou Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Média</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3 e 7kg.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Chartreux</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgCurlAmericano"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Curl
                                            Americano</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3 e 5 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Curl Americano</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgHimalaio"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Himalaio</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> India</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Medio ou Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 2 a 4kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Himalaio</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgLaPerm"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">LaPerm</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Média</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3,5 e 5,5
                                                kg.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">LaPerm</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgMauEgipcio"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Mau Egípcio</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Egito</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3,5 e 5,5
                                                kg.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Mau Egípcio</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgNorueguesDaFloresta"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Norueguês da
                                            Floresta</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Noruega</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Média</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3 a 8kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Norueguês da Floresta</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgPeloCurtoEuropeu"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Pelo curto
                                            europeu</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Suiça/Finlândia</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3 e 7kg.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Pelo curto europeu</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgRagdoll"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Ragdoll</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Média ou Longa</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 4 e 9kg.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Ragdoll</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgSagradoDaBirmania"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Sagrado da
                                            Birmânia</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Grã-Bretanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno a Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> de Média a
                                                Longa</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 4 e 8 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Sagrado da Birmânia</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgSelkirkRex"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Selkirk</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta ou Longa</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3 e 6 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Selkirk</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgSingapura"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Singapura</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Singapura</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 2 a 3kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Singapura</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgThai"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Thai</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Tailândia</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 2 a 6 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Thai</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgSRD"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Vira-Lata SRD</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Variável</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Variável</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Variável</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Variável</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Vira-Lata SRD</p>
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
                                        <div class="imagensGuia" id="imgAngora"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Angorá</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Turquia</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Média</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3,5 e 5,5kg</li>
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
                                        <div class="imagensGuia" id="imgBengal"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Bengal</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Medio e Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> 5,5 kgs.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Bengal</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgBombay"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Bombay</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Tailândia</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Medio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3,5 e 6kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Bombay</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgColorpointDePeloCurto"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Colorpoint de
                                            Pêlo Curto</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b></li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b></li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3,5 a 5,5kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Colorpoint de Pêlo Curto</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgCymric"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Cymric</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Canada</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3,5 e
                                                5,5kgs.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Cymric</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgJavanes"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Javanês</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3,5 e 5,5kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Javanês</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgMaineCoon"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Maine Coon</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Gigante</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Longa</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b>Macho: 5,9 ? 8,2
                                                kg (Adulto), Fêmea: 3,6 ? 5,4 kg (Adulto)</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Maine Coon</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgMistAustraliano"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Mist
                                            Australiano</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Austrália</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3 e 6kg.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Mist Australiano</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgPeloCurtoAmericano"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Pelo curto
                                            americano</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 4 e 7kg.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Pelo curto americano</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgPeloCurtoIngles"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Pelo curto
                                            inglês</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                provavelmente Grã-Bretanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 5 kg e 7 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Pelo curto inglês</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgOcicat"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Ocicat</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> De Médio a
                                                Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 2 e 6 Kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Ocicat</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgSavannah"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Savannah</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 8 e 10kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Savannah</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgSiames"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Siamês</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Tailândia</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 2,5 e 5 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Siamês</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgSomali"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Somali</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> semicomprido</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 4 e 6 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Somali</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgTonquines"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Tonquinês</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA,
                                                Tailândia, Canadá</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b>Entre 2,5 e 5 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Tonquinês</p>
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
                                        <div class="imagensGuia" id="imgAshera"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Ashera</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande ou
                                                Gigante</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> curto</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 12 a 15kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Ashera</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgBobtailAmericano"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Bobtail
                                            Americano</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3 a 7kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Bobtail Americano</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgBurmes"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Burmês</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Mianmar</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3,5 e
                                                5,5kgs.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Burmês</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgCornishRex"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Cornish
                                            Rex</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Reino
                                                Unido</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 2,5 e 4,5kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Cornish Rex</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgDevonRex"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Devon Rex</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Reino
                                                Unido</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 2,5 a 4</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Devon Rex</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgKorat"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Korat</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Tailândia</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b>Entre 3 a 4,5 K</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Korat</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgManx"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">Manx</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Grã-Bretanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3,5 e 5,5
                                                kg.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Manx</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgMunchkin"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Munchkin</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 2,5 e 4kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Munchkin</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgPeloCurtoBrasileiro"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Pelo curto
                                            brasileiro</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Brasil</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> 5 a 10kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Pelo curto brasileiro</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgPersa"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Persa</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Irã</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Longa</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 5 e 7 Kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Persa</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgRussoAzul"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Russo Azul</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Rússia</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3 e 6 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Russo Azul</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgScottishFold"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Scottish Fold</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Escócia</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 2 e 6 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Scottish Fold</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgSiberiano"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Siberiano</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Rússia</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> de Médio a
                                                Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Longo</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 4,5 e 9 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Siberiano</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgSphynx"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Sphynx</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Canadá</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Nenhuma</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3 e 7 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Sphynx</p>
                            </div>
                        </div>
                    </div>

                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgToyger"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Toyger</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> EUA</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Pelagem:</b> Curta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3 a 7 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Toyger</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html> 