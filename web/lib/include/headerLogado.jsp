<%@page import="Model.Dados"%>
<%@page import="java.util.ArrayList"%>
<%@page import="notificacaochat.notificacaochat"%>
<%@page import="Notificacao.Notificacao"%>
<%
    
    String idHeader = (String) request.getSession().getAttribute("id_usuario");
    int id_user = Integer.parseInt(idHeader);
    int visualizacao = 0;
    int visualizacaoAcordo = 0;
    String nomeImgPerfil = (String) request.getSession().getAttribute("NomeIMG");
    
    notificacaochat dao1 = new notificacaochat();
    ArrayList<Dados> listar1 = dao1.listar1(id_user);
    
    Notificacao daoNotfic = new Notificacao();
    ArrayList<Dados> listarNot = daoNotfic.listarNot(id_user);
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
                    <form class="d-flex" action="conteudoPesquisa.jsp" method="get">
                          <input type="hidden" name="id_user" value="<%=idHeader%>" class="">
                        <input class="form-control align-middle" type="search" name="conteudoPesquisa" placeholder="Pesquisar" aria-label="Search" style="text-align:left;">
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
<div class="list-group" id="config">
    <a href="<%=request.getContextPath()%>/Perfil?id_usuario=<%=idHeader%>" method="post"><button type="button" class="list-group-item list-group-item-action" id="lkPerfil">Perfil</button></a>
    <a href="configuracoes.jsp"><button type="button" class="list-group-item list-group-item-action">Configurações</button></a>
    <a href="<%=request.getContextPath()%>/Logout"><button type="button" class="list-group-item list-group-item-action"><b class="text-danger">Sair</b></button></a>
</div>
<script type="text/javascript">

        function capturar(a) {
            var x = document.getElementById('btnCare');
            var x1 = document.getElementById('btnBook');
            var x2 = document.getElementById('btnHome2');
            var x3 = document.getElementById('btnChat');
            var x4 = document.getElementById('btnSino');
            var x5 = document.getElementById('btnPerfil');
            
            if (a === '1') {
                x.style.filter = 'invert(100%)';
            } 
            else if (a === '2') {
                    x1.style.filter = 'invert(100%)';
            } 
            else if (a === '3') {
                    x2.style.filter = 'invert(100%)';
            } 
            else if (a === '4'){
                    x3.style.filter = 'invert(100%)';
            }
            else if (a === '5') {
                    x4.style.filter = 'invert(100%)';
            } 
            else{
                    x5.style.boxShadow = ' 0 0 2em white';
                    x5.style.border = '2px solid #1166e8';
                }
            }
        
</script>
<script>
    function visualizar() {
                var url = 'visualizacaochat';
                //$F = pega o conteudo do campo do html e monta os parametros
                 var pars = 'id_user=' + <%=id_user%>;
                //create the ajax request
                var myAjax = new Ajax.Request(
                        url,
                        {
                                method: 'post',
                                parameters: pars,
                                onComplete: showResponse
                        }
                );

        //outras coisas 
}
</script>