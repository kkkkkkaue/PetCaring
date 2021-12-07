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
        <title>PetCaring - Alterar Informação</title>
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
        <%@include file="lib/include/header.jsp"%>
        <br>
        <h3 id="tltDenuncia" >Alterar Informação</h3>
        <div class="row justify-content-center">
            <div class="row justify-content-center align-items-center w-50 border border-dark">
                <br>
                <form id="registroInfo" method="post" action="AlterarInformacao">
                    <br>
                    <div class="col-15">
                        <label for="formRegInfoTipo" class="form-label">Tipo</label>
                        <select id="formRegInfoTipo" name="tipoInformacao" class="form-select" required="">
                            <option value="">Selecione</option>
                            <option value="campanhaPets">Campanha</option>
                            <option value="cuidadosPets">Cuidados</option>
                            <option value="cuidadosPets">Curiosidades</option>
                            <option value="cuidadosPets">Denúncia</option>
                        </select>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-15">
                            <label for="autor" class="form-label">Autor</label>
                            <input class="form-control" required type="text" class="form-control" name="autorInformacao" id="formPFisicaNome" aria-describedby="NameHelp" style="text-align:left;"/>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-15">
                            <label for="descricao" class="form-label">Descrição</label>
                            <textarea class="form-control form-control-lg" name="descricao" id="descricaoRegInfo" rows="5" style="text-align:left;"></textarea>
                        </div>
                    </div>
                    <input type="hidden" name="id_adm" value="1" class="">
                    <br>
                    <div class="div2">
                        <button name="btnRegInfo" type="submit" class="btn btn-primary w-50 m-1">Registrar</button><br><br>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
