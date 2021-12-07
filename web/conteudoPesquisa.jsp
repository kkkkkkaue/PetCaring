<%@page import="Model.Dados" %>
<%@page import="Pesquisar.Pesquisar" %>
<%@page import="java.util.ArrayList" %>
<%
    String conteudo = request.getParameter("conteudoPesquisa");
    int erro;

    request.getSession().getAttribute("erro");
    // int erro = (Integer) session.getAttribute("erro");
    if ((Integer) session.getAttribute("erro") == null) {
        erro = 0;
    } else {
        erro = (Integer) session.getAttribute("erro");
    }
    
    int id_usuario;
    Pesquisar dao = new Pesquisar();
    ArrayList<Dados> lista = dao.listar(conteudo); 
%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <link rel="shortcut icon" href="lib/img/Logo.png"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?famPily=Asap:ital,wght@1,700&family=Nunito:ital,wght@1,700&family=Yellowtail&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="lib/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="lib/css/style.css">
        <script type="text/javascript" src="lib/js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript" src="lib/js/script.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <title>PetCaring - Resultado da pesquisa</title>
    </head>
    <body>
    <div id="preloader">
        <div id="status"></div>
    </div>
    <!--Efeito Fade-->
    <div id="efeitoFade" onclick="esconder()">
    </div>
    <%
    if (erro == 0) {
    %>
        <%@include file="lib/include/header.jsp"%>
    <%
    } 
    else {
    %>
        <%@include file="lib/include/headerLogado.jsp"%>
    <%
    }
    %>
    <!---->
    <!--Janela Modal-->
    <div id="modal1">
        <div class="list-group list2">
            <button type="button" class="list-group-item list-group-item-action" onclick=""><b class="text-danger">Denunciar</b></button>
            <a class="list-group-item list-group-item-action"><b class="text-danger">Desfazer Amizade</b></a>
            <a href="publicacao.jsp" class="list-group-item list-group-item-action">Ir para a publicacão</a>
            <a class="list-group-item list-group-item-action">Copiar link</a>
            <a href="#" class="list-group-item list-group-item-action" onclick="esconder()">Sair</a>
        </div>
    </div>
    <!---->
    <div class="col container">
        <div class="col-4">
            <div class="list-group" id="config">
                <a href="perfil.html"><button type="button" class="list-group-item list-group-item-action" id="lkPerfil">Perfil</button></a>
                <a href="alterarPerfil.html"><button type="button" class="list-group-item list-group-item-action">Configurações</button></a>
                <a href="naologado.html"><button type="button" class="list-group-item list-group-item-action"><b class="text-danger">Sair</b></button></a>
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
        </div>
        <div>
            <%
            if(lista.size() > 0){
                for(Dados Conteudo : lista) { 
            %>
            <div class="row justify-content-center">
                <div class="card mt-4" id="WapperCard" >
                        <div class="row">
                            <div class="col-10 align-left"><a href="postagem.jsp" id="nomePet" style="text-decoration: none;color: black; font-weight: bold; font-size: 18px;"><%=Conteudo.getNome()%></a></div>
                            <!--<div class="col-1"><a href="perfil.html"><button href="perfil.html" onclick="" type="button" class="BtnPerfilMenor"></button></a></div>-->
                            <div class="col-2 align-right" id="menu3"><button class="menuPoints" onclick="mostra2()" type="button"></button></div>
                        </div>

                    <div class="position-relative">
                        <div class="position-absolute top-50 start-50 translate-middle" id="divLike"></div>
                        <img src="lib/img/petCadastrados/<%=Conteudo.getDiretorioIMG()%>" class="card-img" alt="..." style="max-height: 360px;" />
                        <%
                     if(session.getAttribute("logado") != "TRUE"){
                     
                    %> 
                    <div class="position-absolute bottom-0 end-0"><a href="login.jsp"><button type="button" class="btnAdotar btn btn-success m-3 text-light"><b>Contatar</b></button></a></div>
                    <%
                     }  
                     else{
                    %>
                         <div class="position-absolute bottom-0 end-0"><a href="http://localhost/ChatTextoPetCaring/chatTexto/chat.php?paraUser=<%=Conteudo.getId_Usuario()%>"><button type="button" class="btnAdotar btn btn-success m-3 text-light"><b>Contatar</b></button></a></div>
                     <%
                     }
                    %>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item w-100">
                            <div class="row">
                                <div class="col-2 text-center"><button class="btnReact" id="btnLike" title="Like" onclick="curtir('2')"></button>0</div>
                                <div class="col-2"><button onclick="" class="btnReact" id="comment" title="Comentar"></button></div>
                                <div class="col-2"><button onclick="" class="btnReact" id="share" title="Compartilhar"></button> </div>
                                <div class="col-6 align-right"><p class="fs-5 fw-bold text-center text-warning">Status:&nbsp<%=Conteudo.getStatus()%></p></div>
                            </div>
                        </li>
                        <li class="descricao list-group-item w-100">
                            <div class="row">
                                <div class="col-6">Espécie:&nbsp<b><%= Conteudo.getEspecie()%></b></div>
                                <div class="col-6">Idade:&nbsp<b><%=Conteudo.getIdade()%></b></div>

                                <!-- Force next columns to break to new line -->
                                <div class="w-100"></div>
                                <div class="col-6">Raça:&nbsp<b><%=Conteudo.getRaca()%></b></div>
                                <div class="col-6">Sexo:&nbsp<b><%=Conteudo.getSexo()%></b></div>
                            </div>
                        </li>
                        <div class="col-12">Apelido do Usuario:&nbsp<b><a style="color: black; text-decoration: none;" href="OutroUser.jsp?<%=Conteudo.getId_Usuario()%>"><%=Conteudo.getApelido_u()%></b></div>
                        <input type="text" id="doUser" value=<%=Conteudo.getId()%> hidden />
                    </ul>
                </div>
            </div>
            <br>
            <%
                }
            }
            else{
            %>
            <br>
            <br>
            <div style="margin-left: 25%" class="row justify-content-center align-items-center w-50"  >
                <div class="alert alert-danger text-center" role="alert">
                    Nenhum resultado foi encontrado!
                </div>
            </div>    
            <%
            }
            %> 
        </div>
    </div>

    <a href="denuncia.html"><button class="position-fixed bottom-0 end-0" onclick="" type="button" id="imgBtnDenuncia"></button></a>
</body>
</html> 
<script type="text/javascript">
    $(document).ready(function () {
        capturar("3");
    });
</script>