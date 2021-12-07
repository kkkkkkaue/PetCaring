<%@page import="ListarNotificacoes.ListarNotificacoes"%>
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

    String idUserNot = (String) request.getSession().getAttribute("id_user");
    int idUserNot2 = Integer.parseInt(idUserNot);

    ListarNotificacoes dao = new ListarNotificacoes();
    ArrayList<Dados> lista = dao.listar(idUserNot2);
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
        <title>PetCaring - Notificações</title>
    </head>
    <body>
        <input type=text name="id_DoUsuario" value="<%=idUserNot2%>" hidden>
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
        <br>
        <h1 id="tituCad" style="color:#03bb85; font-weight:bold;">Notificações</h1><br>
        <div class="container">
            <%
                if (lista.size() > 0) {
                    for (Dados Conteudo : lista) {
                        if (Conteudo.getStatus().equals("Disponivel")) {
            %>
            <div class="row justify-content-center align-items-center">

                <div id="alertError" class="col-md-11 card-title align-self-center border border-dark rounded text-center" role="alert" style="height: 90px;">
                    <img style="object-fit: cover;" src="lib/img/imagensUsers/<%=Conteudo.getDiretorioIMGUsuario()%>" class=" imgBtnPerfil" id="btnPerfilChat2"></img>
                    <h5>O usuário <%=Conteudo.getApelido_u()%> solicitou iniciar um acordo de adoção sobre o pet <%=Conteudo.getNome()%></h5> 
                    &nbsp;&nbsp;&nbsp;
                    <form method="post" action="finalizaradocao.jsp">
                        <button type="submit" class="btn btn-outline-success">Prosseguir</button>
                        <input type=text name="id_ParaUsuario" value="<%=Conteudo.getId_Usuario()%>" hidden>
                        <input type=text name="cod_pet" value="<%=Conteudo.getId()%>" hidden>
                    </form>
                    &nbsp;&nbsp;&nbsp;
                   <form method="post" action="RecusarAcordo">
                        <button type="submit" class="btn btn-danger">Recusar</button>
                        <input type=text name="id_ParaUsuario" value="<%=idUserNot2%>" hidden>  
                        <input type=text name="id_DoUsuario" value="<%=Conteudo.getId_Usuario()%>" hidden>  
                        <input type=text name="cod_pet" value="<%=Conteudo.getId()%>" hidden>
                    </form>   
                </div>
            </div>
            <%
            } else if(lista.size() == 1){%>
            <div class="row justify-content-center align-items-center">
                <div id="alertError" class="col-md-10 alert alert-info text-center" role="alert"><h5>No momento você não possui notificações</h5></div>
            </div>
            <%
                    }
                }
            } else {
            %>
            <div class="row justify-content-center align-items-center">
                <div id="alertError" class="col-md-10 alert alert-info text-center" role="alert"><h5>No momento você não possui notificações</h5></div>
            </div>
            <%
                }
            %>
        </div>
    </body>
</html>
