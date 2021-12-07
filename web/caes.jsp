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
        <title>PetCaring - Cães</title>
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
        <%        }
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
                    <div class="badge bg-secondary" style="width: 4rem;font-size:25px;">27</div>
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
                        <div class="card" style="width: 18rem; ">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgAkita"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Akita</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Japão</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 64 e 70
                                                cm<br> para machos e 58 cm e 64 cm<br> para fêmeas</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 30 kg e 50
                                                kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Akita</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgBeagle"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Beagle</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Grã-Bretanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 33 e 44
                                                cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 10 e 15 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Beagle</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgCaneCorso"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Cane Corso</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Itália</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 64 e 68
                                                cm para machos e 60 e 64 cm para fêmeas</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 45 e 50 kg
                                                para machos e 40 e 45 kg para fêmeas</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Cane Corso</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgDalmata"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">
                                            Dálmata
                                        </h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Croácia</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Fêmea: 56 a 58 cm <br> Macho: 58 a 61 cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b>  Fêmea: 16 a 24 kg <br> Macho: 15 a 32 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">
                                    Dálmata
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgFilaBrasileiro"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Fila Brasileiro</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Brasil</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande/Gigante</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 60 e 75
                                                cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Fêmea: 57?73 kg,
                                                <br>Macho: 64?82 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Fila Brasileiro</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgLhasaApso"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Lhasa Apso</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Tibete</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Até 25 cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 4 e 7 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Lhasa Apso</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgPrBrancoSuico"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Pastor Branco
                                            Suíço</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Suíça</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 53 a 66
                                                cm.</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 30 e 40 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Pastor Branco Suíço</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgSchnauzerMinSeP"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Schnauzer
                                            Miniatura Sal e Pimenta</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Alemanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 45 e 50
                                                cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 14 e 20 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Schnauzer Miniatura Sal e Pimenta</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgStaffordshireBullTerrier"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Staffordshire
                                            <br>Bull Terrier</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Grã-Bretanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b>Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b>Entre 40 e 49
                                                cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 10 e 17 kg.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Staffordshire Bull Terrier</p>
                            </div>
                        </div>
                    </div>		

                </div>

                <div class="col my-4">
                    <div class="col">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgAmericanStaffordshireTerrier"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso fs-5 text-center">American
                                            Staffordshire Terrier</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Estados
                                                Unidos</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 46 e 48
                                                cm para os machos e 43 cm a 46cm<br> para as fêmeas</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 25 e 30 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">American Staffordshire Terrier</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgBoiadeiro"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Boiadeiro
                                            Bernês</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Suíça</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 64 e 70
                                                cm os machos e entre 58 e 66 cm as fêmeas</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 35 e 40 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Boiadeiro Bernês</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgChihuahuaPeloCurto"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Chihuahua Pelo
                                            Curto</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> México</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Nessa raça, a
                                                altura não deve ser considerada, somente o peso é levado em
                                                conta</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 1,5 e 3 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Chihuahua Pelo Curto</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgDobermann"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Dobermann</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Alemanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre e 68 cm
                                                e 72 cm para machos e 63 cm e 68 cm para fêmeas</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b>Entre 40 e 45 kg
                                                para machos e 32 e 35 kg para fêmeas</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Dobermann</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgGoldenRetriever"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Golden
                                            Retriever</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Grã-Bretanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 51 e 61
                                                cm.</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 27 e 34 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Golden Retriever</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgMaltes"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Maltês</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Provavelmente a Bacia Central do Mediterrâneo</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 20 e 25
                                                cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 3 e 4 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Maltês</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgPug"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Pug</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> China</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 25 e 30
                                                cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 6,3 e 8,1
                                                kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Pug</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgShihTzu"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Shih Tzu</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Tibete</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> 26 cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 4,5 e 7,5
                                                kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Shih Tzu</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgViraLata"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Vira-Lata</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> O
                                                vira-lata pode ter sua origem em qualquer lugar.</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> O porte vai
                                                depender dos seus pais.</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> De médio a
                                                grande</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Variável</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Vira-Lata</p>
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
                                        <div class="imagensGuia" id="imgBasset"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Basset Hound</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Grã-Bretanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 33 e 38
                                                cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Aproximadamente
                                                20 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Basset Hound</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgCollie"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Border Collie</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Grã-Bretanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Em torno de 53
                                                cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 14 kg e 22
                                                kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Border Collie</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgChowChow"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Chow Chow</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> China</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 48 e 56
                                                cm o macho e entre 46 e 51 cm as fêmeas</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 20 e 31 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Chow Chow</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgDogoArgentino"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Dogo Argentino</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Argentina</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Médio</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 62 e 68
                                                cm os machos e entre 60 e 65 cm as fêmeas</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 40 e 50 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Dogo Argentino</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgLabradorRetriever"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Labrador
                                            Retriever</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Grã-Bretanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 54 e 57
                                                cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 25 e 32 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Labrador Retriever</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgPrBelgaMalinois"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Pastor Belga
                                            Malinois</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b> Bélgica</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 56 e 66
                                                cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 20 e 30 kg.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Pastor Belga Malinois</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgRottweiler"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Rottweiler</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Alemanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Grande</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 56 e 58
                                                cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 42 e 50 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Rottweiler</p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgSpitzAlemaoAnao"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">
                                            Spitz Alemão Anão<br>Lulu da Pomerânia
                                        </h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Alemanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Entre 20 e 27
                                                cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Entre 1 e 3 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">
                                    Spitz Alemão Anão</br>&#40;Lulu da Pomerânia&#41;
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col my-4">
                        <div class="card" style="width: 18rem">
                            <div class="flip-box">
                                <div class="flip-box-inner">
                                    <div class="flip-box-front" class="imagensGuia">
                                        <div class="imagensGuia" id="imgYorkshireTerrier"></div>
                                    </div>
                                    <div class="flip-box-back" class="imagensGuia">
                                        <h2 class="NomeDaRacaNoVerso text-center">Yorkshire
                                            Terrier</h2>
                                        <ul id="ImgItemPais">
                                            <li><b class="CorDosTopicos">País de Origem:</b>
                                                Grã-Bretanha</li>
                                        </ul>
                                        <ul id="ImgItemPorte">
                                            <li><b class="CorDosTopicos">Porte:</b> Pequeno</li>
                                        </ul>
                                        <ul id="ImgItemTamanho">
                                            <li><b class="CorDosTopicos">Tamanho:</b> Em média, 23
                                                cm</li>
                                        </ul>
                                        <ul id="ImgItemPeso">
                                            <li><b class="CorDosTopicos">Peso:</b> Até 3,2 kg</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center">
                                <p class="card-text">Yorkshire Terrier</p>
                            </div>
                        </div>
                    </div>	
                </div>
            </div>
        </div>
    </body>
</html> 
<script type="text/javascript">
    $(document).ready(function () {
        capturar("2");
    });
</script>