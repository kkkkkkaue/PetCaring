<%@page import="ListarDocumentacao.ListarDocumentacao"%>
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
    

    ListarDocumentacao daoDoc = new ListarDocumentacao();
    ArrayList<Dados> listarDoc = daoDoc.listarDoc(idUserNot2);
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <title>PetCaring - Documentacao</title>
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
        <h3 id="tituCad">Documentos</h3><br>
        <div class="container">
            <%
            if(listarDoc.size() > 0){ 
            for(Dados Conteudo : listarDoc) { 
         %>
            <div class="row justify-content-center align-items-center">
                
                <div id="alertError" class="col-md-9 card-title align-self-center border border-dark rounded text-center" role="alert" style="height: 90px;">     
                    <h4 style="position: absolute; font-weight: bold;">Acordo do Pet <%=Conteudo.getNome()%></h4> 
                    <b style="font-size: 11px; position: absolute; margin-top: 3%;">Data da Realizacao: <%=Conteudo.getDesc()%></b>
                     &nbsp;&nbsp;&nbsp;
                     <a style="margin-left: 85%;" href="lib/documentosAdocao/<%=Conteudo.getNomeDoc()%>"><button aling type="submit" class="btn btn-outline-success">Visualizar</button></a>
                    &nbsp;&nbsp;&nbsp;
                </div>
            </div>
            <%
                }}else{
         %>
                 <div class="row justify-content-center align-items-center">
            <div id="alertError" class="col-md-10 alert alert-info text-center" role="alert"><h5>No momento você não possui documentos</h5></div>
        </div>
                 <%
                     }
                 %>
        </div>
</body>
</html>
