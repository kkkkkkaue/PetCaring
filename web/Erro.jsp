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
<!--DOCTYPE HTML-->
<html lang="pt-BR">
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
        <title>PetCaring - Erro</title>
    </head>
    <%
        if (erro == 0) {
    %>
    <%@include file="lib/include/header.jsp"%>
    <%
    } else {
    %>
    <%@include file="lib/include/headerLogado.jsp"%>
    <%
        }
    %>
    <body>
        <br>
        <div class="text-center" width="50%" height="50%"><img src="lib/img/Erro1.png" class="rounded mx-auto d-block" /></div>
        <br>
        <div class="row justify-content-center align-items-center">
            <div id="alertError" class="col-md-6 alert alert-danger text-center" role="alert"> Desculpe, estamos com problemas de conexão &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp" class="alert-link">Voltar a págia de Login</a></div>
        </div>
    </body>    
</html>
