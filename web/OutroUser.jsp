<%
    int erro;

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
    String id_usuario = (String) request.getSession().getAttribute("id_usuario");
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
        <title>PetCaring - Perfil</title>
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
                    <div class="imgBtnPerfil" id="imgBtnPerfilMaior"></div>
                </div>
                <div class="col align-self-center"align="left">
                    <ul>
                        <li><%=apelido%></li>
                        <li><%=nome%></li><br>
                        <li><%=cidade%></li><br>
                        <li><%=tel%></li>
                    </ul>
                </div>
                <div class="col">
                    <button type="button" class="btn btn-primary" id="btnEditarPerfil" data-bs-target="#exampleModal"><img id="imgEditarPerfil"></img>Editar Perfil</button>
                </div>
            </div>
        </div>

        <br>
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
                        <img class="card-img-top imgCards" id="imgPublic" alt="Card image cap">
                    </div>
                </div>
                <div id="Div1" class="col cardPublic">
                    <div class="card " style="width: 18rem;">
                        <ul class="list-group list-group-flush">
                            <a href="cadastrarPet.jsp" class="btn btn-outline-primary btn-lg ">Cadastrar</a>
                        </ul>
                        <img class="card-img-top imgCards" id="imgPublic" alt="Card image cap">
                    </div>
                </div>
                <div class="col cardPublic" >
                    <div class="card" style="width: 18rem;">
                        <ul class="list-group list-group-flush">
                            <button type="button" class="btn btn-outline-success btn-lg ">Publicado</button>
                        </ul>
                        <img class="card-img-top imgCards" src="..." alt="Card image cap">
                    </div>
                </div>
                <div class="col cardPublic" >
                    <div class="card justify-content-center align-items-center" align="center" style="border:none;width: 18rem;">
                            <button onclick="Adiciona()" id="btnAddPet" style="width:100px; background-color: white; height:100px;border:none; border-radius:5rem;" align="center" >
                                <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100"  class="bi bi-plus-circle" viewBox="0 0 16 16">
                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                </svg>
                            </button>
                    </div>
                </div>

            </div>
        </div>    
        <a href="Denuncia.jsp"><button class="position-fixed bottom-0 end-0" onclick="" type="button" id="imgBtnDenuncia"></button></a>
    </body>
</html>
<script type="text/javascript">
    $(document).ready(function () {
       $("#Div").hide('fast');
        $("#Div1").hide('fast');
        capturar("6");
      $("#btnAddPet").click(function()
       {
       $("#Div").show('fast');   
       });
     
    });
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