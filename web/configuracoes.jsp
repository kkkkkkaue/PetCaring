<%
    int erro;

    request.getSession().getAttribute("erro");
    // int erro = (Integer) session.getAttribute("erro");
    if ((Integer) session.getAttribute("erro") == null) {
        erro = 0;
    } else {
        erro = (Integer) session.getAttribute("erro");
    }
    
    int erroEmail;

    request.getSession().getAttribute("erroEmail");
    // int erro = (Integer) session.getAttribute("erro");
    if ((Integer) session.getAttribute("erroEmail") == null) {
        erroEmail = 0;
    } else {
        erroEmail = (Integer) session.getAttribute("erroEmail");
    }

    int erroSenha;
    
     String id_User = (String) request.getSession().getAttribute("id_user");
    int id_User2 = Integer.parseInt(id_User);
    
    request.getSession().getAttribute("erroSenha");
    // int erro = (Integer) session.getAttribute("erro");
    if ((Integer) session.getAttribute("erroSenha") == null) {
        erroSenha = 0;
    } else {
        erroSenha = (Integer) session.getAttribute("erroSenha");
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
        <title>PetCaring - Configurações</title>
        <script type="text/javascript">
            $(document).ready(function () {
                var alt = document.getElementById('altSenha');
                alt.style.borderLeft = '5px solid black';
                alt.style.fontWeight = 'bold';
            });

            function mostrarDiv(a) {
                var x = document.getElementById('idSenha');
                var x1 = document.getElementById('idEmail');
                var x2 = document.getElementById('idEdPerfil');

                var alt = document.getElementById('altSenha');
                var alt1 = document.getElementById('altEmail');
                var alt2 = document.getElementById('altPerfil');
                var alt3 = document.getElementById('Premium');

                if (a === '1') {
                    x.style.display = 'block';
                    x1.style.display = 'none';
                    x2.style.display = 'none';
                    alt.style.borderLeft = '5px solid black';
                    alt1.style.borderLeft = 'none';
                    alt2.style.borderLeft = 'none';
                    alt.style.fontWeight = 'bold';
                    alt1.style.fontWeight = 'normal';
                    alt2.style.fontWeight = 'normal';
                    alt3.style.fontWeight = 'normal';
                } else if (a === '2') {
                    x.style.display = 'none';
                    x1.style.display = 'block';
                    x2.style.display = 'none';
                    alt.style.borderLeft = 'none';
                    alt1.style.borderLeft = '5px solid black';
                    alt2.style.borderLeft = 'none';
                    alt3.style.borderLeft = 'none';
                    alt.style.fontWeight = 'normal';
                    alt1.style.fontWeight = 'bold';
                    alt2.style.fontWeight = 'normal';
                    alt3.style.fontWeight = 'normal';
                } else if (a === '3') {
                    x.style.display = 'none';
                    x1.style.display = 'none';
                    x2.style.display = 'block';
                    alt.style.borderLeft = 'none';
                    alt1.style.borderLeft = 'none';
                    alt2.style.borderLeft = '5px solid black';
                    alt3.style.borderLeft = 'none';
                    alt.style.fontWeight = 'normal';
                    alt1.style.fontWeight = 'normal';
                    alt2.style.fontWeight = 'bold';
                    alt3.style.fontWeight = 'normal';
                } else {
                    if (a === '4') {
                        alt.style.borderLeft = 'none';
                        alt1.style.borderLeft = 'none';
                        alt2.style.borderLeft = 'none';
                        alt3.style.borderLeft = '5px solid black';
                        alt.style.fontWeight = 'normal';
                        alt1.style.fontWeight = 'normal';
                        alt2.style.fontWeight = 'normal';
                        alt3.style.fontWeight = 'bold';
                    } else {
                        alert("Desculpe, estamos com problemas ao acessar a página");
                    }
                }
            }

            function up() {
                'use strict'
                let photo = document.getElementById('imgFoto');
                let file = document.getElementById('flImage');

                file.click();

                file.addEventListener('change', function () {

                    if (file.files.length <= 0)
                    {
                        return;
                    }

                    let reader = new FileReader();
                    reader.onload = function () {
                        photo.src = reader.result;
                    }
                    reader.readAsDataURL(file.files[0]);
                });
            }
           
        </script>
    </head>
    <body>
        <%
            if (erro == 0) {
        %>
        <%@include file="lib/include/header.jsp"%>
        <%
        } else {
        %>
        <%@include file="lib/include/headerLogado.jsp"%>
        <%            }
        %>
        <div class="container">
            <div class="row">
                <div class="col-2">
                </div>
                <div class="col-8">
                    <br>
                    <h1  style="color:#03bb85; font-weight:bold; text-align: center;" class="text-center">Configurações</h1>
                    <br>
                    <div class="divAlterarPerfil">
                        <div class="col-3 listBtns list-group list-group-flush">
                            <br>
                            <a id="altSenha" href="#" class="list-group-item list-group-item-action" onclick="mostrarDiv('1')">Alterar Senha</a>
                            <a id="altEmail" href="#" class="list-group-item list-group-item-action" onclick="mostrarDiv('2')">Alterar Email</a>
                            <a id="altPerfil" href="http://localhost:8080/PetCaring/editarPerfil.jsp" class="list-group-item list-group-item-action" onclick="mostrarDiv('3')">Editar Perfil</a>
                            <!--<a id="Premium" href="Plano.html" class="list-group-item list-group-item-action" onclick="mostrarDiv('4')">Premium</a>-->
                        </div>
                        <!-- Início do Formulário Alterar Senha -->

                        <form action="AlterarSenha" method="post">
                           <input hidden name="id_usuario" value="<%=id_User2%>">
                            <div class="justify-content-center" id="idSenha">
                                <br>
                                <div class="row">
                                    <div class="col-8">
                                        <label for="inputPassword">Nova senha</label>
                                        <input name="novaSenha" type="password" class="form-control" id="inputPassword" style="text-align:left;">
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-8">
                                        <label for="inputPassword">Confirme a nova senha</label>
                                        <input name="confirmeSenha" type="password" class="form-control" id="inputPassword" style="text-align:left;">
                                    </div>
                                </div>
                                <br>
                                <br>
                                <div class="row">
                                    <div class="col-8">
                                        <label for="inputPassword">Senha atual</label>
                                        <input name="senhaAtual" type="password" class="form-control" id="inputPassword" style="text-align:left;">
                                    </div>
                                </div>
                                <br>
                                <div class="row" align="center">
                                    <div class="col">
                                        <button type="submit" class="btn btn-primary btn-md">Alterar Senha</button>
                                    </div>
                                </div>
                                <br>
                                <%
                                 if(erroSenha == 1){
                                %>
                                <div class="row justify-content-center" align="center">
                                    <div class="alert alert-suc cess text-center w-50" role="alert">
                                        Senha alterada com sucesso!
                                    </div>
                                </div>
                                <%
                                }else if(erroSenha == 2){
                                %>
                                <div class="row justify-content-center" align="center">
                                    <div class="alert alert-danger text-center w-50" role="alert">
                                        A senha atual está incorreta!
                                    </div>
                                </div>
                                <%
                                }else if(erroSenha == 3){
                                %>
                                <div class="row justify-content-center" align="center">
                                    <div class="alert alert-danger text-center w-50" role="alert">
                                        O campo "confirme sua senha" está incorreto!
                                    </div>
                                </div>
                                <%} else{}%>
                            </div>
                        </form>
                        <!-- Fim do Formulário Alterar Senha -->                        <!-- Fim do Formulário Alterar Senha -->

                        <!-- Início do Formulário Editar Email -->
                        <%
                            if (erroEmail == 0) {
                            }
                        %>
                        <form class="justify-content-center" action="EditarEmail" method="post">
                            <input hidden name="id_usuario" value="<%=id_User2%>">
                            <div id="idEmail">
                                <br>
                                <div class="row">
                                    <div class="col-8">
                                        <label for="inputPassword">Email Novo</label>
                                        <input name="novoEmail" type="email" class="form-control" id="inputPassword" style="text-align:left;">
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-8">
                                        <label for="inputPassword">Confirme o novo email</label>
                                        <input name="confirmeNovoEmail" type="email" class="form-control" id="inputPassword" style="text-align:left;">
                                    </div>
                                </div>
                                <br>
                                <br>
                                <div class="row">
                                    <div class="col-8">
                                        <label for="inputPassword">Senha</label>
                                        <input name="senha" type="password" class="form-control" id="inputPassword" style="text-align:left;">
                                    </div>
                                </div>
                                <br>
                                <div class="row" align="center">
                                    <div class="col-8">
                                        <button type="submit" class="btn btn-primary btn-md">Alterar Email</button>
                                    </div>
                                </div>
                                <br>
                                <% if (erroEmail == 1) {
                                %>
                                <div class="row justify-content-center" align="center">
                                    <div class="alert alert-success text-center w-50" role="alert">
                                        Email alterado com sucesso!
                                    </div>
                                </div>
                                <%
                                } else if (erroEmail == 2) {
                                %>
                                <div class="row justify-content-center" align="center">
                                    <div class="alert alert-danger text-center w-50" role="alert">
                                        A senha está incorreta!
                                    </div>
                                </div>
                                <%
                                } else if (erroEmail == 3) {
                                %>
                                <div class="row justify-content-center" align="center">
                                    <div class="alert alert-danger text-center w-50" role="alert">
                                        O campo "confirme seu email" está incorreto!
                                    </div>
                                </div>
                                <%}%>	
                            </div>
                        </form>
                        <!-- Fim do Formulário Editar Email -->

   <!-- Início do Formulário Editar Perfil -->
                        <div id="idEdPerfil">
                            <br>
                            <div class="row justify-content-center">
                                <div class=" justify-content-center text-center">
                                    <img src="img/perfilImg.png" onclick="up()" alt="Selecione uma imagem" id="imgFoto" class="editPerfil"></img>
                                </div>
                                <input type="file" id="flImage" name="flImg" accept="image/*">
                                <div class="col-4"></div>
                            </div>
                            <div class="row">
                                <div class="col-2"></div>
                                <div class="col-8">
                                    <label for="text">Apelido</label>
                                    <input type="text" class="form-control" id="inputPassword" style="text-align:left;">
                                </div>
                                <div class="col-2"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-2"></div>
                                <div class="col-8">
                                    <label for="inputPassword">Contato</label>
                                    <input type="text" class="form-control" id="inputPassword" style="text-align:left;">
                                </div>
                                <div class="col-2"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-2"></div>	
                                <div class="col-3">
                                    <label for="inputPassword">CEP</label>
                                    <input type="text" class="form-control" id="inputPassword" style="text-align:left;">
                                </div>	
                                <div class="col-2">
                                    <label for="inputPassword">Estado</label>
                                    <select id="formJuriEstado" class="form-select" required="">
                                        <option value="">--</option>
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
                                <div class="col-3">
                                    <label for="inputPassword">Cidade</label>
                                    <select id="formJuriEstado" class="form-select" required="" style="text-align:left;">
                                        <option value=""></option>
                                    </select>
                                </div>
                                <div class="col-2"></div>
                            </div>
                            <br>
                            <div class="row" align="center">
                                <div class="justify-content-center">
                                    <button type="button" class="btn btn-primary w-25">Alterar</button>
                                </div>
                                <div class="col-2"></div>
                            </div>
                        </div>
                        <!-- Fim do Formulário Editar Perfil -->
                    </div>
                </div>
                <div class="col-2">
                    <div class="list-group" id="config">
                        <a href="perfil.html"><button type="button" class="list-group-item list-group-item-action" id="lkPerfil">Perfil</button></a>
                        <button type="button" class="list-group-item list-group-item-action">Configurações</button>
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
            </div>
        </div>
    </body>
</html>>
<script>
      capturar("6");
</script>