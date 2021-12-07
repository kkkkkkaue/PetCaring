<%@page import="Model.Dados"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ListarConteudoPerfil.ListarConteudoPerfil"%>
<%@include file="lib/include/validacao.jsp"%>

<%   
       String idEditPerfil = (String) request.getSession().getAttribute("id_user");
       int idEditPerfil2 = Integer.parseInt(idEditPerfil);

    ListarConteudoPerfil dao = new ListarConteudoPerfil();
    ArrayList<Dados> lista = dao.listar(idEditPerfil2);
%>

<!DOCTYPE html>
<html>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <title>PetCaring - Home</title>

        <script type="text/javascript">
            $(document).ready(function () {
                $("#altCep").mask("00000-000");
                $("#altContato").mask("+55 (00) 00000-0000");
            });

            function up() {
                'use strict';
                let photo = document.getElementById('imgFoto');
                let file = document.getElementById('fImage');

                file.click();

                file.addEventListener('change', function () {

                    if (file.files.length <= 0)
                    {
                        return;
                    }

                    let reader = new FileReader();
                    reader.onload = function () {
                        photo.src = reader.result;
                    };
                    reader.readAsDataURL(file.files[0]);
                });
            }
        </script>
    </head>
    <body>
        <style>
            html, body {
                max-width: 100%;
                overflow-x: hidden;
            }
        </style>
        <%@include file="lib/include/headerLogado.jsp"%>
      

        <h1 style="color:#03bb85; font-weight:bold;" id="tituCad">Editar Perfil</h1>
        <div class="row justify-content-center align-items-center">
            <div class="div w-75 border border-dark">
       <% if (lista.size() == 1) { %>
        <% for (Dados conteudo : lista) {%>
                <form class="justify-content-center" action="EditarPerfil" method="post" enctype="multipart/form-data">
                    <div>
                        <br>
                        <div class="row justify-content-center">
                            <div class=" justify-content-center text-center">
                                <img src="lib/img/imagensUsers/<%=conteudo.getDiretorioIMGUsuario()%>" onclick="up()" alt="Selecione uma imagem" id="imgFoto" class="editPerfil" required ></img>
                            </div>
                            <input required type="file" id="fImage" name="fImage" accept="image/*">
                            <div class="col-4"></div>
                        </div>            
                         <input hidden name="id_user" value="<%=idEditPerfil2%>">
                         <br>
                         <br>
                        <div class="row">
			<div class="col-6">
                                <label for="text">Nome</label>
                                <input required name="nome" type="text" class="form-control" id="altNome" placeholder="Ex: Rayssa Lima Souza" maxlength="100" style="text-align:left;" value="<%=conteudo.getNome_Usuario()%>">
                            </div>
                            <div class="col-6">
                                <label for="text">Apelido</label>
                                <input required name="username" type="text" class="form-control" id="altApelido" placeholder="Ex: Ray" maxlength="100" style="text-align:left;" value="<%=conteudo.getApelido_u()%>">
                            </div>
                        </div>
                        <br>
                        <br>
                        <div class="row">
                            <div class="col-6">
                                <label for="inputPassword">Telefone celular</label>
                                <input required name="numeroTel" type="text" class="form-control" id="altTelCelular" placeholder="+55 (DDD) 00000-0000" style="text-align:left;" value="<%=conteudo.getTelCelular()%>">
                            </div>
                            <div class="col-6">
                                <label for="inputPassword">CEP</label>
                                <input required name="cep" type="text" class="form-control" id="altCep" placeholder="00000-000" style="text-align:left;" valeu="<%=conteudo.getCepUser()%>"/>
                            </div>	
                        </div>
                        <br>
                        <br>
                        <div class="row">
                            <div class="col-6">
                                <label for="inputPassword">Estado</label>
                                <select required name="estado" id="altEstado" class="form-select" required="">
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
                            <div class="col-6">
                                <label for="inputPassword">Cidade</label>
                                <input required name="cidade" type="text" id="altCidade" class="form-control" required="" maxlength="80" style="text-align:left;">
                            </div>
                        </div>
                        <br>
                        <div class="row" align="center">
                            <div class="justify-content-center">
                                <button type="submit" class="btn btn-primary w-25">Salvar</button>
                            </div>
                            <div class="col-2"></div>
                        </div>
                        <br>
                    </div>
                </form> 
                <%
                    }
                }
            %>
            </div>
        </div>
        <br>
       <!-- <a href="Denuncia.html"><button class="position-fixed bottom-0 end-0" onclick="" type="button" id="imgBtnDenuncia"></button></a>-->
    </body>
</html> 
<script type="text/javascript">
     capturar("6");
    $("#altCep").focusout(function () {
        //Início do Comando AJAX
        $.ajax({
            //O campo URL diz o caminho de onde virá os dados
            //É importante concatenar o valor digitado no CEP
            url: 'https://viacep.com.br/ws/' + $(this).val() + '/json/unicode/',
            //Aqui você deve preencher o tipo de dados que será lido,
            //no caso, estamos lendo JSON.
            dataType: 'json',
            //SUCESS é referente a função que será executada caso
            //ele consiga ler a fonte de dados com sucesso.
            //O parâmetro dentro da função se refere ao nome da variável
            //que você vai dar para ler esse objeto.
            success: function (resposta) {
                //Agora basta definir os valores que você deseja preencher
                //automaticamente nos campos acima.
                $("#formPfisicaEndereco,#formJuriEndere,#formOngsEnder").val(resposta.logradouro);
                $("#formPfisicaComple,#formJuriComple,#formOngsComple").val(resposta.complemento);
                $("#altCidade").val(resposta.localidade);
                $("#altEstado").val(resposta.uf);
                //Vamos incluir para que o Número seja focado automaticamente
                //melhorando a experiência do usuário
                $("#formPfisicaNumero,#formJuriNumero,#formOngsNumer").focus();
            }
        });
    });
</script>