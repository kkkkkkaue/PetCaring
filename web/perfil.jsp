<%@page import="java.util.*"%>
<%@page import="Model.Dados" %>
<%@page import="listarPetUsuario.listarPetUsuario" %>
<%@include file="lib/include/validacao.jsp"%>
<%    int erro;

    String cargo = (String) request.getSession().getAttribute("cargo");

    request.getSession().getAttribute("erro");
    // int erro = (Integer) session.getAttribute("erro");
    if ((Integer) session.getAttribute("erro") == null) {
        erro = 0;
    } else {
        erro = (Integer) session.getAttribute("erro");
    }

    String apelido = (String) request.getSession().getAttribute("username");
    String nome = (String) request.getSession().getAttribute("nome");
    String cidade = (String) request.getSession().getAttribute("cidade");
    String tel = (String) request.getSession().getAttribute("telefone");
    String nomeImgPerf = (String) request.getSession().getAttribute("NomeIMG");
    String idPetPerfil = (String) request.getSession().getAttribute("id_user");
    int idPetPerfil2 = Integer.parseInt(idPetPerfil);

    listarPetUsuario dao = new listarPetUsuario();
    ArrayList<Dados> lista = dao.listar(idPetPerfil2);
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
        <link href="/your-path-to-fontawesome/css/all.css" rel="stylesheet">
       <script src="https://kit.fontawesome.com/55378b56ef.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
        <title>PetCaring - Perfil</title>
    </head>
    <body>
        <div id="preloader">
            <div id="status"></div>
        </div>

        <%            if (erro == 0) {
        %>
        <%@include file="lib/include/header.jsp"%>
        <%
        } else {
        %>
        <%@include file="lib/include/headerLogado.jsp"%>
        <%            }
        %>
        <br>
        <div class="container" id="arranjoPerfil">
            <div class="row">
                <div class="col-3">
                    <img style="width:275px; height:275px; border-radius:10.0rem; border:3px solid #D3D3D3; object-fit: cover;" src="lib/img/imagensUsers/<%=nomeImgPerf%>" />
                </div>
                <div class="col-6 align-self-center"align="left">
                    <p>
                    <ul><h2><b>Informações Pessoais</b></h2></ul>
                    <ul><h4>Apelido: <b><%=apelido%></b></h4></ul>
                    <ul><h4>Nome: <b><%=nome%></b></h4></ul>
                    <ul><h4>Cidade: <b><%=cidade%></b></h4></ul>
                    <ul><h4><i class="fas fa-mobile-alt"></i> Telefone: <b><%=tel%></b></h4></ul>
                    </p>     
                </div>
                <div class="col">
                    <a href="editarPerfil.jsp"><button style="background-color: #1ba988; border-color: #1ba988;" type="button" class="btn btn-primary" id="btnEditarPerfil" data-bs-target="#exampleModal"><img id="imgEditarPerfil"></img>Editar Perfil</button></a>
                </div>
            </div>
        </div>
                    <form method="POST">
                   <input type="text" name="id_ParaUsuario" value="<%=idPetPerfil%>" hidden/>
        <div class="col" style="margin-left: 68%; ">
            <a href="documentacao.jsp"><button style="background-color: #1ba988; border-color: #1ba988;" type="button" class="btn btn-primary"><img src="lib/img/DocB.png" style="height: 30px; width: 30px; object-fit: cover;"></img>&nbspDocumentos</button></a>
        </div>
                        </form>
        
        <br>
        <div style="background-color: black; width:100%; height: 3px; "></div>
        <br>
        <h4 id="tituPublic">Publicações Pets</h4>
        <br>
        <div id="DivMae" class="container-fluid containerPuclic">
            <div class="row" aling="center">
                <div id='Div'class="col cardPublic">
                    <div class="card " style="width: 18rem;">
                        <ul class="list-group list-group-flush">
                            <a href="cadastrarPet.jsp" class="btn btn-outline-primary btn-lg ">Cadastrar</a>
                        </ul>
                        <img class="card-img-top imgCards" id="imgPublic" alt="Card image cap" src="lib/img/Erro1.png" style="max-height: 200px; min-height: 190px; min-width: 280px; max-width: 290px; object-fit: cover;">
                    </div>
                </div>
                <%
                    if (lista.size() > 0) {
                        for (Dados conteudo : lista) {
                %>
                <div class="col cardPublic" >
                    <div class="card" style="width: 18rem;">
                        <ul class="list-group list-group-flush">
                            <button type="button" class="btn btn-outline-success btn-lg ">Publicado</button>
                        </ul>
                        <img class="card-img-top imgCards" src="lib/img/petCadastrados/<%=conteudo.getDiretorioIMG()%>" alt="Card image cap" style="max-height: 200px; min-height: 190px; min-width: 280px; max-width: 290px; object-fit: cover;">
                    </div>
                </div>
                <%
                    }
                } else {
                %>
                <div id="msg" class="row justify-content-center align-items-center">
                    <div id="alertError" class="col-md-9 alert alert-dark text-center" role="alert"><h5>Você ainda não cadastrou nenhum pet!</h5></div>
                </div>
                <%
                    }
                    if (lista.size() < 5 && cargo.equals("pf") || cargo.equals("pj")) {
                %>
                <div class="col cardPublic" >
                    <div class="card justify-content-center align-items-center" align="center" style="border:none;width: 18rem;">
                        <button onclick="esconderMsg()" id="btnAddPet" style="width:100px; background-color: white; height:100px;border:none; border-radius:5rem;" align="center" >
                            <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100"  class="bi bi-plus-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                            </svg>
                        </button>
                    </div>
                </div>
                <%
                } else if (cargo.equals("ong")) {
                %>
                <div class="col cardPublic" >
                    <div class="card justify-content-center align-items-center" align="center" style="border:none;width: 18rem;">
                        <button onclick="esconderMsg()" id="btnAddPet" style="width:100px; background-color: white; height:100px;border:none; border-radius:5rem;" align="center" >
                            <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100"  class="bi bi-plus-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                            </svg>
                        </button>
                    </div>
                </div>
                <%
                } else {
                %>
                <div class="row justify-content-center align-items-center">
                    <div style="margin-top: 70px;"  id="alertError" class="col-md-9 alert alert-dark text-center" role="alert"><h5>Você alcançou o limite de pets cadastrados! &nbsp;&nbsp;&nbsp;</h5></div>
                </div>
                <%
                    }
                %>

            </div>
        </div>    
       <!-- <a href="Denuncia.jsp"><button class="position-fixed bottom-0 end-0" onclick="" type="button" id="imgBtnDenuncia"></button></a>-->
    </body>
</html>
<script type="text/javascript">
    $(document).ready(function () {
        $("#Div").hide('fast');
        $("#Div1").hide('fast');
        capturar("6");
        $("#btnAddPet").click(function ()
        {
            $("#Div").show('fast');
        });

    });
    function esconderMsg() {
        var alerte = document.getElementById('msg');
        alerte.style.display = 'none';
    }
    ;
</script>

<!-- 
<div id="publicCards" >
<div class="card card2" style="width: 18rem;">
<ul class="list-group list-group-flush">
    <button type="button" class="btn btn-outline-success btn-lg btn-block">Publicado</button>
</ul>
  <img class="card-img-top imgCards" src="..." alt="Card image cap">
</div>

<div class="card card2" style="width: 18rem;">
<ul class="list-group list-group-flush">
<button type="button" class="btn btn-outline-primary btn-lg btn-block">Publicar</button>
</ul>
  <img class="card-img-top imgCards" src="..." alt="Card image cap">
</div>
--> 