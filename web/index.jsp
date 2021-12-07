<%@page import="Model.Dados" %>
<%@page import="listarPets.listarPets" %>
<%@page import="java.util.ArrayList" %>
<%
    int erro;

    request.getSession().getAttribute("erro");
    // int erro = (Integer) session.getAttribute("erro");
    if ((Integer) session.getAttribute("erro") == null) {
        erro = 0;
    } else {
        erro = (Integer) session.getAttribute("erro");
    }

    listarPets dao = new listarPets();
    ArrayList<Dados> lista = dao.listar();
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
        <title>PetCaring - Home</title>
            <script>
        let copiarTexto = () =>{
                //captura o elemento input
                const inputLink = document.querySelector("#link");

                //seleciona todo o texto do elemento
                inputLink.select();
                //executa o comando copy
                //aqui é feito o ato de copiar para a area de trabalho com base na seleção
                document.execCommand('copy');
                esconder();
            };
    </script>
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
        } else {
        %>
        <%@include file="lib/include/headerLogado.jsp"%>
        <%        }
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
                <div>
                    <div class="row justify-content-center">
                        <%
                            if (lista.size() > 0) {
                                for (Dados conteudo : lista) {
                        %>
                                <!--Janela Modal Compartilhar Link-->
        <div id="compartilharPublicacao">
            <div class="list-group list2">
                <div class="input-group mb-2">
                    <span class="input-group-text" id="inputGroup-sizing-default">URL</span>
                    <input id="link" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="http://localhost:8080/PetCaring/publicacao.jsp?codigoPet=<%=conteudo.getId()%>">
                    <button type="button" class="btn btn-success" onclick="copiarTexto()">Copiar</button>
                    <a href="#" class="list-group-item list-group-item-action rounded" onclick="esconder()">Cancelar</a>
                </div>

            </div>
        </div>
        <!---->
                        <!-- Primeiro Card-->
                        <div class="col-6 card mt-4" id="WapperCard" style="margin-right: 15px; ">
                            <div class="row">
                                <div class="col-10 align-left"><a id="nomePet" style="text-decoration: none;color: black; font-weight: bold; font-size: 18px;"><%=conteudo.getNome()%></a></div>
                                <!--<div class="col-1"><a href="perfil.html"><button href="perfil.html" onclick="" type="button" class="BtnPerfilMenor"></button></a></div>-->
                               <!--  <div class="col-2 align-right" id="menu3"><button class="menuPoints" onclick="mostra2()" type="button"></button></div> -->
                            </div>

                            <div class="position-relative">
                                <form method="post" name="publicacaoForm" action="ErroAdotar">
                                    <input value="<%=conteudo.getId()%>" name="codigoPet" hidden/>
                                
                                <div class="position-absolute top-50 start-50 translate-middle" id="divLike"></div>
                                <button type="submit"><img src="lib/img/petCadastrados/<%=conteudo.getDiretorioIMG()%>" class="card-img" alt="..." style="max-height: 240px; min-width: 475px; object-fit: cover;" /></button>
                                <div class="position-absolute bottom-0 end-0"><a href="publicacao.jsp"><button type="submit" class="btnAdotar btn btn-success m-3 text-light"><b>Adotar</b></button></a></div>
                                </form>
                                <div class="position-absolute bottom-0 start-0">
                                    <img src="lib/img/<%=conteudo.getSexo()%>.png" style=" background-size: cover; display:block; width:55px; height:55px; margin:15px;">
    </div>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item w-100">
                                    <div class="row">
                                        <!--<div class="col-2 text-center"><button class="btnReact" id="btnLike" title="Like" onclick="curtir('2')"></button>0</div>-->
                                        
                                                                                                            <%
                                    if (session.getAttribute("logado") != "TRUE") {

                                %> 
                                <div class="col-2"><a href="login.jsp"><button onclick="" class="btnReact" id="comment" title="Conversar"></button></a></div>    
                                <%                                            } else {
                                %>
                                <div class="col-2"><a href="http://localhost/ChatTextoPetCaring/chatTexto/chat.php?paraUser=<%=conteudo.getId_Usuario()%>"><button onclick="" class="btnReact" id="comment" title="Conversar"></button></a></div>   
                                <%
                                    }
                                %>
                                        <div class="col-2"><button onclick="mostrarCompartilhar()" class="btnReact" id="share" title="Compartilhar"></button> </div>
                                        <div class="col-6 align-right"><p class="fs-5 fw-bold text-center text-warning">Status:&nbsp<%= conteudo.getStatus()%></p></div>
                                    </div>
                                </li>
                                <li class="descricao list-group-item w-100">
                                    <div class="row">
                                        <div class="col-6">Espécie:&nbsp<b><%= conteudo.getEspecie()%></b></div>
                                        <div class="col-6">Idade:&nbsp<b><%= conteudo.getIdade()%></b></div>

                                        <!-- Force next columns to break to new line -->
                                        <div class="w-100"></div>
                                        <div class="col-6">Raça:&nbsp<b><%= conteudo.getRaca()%></b></div>
                                        <div class="col-6">Sexo:&nbsp<b><%= conteudo.getSexo()%></b></div>
                                    </div>
                                </li>	

                            </ul>
                            <div>Apelido do Usuario:&nbsp<b tyle="color: black; text-decoration: none;" href="OutroUser.jsp?<%=conteudo.getId_Usuario()%>"><%=conteudo.getApelido_u()%></b></div>
                            <input type="text" id="doUser" value="<%=conteudo.getId()%>" hidden />
                        </div>

                        <!-- Fim Primeiro Card-->


                        <%
                            }
                        } else {
                        %>
                    </div>
                    <br>
                </div>
                <br>
                <br>
                <div style="margin-left: 25%" class="row justify-content-center align-items-center w-50"  >
                    <div class="alert alert-danger text-center" role="alert">
                        No momento não há Postagens de Pets!
                    </div>
                </div>    
                <%
                    }
                %> 
            </div>
        </div>

        <!--<a href="denuncia.html"><button class="position-fixed bottom-0 end-0" onclick="" type="button" id="imgBtnDenuncia"></button></a>-->
    </body>
</html> 
<script type="text/javascript">
    $(document).ready(function () {
        capturar("3");
    });
    function enviarForm(){
        document.publicacaoForm.submit();
    };
    
function esconder(id){
                document.getElementById('efeitoFade').style.display = 'none';
                document.getElementById('modal1').style.display = 'none';
                document.getElementById('compartilharPublicacao').style.display = 'none';
                document.documentElement.style.overflow = 'auto';
                document.body.scroll = "yes";
            }

            function mostrarCompartilhar(id){
            if(document.getElementById('efeitoFade'&&'compartilharPublicacao').style.display === 'none')
                {
                document.getElementById('efeitoFade').style.display = 'block';
                document.getElementById('compartilharPublicacao').style.display = 'block';
                document.documentElement.style.overflow = 'hidden';
                document.body.scroll = "no";
                }
            else{
                document.getElementById('efeitoFade').style.display = 'none';
                document.getElementById('compartilharPublicacao').style.display = 'none';
                }
            }
</script>
    <style> #compartilharPublicacao{
    width:400px;
    height:450px;
    position:fixed;
    left:50%;
    top:50%;
    text-align:center;
    margin:-260px -0px -200px -200px;
    z-index:99999;
    display:none;
}
    </style>