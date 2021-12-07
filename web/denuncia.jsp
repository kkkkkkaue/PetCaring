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
        <link rel="shortcut icon" href="lib/img/Logo.png"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@1,700&family=Nunito:ital,wght@1,700&family=Yellowtail&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="lib/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="lib/css/style.css">
        <script type="text/javascript" src="lib/js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript" src="lib/js/script.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <title>PetCaring - Denúncia</title>
    </head>
    <body>
        <style>
            html, body {
                max-width: 100%;
                overflow-x: hidden;
            }
        </style>
        <div class="collapse" id="navbarToggleExternalContent">
            <div class="bg-dark p-4">
                <h5 class="text-white h4">Collapsed content</h5>
                <span class="text-muted">Toggleable via the navbar brand.</span>
            </div>
        </div>
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
        <br>   
        <h3 id="tltDenuncia">Denúncia contra maus-tratos</h3>
        <div class="row justify-content-center">
            <div class="row justify-content-center align-items-center" id="formDenuncia">
                <div class="col-md-9 offset-md-5">
                    <div class="col-md-6 ">
                        <label for="inputState" class="form-label" id="lblEstado">Estado</label>
                        <select id="inputState" class="form-select">
                            <option value="">Selecione</option>
                            <option value="Acre">AC</option>
                            <option value="Alagoas">AL</option>
                            <option value="Amapa">AP</option>
                            <option value="Amazonas">AM</option>
                            <option value="Bahia">BA</option>
                            <option value="Ceará">CE</option>
                            <option value="DF">DF</option>
                            <option value="ES">ES</option>
                            <option value="Goias">GO</option>
                            <option value="Maranhao">MA</option>
                            <option value="MT">MT</option>
                            <option value="MS">MS</option>
                            <option value="MG">MG</option>
                            <option value="Para">PA</option>
                            <option value="Paraiba">PB</option>
                            <option value="Parana">PR</option>
                            <option value="Pernambuco">PE</option>
                            <option value="Piaui">PI</option>
                            <option value="RJ">RJ</option>
                            <option value="RN">RN</option>
                            <option value="RS">RS</option>
                            <option value="Rondonia">RO</option>
                            <option value="Roraima">RR</option>
                            <option value="SC">SC</option>
                            <option value="SP">SP</option>
                            <option value="Sergipe">SE</option>
                            <option value="Tocantins">TO</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-9 offset-md-5">
                    <div>
                        <label for="exampleFormControlTextarea1" class="form-label " id="lblDados">Dados da denúncia:</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" ></textarea>
                    </div>
                </div>
                <button type="button" class="btn btn-warning" id="btnDenunciar"><b id="txtBtnDenuncie">Denuncie</b></button>
            </div>
        </div>
    </body>
</html>
<script type="text/javascript">
    $(document).ready(function () {
		var x = document.getElementById('navbar');
        x.style.background = '#dc3545';
    });
</script>