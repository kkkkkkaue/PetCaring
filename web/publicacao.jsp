<%@page import="PublicacaoUnica.PublicacaoUnica"%>
<%@page import="Model.Dados" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<%
    int erro;

    request.getSession().getAttribute("erro");
    // int erro = (Integer) session.getAttribute("erro");
    if ((Integer) session.getAttribute("erro") == null) {
        erro = 0;
    } else {
        erro = (Integer) session.getAttribute("erro");
    }
    
    int erro2;

    request.getSession().getAttribute("erroAdotar");
    // int erro = (Integer) session.getAttribute("erro");
    if ((Integer) session.getAttribute("erroAdotar") == null) {
        erro2 = 3;
    } else {
        erro2 = (Integer) session.getAttribute("erroAdotar");
    }
    
    

    
    String idUserPub = (String) request.getSession().getAttribute("id_user");
     int idUserPub2 = Integer.parseInt(idUserPub);
    int codigo_pet = Integer.parseInt(request.getParameter("codigoPet"));

    PublicacaoUnica dao = new PublicacaoUnica();
    ArrayList<Dados> lista = dao.listar(codigo_pet);
%>
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
        <title>PetCaring - Home</title>
    </head>
    <body>
        <input type="text" value="<%=codigo_pet%>" hidden/>
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
        <div id="efeitoFade" onclick="esconder()">
        </div>
         <%
            if(lista.size() > 0){ 
            for(Dados conteudo : lista) { 
         %>
         <br>
      <!--Janela Modal Compartilhar Link-->
        <div id="compartilharPublicacao">
            <div class="list-group list2">
                <div class="input-group mb-2">
                    <span class="input-group-text" id="inputGroup-sizing-default">URL</span>
                    <input id="link" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="http://localhost:8080/PetCaring/publicacao.jsp?codigoPet=<%=codigo_pet%>">
                    <button type="button" class="btn btn-success" onclick="copiarTexto()">Copiar</button>
                    <a href="#" class="list-group-item list-group-item-action rounded" onclick="esconder()">Cancelar</a>
                </div>

            </div>
        </div>
        <!---->
         <form method="post" action="Adotar">
    <input type=text name="codigoPet" value="<%=codigo_pet%>" hidden>
    <input type=text name="id_ParaUsuario" value="<%=conteudo.getId_Usuario()%>" hidden>
    <input type=text name="id_DoUsuario" value="<%=idUserPub%>" hidden>
     <input type=text name="status_pet" value="<%=conteudo.getStatus()%>" hidden>
    
        <div class="row justify-content-center align-items-center">
            <div id="alertError" class="col-md-9 alert alert-dark text-center" role="alert"><h5>Deseja iniciar um acordo de adoção? &nbsp;&nbsp;&nbsp;<a href="login.jsp" class="alert-link"><button type="submit" class="btn btn-primary">Prosseguir</button></a></h5></div>
        </div>
     </form>
         <%
            if(erro2 == 0){
         %>
        <div class="row justify-content-center align-items-center">
            <div id="alertError" class="col-md-9 alert alert-success text-center" role="alert"><h5>Sua solicitação de adoção está em andamento, por favor aguarde o retorno do usuário!</h5></div>
        </div>
        <%
            }else if(erro2 == 1){
         %>
         <div class="row justify-content-center align-items-center">
             <div id="alertError" class="col-md-9 alert alert-warning text-center" role="alert"><h5>Não foi possivel solicitar um acordo de adoção, por favor tente novamente!</h5></div>
         </div>
         <%
                     }else if (erro2 == 4){
                        %>
                        <div class="row justify-content-center align-items-center">
                            <div id="alertError" class="col-md-9 alert alert-warning text-center" role="alert"><h5>Não foi possivel solicitar um acordo de adoção.&nbsp;<b>Este pet não está disponível para adoção</b>!</h5></div>
                        </div>
                        <%
                     }else{}
         %>
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-8">
                    <div id="modal1">
                        <div class="list-group list2">
                            <a href="#" class="list-group-item list-group-item-action" onclick="mostra3()"><b class="text-danger">Denunciar</b></a>
                            <a href="#"class="list-group-item list-group-item-action"><b class="text-danger">Bloquear Usuário</b></a>
                            <a href="Publicacao.html" class="list-group-item list-group-item-action">Ir para a publicacão</a>
                            <a href="#" class="list-group-item list-group-item-action">Copiar link</a>
                            <a href="#" class="list-group-item list-group-item-action" onclick="esconder()">Sair</a>
                        </div>
                    </div>
                    <div onclick="mostra3()" id="modal3" style="
                         width:400px;
                         height:450px;
                         position:fixed;
                         left:50%;
                         top:50%;
                         text-align:center;
                         margin:-380px -0px -200px -200px;
                         z-index:99999;
                         display:none;">
                        <div class="list-group list2">
                            <li class="list-group-item list-group-item-secondary fs-5"><b>Por que você está denunciando essa publicação?</b></li>
                            <a href="" class="list-group-item list-group-item-action"><b class="text-danger">É spam.</b></a>
                            <a href="" class="list-group-item list-group-item-action"><b class="text-danger">Nudez ou conteúdo sexual.</b></a>
                            <a href="" class="list-group-item list-group-item-action"><b class="text-danger">Simbolos ou Discurso de Ódio.</b></a>
                            <a href="" class="list-group-item list-group-item-action"><b class="text-danger">Violência ou organizações de alto perigo.</b></a>
                            <a href="" class="list-group-item list-group-item-action"><b class="text-danger">Venda de produtos regulamentados ou ilícitos.</b></a>
                            <a href="" class="list-group-item list-group-item-action"><b class="text-danger">Bullying ou assédio.</b></a>
                            <a href="" class="list-group-item list-group-item-action"><b class="text-danger">Violação de propriedade intelectual.</b></a>
                            <a href="" class="list-group-item list-group-item-action"><b class="text-danger">Suicídio ou automutilação.</b></a>
                            <a href="" class="list-group-item list-group-item-action"><b class="text-danger">Golpe ou Fraude.</b></a>
                            <a href="" class="list-group-item list-group-item-action"><b class="text-danger">Informação Falsa.</b></a>
                            <a href="" class="list-group-item list-group-item-action"><b class="text-danger">Simplesmente não Gostei.</b></a>
                            <a href="#" class="list-group-item list-group-item-action" onclick="voltar()">Voltar</a>
                        </div>
                    </div>

                    <div class="card" id="cardBig" style="width:935px;height:600px;">
                        <div class="row">
                            <div class="col">
                                <div class="position-relative">
                                    <img style="width:598px; height:598px; background-color:black; object-fit: cover;" src="lib/img/petCadastrados/<%=conteudo.getDiretorioIMG()%>"></img>
                                    <div class="position-absolute top-50 start-50 translate-middle" id="divLike"></div>
                                                                    <%
                                    if (session.getAttribute("logado") != "TRUE") {

                                %> 
                                <div class="position-absolute bottom-0 end-0"><a href="login.jsp"><button type="button" class="btnAdotar btn btn-success m-3 text-light"><b>Contatar</b></button></a></div>
                                <%                                            } else {
                                %>
                                <div class="position-absolute bottom-0 end-0"><a href="http://localhost/ChatTextoPetCaring/chatTexto/chat.php?paraUser=<%=conteudo.getId_Usuario()%>"><button type="button" class="btnAdotar btn btn-success m-3 text-light"><b>Contatar</b></button></a></div>
                                <%
                                    }
                                %>
                                </div>
                            </div>
                            <div class="col" style="width:330px;height:598px;">
                                <div class="card-body">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">
                                            <div class="row" style="height:3em; display: flex; align-items: center">
                                                <div class="col-8">
                                                    <a href="perfil.jsp" id="nomePet" style="text-decoration: none;color: black; font-weight: bold; font-size: 30px;"><%=conteudo.getNome()%></a></div>
                                                <!--<div class="col-2" id="menu3">
                                                    <button class="menuPoints" onclick="mostra2('modal1')" type="button"></button>
                                                </div>-->
                                            </div>

                                        </li>
                                        <li class="list-group-item" id="AreaDeComent">
                                         <%=conteudo.getDesc()%>
                                        </li>
                                        <li class="list-group-item" id="AreaDeReact">
                                            <div class="row">           
                                                <!--<div class="col-4"><button class="btnReact" id="btnLike" title="Like" onclick="curtir('2')"></button>0</div>-->
                                <%
                                if (session.getAttribute("logado") != "TRUE") {

                                %> 
                                <div class="col-2"><a href="login.jsp"><button onclick="" class="btnReact" id="comment" title="Conversar"></button></a></div>    
                                <%                                            } else {
                                %>
                                <div class="col-2"><a href="http://localhost/ChatTextoPetCaring/chatTexto/chat.php?paraUser=<%=conteudo.getId_Usuario()%>"><button type="buttom" class="btnReact" id="comment" title="Conversar"></button></a></div>   
                                <%
                                    }
                                %>

                                <div style="margin-left: 50%;" class="col-4"><button onclick="mostrarCompartilhar()" class="btnReact" id="share" title="Compartilhar"></button></div>
                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="row"  style="height:3em; display: flex;	align-items: center">
                                                <div class="col-3"><img style=" max-height: 50px; max-width: 50px;" src="lib/img/imagensUsers/<%=conteudo.getDiretorioIMGUsuarioPublic()%>"></div>
                                                <div class="col-6"><b><%=conteudo.getApelido_u()%></b></div>
                                            </div>	
                                </div>


                                </li>

                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            }
           }
        %>
    </div>
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
    
</body>
</html>