<%@page import="Model.Dados"%>
<%@page import="java.util.ArrayList"%>
<%@page import="notificacaochat.notificacaochat"%>
<%@page import="Notificacao.Notificacao"%>
<%
    String id = (String) request.getSession().getAttribute("id_usuario");
    String apelido = (String) request.getSession().getAttribute("apelido");
    int erro;
        String idHeader = (String) request.getSession().getAttribute("id_usuario");
    int id_user = Integer.parseInt(idHeader);
    int visualizacao = 0;
    int visualizacaoAcordo = 0;
    String nomeImgPerfil = (String) request.getSession().getAttribute("NomeIMG");
    
    notificacaochat dao1 = new notificacaochat();
    ArrayList<Dados> listar1 = dao1.listar1(id_user);
    
    Notificacao daoNotfic = new Notificacao();
    ArrayList<Dados> listarNot = daoNotfic.listarNot(id_user);

    request.getSession().getAttribute("erro");
    // int erro = (Integer) session.getAttribute("erro");
    if ((Integer) session.getAttribute("erro") == null) {
        erro = 0;
    } else {
        erro = (Integer) session.getAttribute("erro");
    }
%>
<%@include file="lib/include/validacao.jsp"%>
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
        <title>PetCaring -  Cadastrar Pet</title>
         <script>
            function up(){
                'use strict';
                let photo = document.getElementById('imgPhoto');
                let file = document.getElementById('flImage');

                file.click();

                file.addEventListener('change', function(){

                    if(file.files.length <= 0)
                    {
                        return;
                    }

                     let reader = new FileReader();

                     reader.onload = function(){
                         photo.src = reader.result;
                     };

                     reader.readAsDataURL(file.files[0]);
                });
        }
        </script>
    </head>
    <body>
        <style>
            html, body {
                max-width: 100%;
                overflow-x: hidden;}
        </style>
        <div id="preloader"><div id="status"></div></div>
         <%           if (erro == 0) {
        %>
        <%@include file="lib/include/header.jsp"%>
        <%
        } else {
        %>

<input type="hidden" name="id_usuario" value="<%=idHeader%>" class="">

<nav class="navbar bg" id="navbar">
    <div class="container-fluid">
        <div class="container">
            <div class="row align-items-center">
                <div class="col">
                    <a class="navbar-brand" href="index.jsp">
                        <img src="lib/img/Brasao.png" alt="" width="50" class="d-inline-block align-text-bottom">
                        <text class="tituPet" id="tituNav" >PetCaring</text>
                    </a>
                </div>
                <div class="col-md-auto">
                    <form class="d-flex">
                        <input class="form-control align-middle" type="search" placeholder="Pesquisar" aria-label="Search">
                    </form>
                </div>
                <div class="col">
                    <a href="cuidados.jsp"><button type="button" class="imgBtn" id="btnCare" onclick="capturar(this.value)" value="1"></button></a>
                </div>
                <div class="col">
                    <a href="caes.jsp"><button type="button"  class="imgBtn" id="btnBook" onclick="capturar(this.value)" value="2" ></button></a>
                </div>
                <div class="col" >
                    <a href="index.jsp"><button type="button" class="imgBtn" id="btnHome2" onclick="capturar(this.value)" value="3"></button></a>
                </div> 
                <div class="col" >
                    <form method="post" action="visualizacaoChat">
                        <input type="hidden" name="id_user" value="<%=idHeader%>" class="">
                    <a  href="http://localhost/ChatTextoPetCaring/chatTexto/redirecionadorChat.php?idUsuar=<%=id_user%>"><button type="submit" class="imgBtn" id="btnChat" onclick="capturar(this.value)" value="4"></button></a>
                       <%
                            if (listar1.size() > 0) {
                                for (Dados Conteudo : listar1) {visualizacao++;}
                            
                        %>
                    <span class="badge bg-primary rounded-pill align-bottom "><%=visualizacao%></span>
                      <%
                                
                            }
                    %>
                    </form>
                </div>
                <div class="col" >
                <form method="post" action="VisualizacaoNotific">
                  <input type="hidden" name="id_user" value="<%=idHeader%>" class="">
                    <a  href="notificacoes.jsp"><button type="submit" class="imgBtn btn "  id="btnSino" onclick="capturar(this.value)" value="5" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="bottom" data-bs-content="Bottom popover"></button></a>
                       <%
                            if (listarNot.size() > 0) {
                                for (Dados Conteudo : listarNot) {visualizacaoAcordo++;}
                            
                        %>
                    <span class="badge rounded-pill align-items-center " style="background-color: red;"><%=visualizacaoAcordo%></span>
                      <%
                                
                            }
                    %>
                    </form>
                </div>
                <div class="col">
                    <img style="object-fit: cover;" src="lib/img/imagensUsers/<%=nomeImgPerfil%>" onclick="mostra('config')" type="button" class="imgBtnPerfil"  id="btnPerfil">
                </div>
            </div>
        </div>
    </div>
</nav>
        <%@include file="lib/include/validacao.jsp"%>
        <div class="list-group" id="config">
            <a href="<%=request.getContextPath()%>/Perfil?id_usuario=<%=id%>" method="post"><button type="button" class="list-group-item list-group-item-action" id="lkPerfil">Perfil</button></a>
            <button type="button" class="list-group-item list-group-item-action">Configurações</button>
            <a href="<%=request.getContextPath()%>/Logout"><button type="button" class="list-group-item list-group-item-action"><b class="text-danger">Sair</b></button></a>
        </div>
        <%            }
        %>

        <h1 id="tituCad" style="color:#03bb85; font-weight:bold;">Cadastrar Pet</h1>
        <div class="row justify-content-center align-items-center">
            <div style="max-width: 1300px" class="div w-50 border border-dark">
                <form id="cadastroPet" action="petcadastra" method="post" enctype="multipart/form-data">
                    <!--Informacoes do Usuario-->
                    <input type="hidden" name="id" value="<%=id%>">
                    <input type="hidden" name="apelido_usuario" value="<%=apelido%>">
                     <!--Informacoes do Usuario-->
                  <div class="row justify-content-center align-items-center">
                        <div class="text-center top-0">
                            <br>
                            <div class="imageContainer">
                                <img src="lib/img/Camera.png" onclick="up()" alt="Selecione uma imagem" id="imgPhoto">
                            </div>
                            <input type="file" id="flImage" name="fImage" accept="image/*" required>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <label for="exampleFormControlInput1" class="form-label">Nome:</label>
                                <input class="form-control" type="text" name="nomePet" style="text-align:left;" required >
                            </div>
                        </div>
                    </div>
                     <br>
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <label for="exampleFormControlInput1" class="form-label">Idade</label>
                                <select class="form-select" name="idadePet" size="1" aria-label="size 3 select example">
                                    <option selected></option>
                                    <option value="1d">01 dia</option>
                                    <option value="2ds">02 dias</option>
                                    <option value="3ds">03 dias</option>
                                    <option value="4ds">04 dias</option>
                                    <option value="5ds">05 dias</option>
                                    <option value="6ds">06 dias</option>
                                    <option value="7ds">07 dias</option>
                                    <option value="1sm">01 semana</option>
                                    <option value="2sms">02 semanas</option>
                                    <option value="3sms">03 semanas</option>
                                    <option value="1m">01 mês</option>
                                    <option value="2ms">02 meses</option>
                                    <option value="3ms">03 meses</option>
                                    <option value="4ms">04 meses</option>
                                    <option value="5ms">05 meses</option>
                                    <option value="6ms">06 meses</option>
                                    <option value="7ms">07 meses</option>
                                    <option value="8ms">08 meses</option>
                                    <option value="9ms">09 meses</option>
                                    <option value="10ms">10 meses</option>
                                    <option value="11ms">11 meses</option>
                                    <option value="1">01 ano</option>
                                    <option value="2">02 anos</option>
                                    <option value="3">03 anos</option>
                                    <option value="4">04 anos</option>
                                    <option value="5">05 anos</option>
                                    <option value="6">06 anos</option>
                                    <option value="7">07 anos</option>
                                    <option value="8">08 anos</option>
                                    <option value="9">09 anos</option>
                                    <option value="10">10 anos</option>
                                    <option value="11">11 anos</option>
                                    <option value="12">12 anos</option>
                                    <option value="13">13 anos</option>
                                    <option value="14">14 anos</option>
                                    <option value="15">15 anos</option>
                                    <option value="16">16 anos</option>
                                    <option value="+16">+16</option>
                                </select>
                            </div>
                            <div class="col">
                                <label for="exampleFormControlInput1" class="form-label">Sexo:</label>
                                <select class="form-select" name="sexoPet" aria-label="Default select example" required>
                                    <option selected></option>
                                    <option value="Macho">Macho</option>
                                    <option value="Femea">Fêmea</option>
                                </select>
                            </div>
                            <div class="col">
                                <label for="exampleFormControlInput1" class="form-label">Espécie:</label>
                                <select class="form-select" name="especiePet" aria-label="Default select example" required>
                                    <option selected></option>
                                    <option value="Cachorro">Cachorro</option>
                                    <option value="Gato">Gato</option>
                                </select>
                            </div>
                        </div>
                    </div>
                  <br>
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <label for="exampleFormControlInput1" class="form-label">Raça:</label>
                                <input class="form-control" type="text" name="racaPet" style="text-align:left;"/>
                            </div>
                            <div class="col">
                                <label for="exampleFormControlInput1" class="form-label">Status:</label>
                                <select class="form-select" name="statusPet" aria-label="Default select example">
                                    <option selected></option>
                                    <option value="Disponivel">Disponível para adoção</option>
                                    <option value="Procurado">Procurado</option>
                                </select>
                            </div>
                        </div>
                    <br>
                        <div class="row">
                            <div class="col">
                                <label for="exampleFormControlInput1" class="form-label">Descrição:</label>
                                <input class="form-control form-control-lg" type="text" name="descricaoPet" style="text-align:left;"><br>
                            </div>
                        </div>
                    </div>
                  <br>
                    <div class="row">
                        <div class="d-grid gap-2 col-6 mx-auto">
                            <button type="submit" class="btn btn-primary bt-sm" style="background-color: #03bb85; border-color: white; font-weight: bold;">Cadastrar Pet</button>
                            <br>
                            <br>
                        </div>
                    </div>
                </form>  
            </div>
        </div>
        <br>
        <!--<a href="Denuncia.jsp"><button class="position-fixed bottom-0 end-0" onclick="" type="button" id="imgBtnDenuncia"></button></a>-->
    </body>
</html> 
