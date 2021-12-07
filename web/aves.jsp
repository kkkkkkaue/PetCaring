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
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="img/Logo.png"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@1,700&family=Nunito:ital,wght@1,700&family=Yellowtail&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="lib/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="lib/css/style.css">
        <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <title>PetCaring - Aves</title>
    </head>
    <body>
        <script>
            addNav();
            $(document).ready(function () {
                capturar("2");
            });
        </script>
        <div class="container">
            <div class="row">
                <div id="bannerNome"><h3 id="ttGDR">GUIA DE RAÇAS</h3></div>
                <div id="bannerSub"><h3 id="subTT">CONHEÇA O PET IDEAL PARA VOCÊ!</h3></div>
                <div id="contentRaca">
                    <div class="badge bg-secondary" style="width: 4rem;font-size:25px;">06</div>
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
                                    <div class="imagensGuia" id="imgCanario"></div>
                                </div>
                                <div class="flip-box-back" class="imagensGuia">
                                    <h2 class="NomeDaRacaNoVerso text-center">Calopsita</h2>
                                    <ul id="ImgItemPais">
                                        <li><b class="CorDosTopicos">País de Origem:</b> Austrália</li>
                                    </ul>
                                    <ul id="ImgItemComida">
                                        <li><b class="CorDosTopicos">Comida:</b> Mix de sementes</li>
                                    </ul>
                                    <ul id="ImgItemPeso">
                                        <li><b class="CorDosTopicos">Peso:</b> 70 a 120g</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body text-center">
                            <p class="card-text">Calopsita</p>
                        </div>
                    </div>
                </div>
                <div class="col my-4">
                    <div class="card" style="width: 18rem">
                        <div class="flip-box">
                            <div class="flip-box-inner">
                                <div class="flip-box-front" class="imagensGuia">
                                    <div class="imagensGuia" id="imgManon"></div>
                                </div>
                                <div class="flip-box-back" class="imagensGuia">
                                    <h2 class="NomeDaRacaNoVerso text-center">Manon</h2>
                                    <ul id="ImgItemPais">
                                        <li><b class="CorDosTopicos">País de Origem:</b> Japão</li>
                                    </ul>
                                    <ul id="ImgItemComida">
                                        <li><b class="CorDosTopicos">Comida:</b> Alpiste, Painço e Senha</li>
                                    </ul>
                                    <ul id="ImgItemPeso">
                                        <li><b class="CorDosTopicos">Peso:</b> 10g</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body text-center">
                            <p class="card-text">Manon</p>
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
                                    <div class="imagensGuia" id="imgMandarim"></div>
                                </div>
                                <div class="flip-box-back" class="imagensGuia">
                                    <h2 class="NomeDaRacaNoVerso text-center">Diamante Mandarim</h2>
                                    <ul id="ImgItemPais">
                                        <li><b class="CorDosTopicos">País de Origem:</b> Austrália</li>
                                    </ul>
                                    <ul id="ImgItemComida">
                                        <li><b class="CorDosTopicos">Comida:</b> Alpiste e Linhaça</li>
                                    </ul>
                                    <ul id="ImgItemPeso">
                                        <li><b class="CorDosTopicos">Peso:</b> 12g</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body text-center">
                            <p class="card-text">Diamante Mandarim</p>
                        </div>
                    </div>
                </div>
                <div class="col my-4">
                    <div class="card" style="width: 18rem">
                        <div class="flip-box">
                            <div class="flip-box-inner">
                                <div class="flip-box-front" class="imagensGuia">
                                    <div class="imagensGuia" id="imgGould"></div>
                                </div>
                                <div class="flip-box-back" class="imagensGuia">
                                    <h2 class="NomeDaRacaNoVerso text-center">Diamante de Gould</h2>
                                    <ul id="ImgItemPais">
                                        <li><b class="CorDosTopicos">País de Origem:</b> Autrália</li>
                                    </ul>
                                    <ul id="ImgItemComida">
                                        <li><b class="CorDosTopicos">Comida:</b> Mix de sementes</li>
                                    </ul>
                                    <ul id="ImgItemPeso">
                                        <li><b class="CorDosTopicos">Peso:</b> 10 a 12g</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body text-center">
                            <p class="card-text">Diamante de Gould</p>
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
                                    <div class="imagensGuia" id="imgCalopsita"></div>
                                </div>
                                <div class="flip-box-back" class="imagensGuia">
                                    <h2 class="NomeDaRacaNoVerso text-center">Canário</h2>
                                    <ul id="ImgItemPais">
                                        <li><b class="CorDosTopicos">País de Origem:</b> Portugal</li>
                                    </ul>
                                    <ul id="ImgItemComida">
                                        <li><b class="CorDosTopicos">Comida:</b> Mix de sementes</li>
                                    </ul>
                                    <ul id="ImgItemPeso">
                                        <li><b class="CorDosTopicos">Peso:</b> 8,4 a 24g</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body text-center">
                            <p class="card-text">Canário</p>
                        </div>
                    </div>
                </div>
                <div class="col my-4">
                    <div class="card" style="width: 18rem">
                        <div class="flip-box">
                            <div class="flip-box-inner">
                                <div class="flip-box-front" class="imagensGuia">
                                    <div class="imagensGuia" id="imgPeriquito"></div>
                                </div>
                                <div class="flip-box-back" class="imagensGuia">
                                    <h2 class="NomeDaRacaNoVerso text-center">Periquito</h2>
                                    <ul id="ImgItemPais">
                                        <li><b class="CorDosTopicos">País de Origem:</b> Austrália</li>
                                    </ul>
                                    <ul id="ImgItemComida">
                                        <li><b class="CorDosTopicos">Comida:</b> Painço e Níger</li>
                                    </ul>
                                    <ul id="ImgItemPeso">
                                        <li><b class="CorDosTopicos">Peso:</b> 40g</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body text-center">
                            <p class="card-text">Periquito</p>
                        </div>
                    </div>
                </div>		
            </div>
        </div>
    </div>
</body>
</html> 