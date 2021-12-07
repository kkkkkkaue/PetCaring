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
        <link rel="shortcut icon" href="lib/img/Logo.png"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@1,700&family=Nunito:ital,wght@1,700&family=Yellowtail&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="lib/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="lib/css/style.css">
        <script type="text/javascript" src="lib/js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript" src="lib/js/script.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <title>PetCaring - Cuidados</title>
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
        <div class="container-xl">
            <div class="row">
                <div class="col-10 ">
                    <br>
                    <h1 id="ttDicas" style="margin-left: 30%;">Dicas e Cuidados</h1>
                    <br>
                    <div class="row">
                        <div class="col g-4">
                            <div class="card " id="cardCare" style="width:20rem;">
                                <a  href="conteudoCuidados.jsp?num_cont=1">
                                    <img class="card-img-top" src="lib/img/Cuidados/a.jpg">
                                    <div class="card-body">
                                        <small class="ttPequeno">BOAS IDEIAS PARA CACHORRO</small>
                                        <h5>Meu cachorro enjoa da ração - o que fazer?</h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col g-4">
                            <div class="card" id="cardCare" style="width:20rem;">
                                <a  href="conteudoCuidados.jsp?num_cont=2"  >
                                    <img class="card-img-top" src="lib/img/Cuidados/b.jpg">
                                    <div class="card-body">
                                        <small class="ttPequeno">BOAS IDEIAS PARA CACHORRO</small>
                                        <h5>Como entreter o cachorro dentro de casa</h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col g-4">
                            <div class="card " id="cardCare" style="width:20rem;">
                                <a  href="conteudoCuidados.jsp?num_cont=3"  >
                                    <img class="card-img-top" src="lib/img/Cuidados/z.jpg">
                                    <div class="card-body">
                                        <small class="ttPequeno">CONVIVÊNCIA</small>
                                        <h5>Desobediência canina ? Por que acontece?</h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col g-4">
                            <div class="card" id="cardCare" style="width:20rem;">
                                <a  href="conteudoCuidados.jsp?num_cont=4"  >
                                    <img class="card-img-top" src="lib/img/Cuidados/d.png">
                                    <div class="card-body">
                                        <small class="ttPequeno">ADESTRAMENTO</small>
                                        <h5>Como ensinar xixi e cocô no lugar certo?</h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col g-4">
                            <div class="card " id="cardCare" style="width:20rem;">
                                <a  href="conteudoCuidados.jsp?num_cont=5"  >
                                    <img class="card-img-top" src="lib/img/Cuidados/y.jpg">
                                    <div class="card-body">
                                        <small class="ttPequeno">CURIOSIDADE</small>
                                        <h5>Como é a visão de um gato?</h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col g-4">
                            <div class="card" id="cardCare" style="width:20rem;">
                                <a  href="conteudoCuidados.jsp?num_cont=6"  >
                                    <img class="card-img-top" src="lib/img/Cuidados/e.jpg">
                                    <div class="card-body">
                                        <small class="ttPequeno">ALIMENTAÇÃO</small>
                                        <h5>Gato pode comer fruta?</h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col g-4">
                            <div class="card " id="cardCare" style="width:20rem;">
                                <a  href="conteudoCuidados.jsp?num_cont=7"  >
                                    <img class="card-img-top" src="lib/img/Cuidados/f.jpg">
                                    <div class="card-body">
                                        <small class="ttPequeno">CUIDADO</small>
                                        <h5>Tela de proteção para gato</h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col g-4">
                            <div class="card" id="cardCare" style="width:20rem;">
                                <a  href="conteudoCuidados.jsp?num_cont=8"  >
                                    <img class="card-img-top" src="lib/img/Cuidados/g.jpg">
                                    <div class="card-body">
                                        <small class="ttPequeno">SAÚDE</small>
                                        <h5>Gato vomitando? Saiba as causas...</h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col g-4">
                            <div class="card " id="cardCare" style="width:20rem;">
                                <a  href="conteudoCuidados.jsp?num_cont=9"  >
                                    <img class="card-img-top" src="lib/img/Cuidados/h.jpg">
                                    <div class="card-body">
                                        <small class="ttPequeno">CURIOSIDADE</small>
                                        <h5>Hamster:5 cuidados básicos para manter seu pet saudável</h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col g-4">
                            <div class="card" id="cardCare" style="width:20rem;">
                                <a  href="conteudoCuidados.jsp?num_cont=10"  >
                                    <img class="card-img-top" src="lib/img/Cuidados/i.jpg">
                                    <div class="card-body">
                                        <small class="ttPequeno">CUIDADOS</small>
                                        <h5>Aves domésticas ? Cuidados especiais para o bem-estar</h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col g-4">
                            <div class="card " id="cardCare" style="width:20rem;">
                                <a  href="conteudoCuidados.jsp?num_cont=11"  >
                                    <img class="card-img-top" src="lib/img/Cuidados/j.jpg">
                                    <div class="card-body">
                                        <small class="ttPequeno">CUIDADOS</small>
                                        <h5>Cuidados que todo pai ou mãe de coelho deve ter...</h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col g-4">
                            <div class="card" id="cardCare" style="width:20rem;">
                                <a  href="conteudoCuidados.jsp?num_cont=12"  >
                                    <img class="card-img-top" src="lib/img/Cuidados/k.jpg">
                                    <div class="card-body">
                                        <small class="ttPequeno">CUIDADOS</small>
                                        <h5>Como escolher o pet ideal?</h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>     
                </div>
            </div>
        </div>    </body>
</html> 
<script type="text/javascript">
    $(document).ready(function () {
        capturar("1");
    });
</script>