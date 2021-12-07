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
        <title>PetCaring - Listagem de Usuários</title>
    </head>
    <body>
        <style>
            html, body {
                max-width: 100%;
                overflow-x: hidden;
            }
        </style>
        <!-- TESTE JQUERY
        <script type="text/javascript">
        function Form(){
                var selectvalue= $('input[name=inlineRadioOptions]:checked','#Identificador').val();
                if(selectvalue=="option2"){
                        window.open('http://127.0.0.1:5500/Caes.html','_self');
                        return true;
                }
                return false;
        }
        </script>
        -->
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
        <h3 id="tltDenuncia" >Listagem de Usuários</h3>
        <div class="row justify-content-center">
            <div class="row justify-content-center align-items-center">
                <div class="w-75">
                    <br>
                    <table class="table table-dark">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nome</th>
                                <th scope="col">Email</th>
                                <th scope="col">Operação de Banimento</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">3</th>
                                <td scope="row">Giga Bueno</td>
                                <td>gb@mega.com</td>
                                <td><button type="button" class="btn btn-danger">Banir</button></td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td scope="row">Edward Philip</td>
                                <td>bobbybrown@mega.com</td>
                                <td><button type="button" class="btn btn-danger">Banir</button></td>
                            </tr>
                            <tr>
                                <th scope="row">5</th>
                                <td scope="row">Gusta Palligator</td>
                                <td>gustavo@noeye.com</td>
                                <td><button type="button" class="btn btn-danger">Banir</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
<script type="text/javascript">
    $(document).ready(function () {
        var x = document.getElementById('navbar');
        x.style.background = '#8540f5';
    });
</script>
<!--
<form class="d-flex">
        <input class="form-control align-middle border-none" type="search" placeholder="Nome" style="text-align:left; background:#212529; color:white; outline:o; box-shadow:none;" aria-label="Pesquisar">
</form>
-->
