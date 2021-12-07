<!DOCTYPE html>
<%@include file="lib/include/header.jsp"%>
<html lang="pt-br">

    <head>
        <link rel="shortcut icon" href="lib/img/Logo.png" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@1,700&family=Nunito:ital,wght@1,700&family=Yellowtail&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="lib/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="lib/css/style.css">
        <script type="text/javascript" src="lib/js/jquery-3.4.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
        <script type="text/javascript" src="lib/js/script.js"></script>
        <title>PetCaring - Cadastro de Usuário</title>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#formPfisicaCpf").mask("000.000.000-00");
                $("#formPfisicoDataNasc,#formJuriDataFund,#formOngsDataFund").mask("00/00/0000");
                $("#formPfisicaTel,#formJuriTelCel,#formOngsTelCel").mask("+55 (00) 00000-0000");
                $("#formPfisicaCep,#formJuriCep,#formOngsCep").mask("00000-000");
                $("#formJuriCnpj,#formOngsCnpj").mask("00.000.000/0001-00");
                $("#btnCadastrarPfisico").addClass('disabled');
                //formOngsCnpj
            });

            function VerificarNome(nome) {
                if (nome !== '')
                {
                    $("#formPFisicaNome").removeClass('is-invalid');
                    $("#formPFisicaNome").addClass('is-valid');
                } else
                    $("#formPFisicaNome").addClass('is-invalid');
            }

            function VerificarApelido(username) {
                if (username !== '')
                {
                    $("#formPfisicaApelido").removeClass('is-invalid');
                    $("#formPfisicaApelido").addClass('is-valid');
                } else
                    $("#formPfisicaApelido").addClass('is-invalid');
            }

            function VerificarCPF(CPF) {
                var Soma;
                var Resto;
                Soma = 0;
                var value = CPF;
                var CPFclean = value.replace(/[^0-9,]*/g, '').replace(',', '.', '/', '-');
                if (CPFclean === "00000000000")
                    $("#formPfisicaCpf").addClass('is-invalid');

                else if (CPFclean.length === 11 && ValidarCPF(CPFclean)) {
                    $("#formPfisicaCpf").removeClass('is-invalid');
                    $("#formPfisicaCpf").addClass('is-valid');
                    $("#btnCadastrarPfisico").removeClass('disabled');
                } else
                {
                    $("#formPfisicaCpf").addClass('is-invalid');
                }
            }
            ;
            function ValidarCPF(strCPF) {
                var Soma;
                var Resto;
                Soma = 0;
                if (strCPF === "00000000000")
                    return false;

                for (i = 1; i <= 9; i++)
                    Soma = Soma + parseInt(strCPF.substring(i - 1, i)) * (11 - i);
                Resto = (Soma * 10) % 11;

                if ((Resto === 10) || (Resto === 11))
                    Resto = 0;
                if (Resto !== parseInt(strCPF.substring(9, 10)))
                    return false;

                Soma = 0;
                for (i = 1; i <= 10; i++)
                    Soma = Soma + parseInt(strCPF.substring(i - 1, i)) * (12 - i);
                Resto = (Soma * 10) % 11;

                if ((Resto === 10) || (Resto === 11))
                    Resto = 0;
                if (Resto !== parseInt(strCPF.substring(10, 11)))
                    return false;
                return true;
            }
            var strCPF = "12345678909";
            alert(TestaCPF(strCPF));

            function VerificarTelefoneCelular(tel) {
                if (tel !== '')
                {
                    $("#formPfisicaTel").removeClass('is-invalid');
                    $("#formPfisicaTel").addClass('is-valid');
                } else
                    $("#formPfisicaTel").addClass('is-invalid');
            }
            ;

            function VerificarNumeroLogradouro(num) {
                if (num !== '')
                {
                    $("#formPfisicaNumero").removeClass('is-invalid');
                    $("#formPfisicaNumero").addClass('is-valid');
                } else
                    $("#formPfisicaNumero").addClass('is-invalid');
            };

            function VerificarComplemento(comp) {
                if (comp !== '')
                {
                    $("#formPfisicaComple").removeClass('is-invalid');
                    $("#formPfisicaComple").addClass('is-valid');
                } else
                    $("#formPfisicaComple").addClass('is-invalid');
            };

            function VerificarSenha(pass) {
                if (pass !== '')
                {
                    $("#formPfisicaSenha").removeClass('is-invalid');
                    $("#formPfisicaSenha").addClass('is-valid');
                    $("#btnCadastrarPfisico").removeClass('disabled');
                } else
                    $("#formPfisicaSenha").addClass('is-invalid');
            }
            ;
        </script>
    </head>

    <body>
        <!--Importando Script Jquery-->

        <br>
        <h1 style="color:#03bb85; font-weight:bold; text-align: center;">Cadastre sua conta</h1>
        <br>
        <!--Formulário-->
        <div class="row justify-content-center align-items-center">
            <div class="div1 w-75 border border-dark">
                <!--INICIO DO IDENTIFICADOR-->
                <form id="Identificador">
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" onclick="capturar(this.value)" name="inlineRadioOptions" id="inlineRadio1" value="1" checked>
                        <label class="form-check-label" for="inlineRadio1"><b>Pessoa Física</b></label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" onclick="capturar(this.value)" name="inlineRadioOptions" id="inlineRadio2" value="2">
                        <label class="form-check-label" for="inlineRadio2"><b>Pessoa Júridica</b></label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" onclick="capturar(this.value)" name="inlineRadioOptions" id="inlineRadio3" value="3">
                        <label class="form-check-label" for="inlineRadio3"><b>ONGS</b></label>
                    </div>
                </form>
                <!--FINAL DO IDENTIFICADOR-->

                <!--INICIO DO CADASTRO FISICO-->
                <form id="cadastroFisico" method="post" action="CadastrarUsuarioPFisica">
                    <h1>Cadastro Físico</h1>
                    <div class="row">
                        <div class="col">
                            <label for="formPFisicaNome" class="form-label">Nome Completo</label>
                            <input required type="text" onfocusout="VerificarNome(this.value)" name="nomeCompletoPF" class="form-control" placeholder="Ex: Quincas Borba Machado" id="formPFisicaNome" aria-describedby="NameHelp" style="text-align:left;"/>
                        </div>
                        <div class="col">
                            <label for="formPfisicaApelido" class="form-label">Apelido</label>
                            <input required type="text" onfocusout="VerificarApelido(this.value)" name="apelidoPF" class="form-control" placeholder="Ex: Assis" id="formPfisicaApelido" aria-describedby="ApelidoHelp" style="text-align:left;"/>
                        </div>
                    </div>
                    <br>  
                    <div class="row">
                        <div class="col-3">
                            <label for="formPfisicaCpf" class="form-label">CPF</label>
                            <input required type="text" onfocusout="VerificarCPF(this.value)" name="cpfPF" class="form-control w-100" placeholder="000.000.000-00" id="formPfisicaCpf" aria-describedby="emailCPF" style="text-align:left;"/>
                        </div>
                        <div class="col-3">
                            <label for="formPfisicoDataNasc" class="form-label">Data de Nascimento</label>
                            <input required type="text" name="dataNascimentoPF" class="form-control w-100" placeholder="DD/MM/AAAA" id="formPfisicoDataNasc" aria-describedby="dateHelp" style="text-align:left;"/>
                        </div>
                        <div class="col-6">
                            <label for="formPfisicaTel" class="form-label">Telefone Celular</label>
                            <input required type="tel" onfocusout="VerificarTelefoneCelular(this.value)" name="telefoneCelularPF" class="form-control w-100" placeholder="+55 (DDD) 00000-0000" id="formPfisicaTel" aria-describedby="emailHelp" style="text-align:left;"/>
                        </div>
                    </div>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-3">
                            <label for="formPfisicaCep" class="form-label">CEP</label>
                            <input required type="text" name="cepPF" class="form-control w-100" placeholder="00000-000" id="formPfisicaCep"  style="text-align:left;"/>
                        </div>
                        <div class="col-3">
                            <label for="formPfisicaEstado" class="form-label">Estado</label>
                            <select id="formPfisicaEstado" name="estadoPF" class="form-select" required>
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
                            </select>
                        </div>
                        <div class="col-6">
                            <label for="formCidadePfisica" class="form-label">Cidade</label>
                            <input required type="text" name="cidadePF" class="form-control" placeholder="Ex: São Paulo" id="formCidadePfisica" style="text-align:left;"/>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-4">
                            <label for="formPfisicaEndereco" class="form-label">Endereço</label>
                            <input required type="text" name="enderecoPF" class="form-control" placeholder="Ex: Rua Francisco Marcelino" id="formPfisicaEndereco" style="text-align:left;"/>
                        </div>
                        <div class="col-2">
                            <label for="formPfisicaNumero" class="form-label">Número</label>
                            <input required type="text" name="numeroPF" onfocusout="VerificarNumeroLogradouro(this.value)" class="form-control w-100" placeholder="Ex: 30A" id="formPfisicaNumero" aria-describedby="NumeroHelp" style="text-align:left;"/>
                        </div>
                        <div class="col-6">
                            <label for="formPfisicaComple" class="form-label">Complemento</label>
                            <input required type="text" name="complementoPF" onfocusout="VerificarComplemento(this.value)" class="form-control" placeholder="Ex: Próximo à Loja Vicente Mobile" id="formPfisicaComple" style="text-align:left;"/>
                        </div>
                    </div>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-6">
                            <label for="formPfisicaEmail" class="form-label">Email</label>
                            <input required type="email" name="emailPF" class="form-control w-100" placeholder="Ex: quincasborba@outlook.com" id="formPfisicaEmail" aria-describedby="emailHelp" style="text-align:left;"/>
                        </div>
                        <div class="col-6">
                            <label for="formPfisicaSenha" class="form-label">Senha</label>
                            <input required type="password" onfocusout="VerificarSenha(this.value)" name="senhaPF" class="form-control w-100 " id="formPfisicaSenha" style="text-align:left;"/>
                        </div>
                    </div>
                    <div class="div2">
                        <br>
                        <button style="background-color: #03bb85;" onclick="TestaCPF()" name="btnPfisicoCadastro" type="submit" class="btn btn-primary w-50"><b>Cadastrar-se</b></button><br><br>
                    </div>
                </form>
                <!--INICIO DO CADASTRO JURIDICO-->
                <form id="cadastroJuridico" style="display:none;" method="post" action="CadastrarUsuarioPJuridica">
                    <h1>Cadastro Jurídico</h1>
                    <div class="row">
                        <div class="col">
                            <label for="formJuriRazaoSocial" class="form-label">Razao Social</label>
                            <input required type="name" name="razaoSocialPJ" class="form-control" placeholder="Ex: Pet Shop Brasil" id="formJuriRazaoSocial" aria-describedby="NameHelp" style="text-align:left;">
                        </div>
                        <div class="col">
                            <label for="formJuriApelido" class="form-label">Apelido</label>
                            <input required type="name" name="apelidoPJ" class="form-control" placeholder="Ex: Pet Shop Brasil" id="formJuriApelido" aria-describedby="ApelidoHelp" style="text-align:left;">
                        </div>
                    </div>
                    <br>  
                    <div class="row">
                        <div class="col-3">
                            <label for="formJuriCpf" class="form-label">CNPJ</label>
                            <input required type="CPF" name="cnpjPJ" class="form-control w-100" placeholder="00.000.000/0001-00" id="formJuriCnpj" aria-describedby="emailCPF" style="text-align:left;">
                        </div>
                        <div class="col-3">
                            <label for="formJuriDataFund" class="form-label">Data de Fundação</label>
                            <input required type="text" name="dataFundacaoPJ" class="form-control w-100" placeholder="DD/MM/AAAA" id="formJuriDataFund" aria-describedby="dateHelp" style="text-align:left;">
                        </div>
                        <div class="col-6">
                            <label for="formJuriTelCel" class="form-label">Telefone/Celular</label>
                            <input required type="tel" name="telefoneCelularPJ" class="form-control w-100" placeholder="+55 (DDD) 00000-0000" id="formJuriTelCel" aria-describedby="emailHelp" style="text-align:left;">
                        </div>
                    </div>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-3">
                            <label for="formJuriCep" class="form-label">CEP</label>
                            <input required type="CEP" name="cepPJ" class="form-control w-100" placeholder="00000-000" id="formJuriCep" aria-describedby="CEPHelp" style="text-align:left;">
                        </div>
                        <div class="col-3">
                            <label for="formJuriEstado" class="form-label">Estado</label>
                            <select id="formJuriEstado" name="estadoPJ" class="form-select" required="">
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
                        <div class="col-6">
                            <label for="formJuriCida" class="form-label">Cidade</label>
                            <input required type="text" name="cidadePJ" class="form-control" placeholder="Ex: São Paulo" id="formJuriCida" style="text-align:left;">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-4">
                            <label for="formJuriEndere" class="form-label">Endereço</label>
                            <input required type="text" name="enderecoPJ" class="form-control" placeholder="Ex: Rua Francisco Marcelino" id="formJuriEndere" style="text-align:left;">
                        </div>
                        <div class="col-2">
                            <label for="formJuriNumero" class="form-label">Número</label>
                            <input required type="text" name="numeroPJ" class="form-control w-100" placeholder="Ex: 62" id="formJuriNumero" aria-describedby="NumeroHelp" style="text-align:left;">
                        </div>
                        <div class="col-6">
                            <label for="formJuriComple" class="form-label">Complemento</label>
                            <input required type="text" name="complementoPJ" class="form-control" placeholder="Ex: Próximo à Loja Vicente Mobile" id="formJuriComple" style="text-align:left;">
                        </div>
                    </div>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-6">
                            <label for="formJuriEmail" class="form-label">Email</label>
                            <input required type="email" name="emailPJ" class="form-control w-100" placeholder="Ex: petshopebrasil@hotmail.com" id="formJuriEmail" aria-describedby="emailHelp" style="text-align:left;">
                        </div>
                        <div class="col-6">
                            <label for="formJuriSenha" class="form-label">Senha</label>
                            <input required type="password" name="senhaPJ" class="form-control w-100 " id="formJuriSenha" style="text-align:left;">
                        </div>
                    </div>
                    <div class="div2">
                        <br>
                        <button style="background-color: #03bb85;"  name="btnJuriCadastro" type="submit" class="btn btn-primary w-50"><b>Cadastrar sua Empresa</b></button><br><br>
                    </div>
                </form>
                <!--FINAL DO CADASTRO JURIDICO-->

                <!--INICIO DO CADASTRO DE ONGS-->
                <form id="cadastroOngs" style="display:none;" method="post" action="CadastrarONGs">
                    <h1>Cadastro de ONG</h1>
                    <div class="row">
                        <div class="col">
                            <label for="formOngsNome" class="form-label">Nome da Organizacao</label>
                            <input required type="text" name="nomeONG" class="form-control" placeholder="Ex: ONG Cão Sem Dono" id="formOngsNome" aria-describedby="NameHelp" maxlength="100" style="text-align:left;">
                        </div>
                        <div class="col">
                            <label for="formOngsApelido" class="form-label">Apelido</label>
                            <input required type="text" name="apelidoONG" class="form-control" placeholder="Ex: ONG Cão Sem Dono" id="formOngsApelido" aria-describedby="ApelidoHelp" maxlength="100" style="text-align:left;">
                        </div>
                    </div>
                    <br>  
                    <div class="row">
                        <div class="col-3">
                            <label for="formOngsCnpj" class="form-label">CNPJ</label>
                            <input required type="text" name="cnpjONG" class="form-control w-100" placeholder="00.000.000/0001-00" id="formOngsCnpj" aria-describedby="emailCPF" style="text-align:left;">
                        </div>
                        <div class="col-3">
                            <label for="formOngsDataFund" class="form-label">Data de Fundação</label>
                            <input required type="text" name="dataFundacaoONG" class="form-control w-100" placeholder="DD/MM/AAAA" id="formOngsDataFund" aria-describedby="dateHelp" style="text-align:left;">
                        </div>
                        <div class="col-6">
                            <label for="formOngsTelCel" class="form-label">Telefone/Celular</label>
                            <input required type="text" name="telefoneCelularONG" class="form-control w-100" placeholder="+55 (DDD) 00000-0000" id="formOngsTelCel" aria-describedby="emailHelp" style="text-align:left;">
                        </div>
                    </div>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-3">
                            <label for="formOngsCep" class="form-label">CEP</label>
                            <input required type="CEP" name="cepONG" class="form-control w-100" placeholder="00000-000" id="formOngsCep" aria-describedby="CEPHelp" style="text-align:left;">
                        </div>
                        <div class="col-3">
                            <label for="inputState" class="form-label">Estado</label>
                            <select id="inputState" name="estadoONG" class="form-select" required="">
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
                                <option value="Paraná">PR</option>
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
                            <label for="formOngsCidade" class="form-label">Cidade</label>
                            <input required type="text" name="cidadeONG" class="form-control" placeholder="Ex: São Paulo" id="formOngsCidade" style="text-align:left;">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-4">
                            <label for="formOngsEnder" class="form-label">Endereço</label>
                            <input required type="text" name="enderecoONG" class="form-control" placeholder="Ex: Rua Francisco Marcelino" id="formOngsEnder" style="text-align:left;">
                        </div>
                        <div class="col-2">
                            <label for="formOngsNumer" class="form-label">Número</label>
                            <input required type="text" name="numeroONG" class="form-control w-100" placeholder="Ex: 62" id="formOngsNumer" aria-describedby="NumeroHelp" style="text-align:left;">
                        </div>
                        <div class="col-6">
                            <label for="formOngsComple" class="form-label">Complemento</label>
                            <input required type="text" name="complementoONG" class="form-control" placeholder="Ex: Próximo à Loja Vicente Mobile" id="formOngsComple" style="text-align:left;">
                        </div>
                    </div>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-6">
                            <label for="formOngsEmail" class="form-label">Email</label>
                            <input required type="email" name="emailONG" class="form-control w-100" placeholder="Ex: ongcaosemdono@outlook.com" id="formOngsEmail" aria-describedby="emailHelp" style="text-align:left;">
                        </div>
                        <div class="col-6">
                            <label for="formOngsSenha" class="form-label">Senha</label>
                            <input required required type="password" name="senhaONG" class="form-control w-100 " id="formOngsSenha" style="text-align:left;">
                        </div>
                    </div>
                    <div>
                        <div class="div2">
                            <br>
                            <button style="background-color: #03bb85;"  name="btnOngCadastro" type="submit" class="btn btn-primary w-50"><b>Cadastrar sua Organizacao</b></button><br><br>
                        </div>
                    </div>
                </form>
                <!--FINAL DO CADASTRO DE ONGS-->

                <div class="divCad">
                    <b>Já possui uma conta? </b><a class="txtVerde" href="Login.html"><b>Efetue login</b></a>
                </div>
            </div>
        </div>

    </body>
    <style>
        html, body {
            max-width: 100%;
            overflow-x: hidden;
        }
    </style>

</html>
<script type="text/javascript">
$("#formPfisicaCep,#formJuriCep,#formOngsCep").focusout(function () {
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
                        $("#formCidadePfisica,#formJuriCida,#formOngsCidade").val(resposta.localidade);
                        $("#formPfisicaEstado,#formJuriEstado,#inputState").val(resposta.uf);
						
						//Verificação para saberrse o campo estado está sendo trazido
						//Uma forma alterativa de validar o CEP
						if($("#formPfisicaEstado,#formJuriEstado,#inputState").val() === "")
						{
							alert("Digite um CEP válido!");
							document.getElementById('formPfisicaCep').value='';
							document.getElementById('formPfisicaNumero').value='';
							document.getElementById('formPfisicaComple').value='';
							document.getElementById('formJuriCep').value='';
							document.getElementById('formJuriNumero').value='';
							document.getElementById('formJuriComple').value='';
							document.getElementById('formJuriCep').value='';
							document.getElementById('formOngsNumer').value='';
							document.getElementById('formOngsComple').value='';
							$("#formPfisicaNumero,#formJuriNumero,#formOngsNumer").removeClass('is-invalid');
							$("#formPfisicaCep,#formJuriCep,#formOngsCep").focus();
							$("#formPfisicaCep,#formJuriCep,#formOngsCep").addClass('is-invalid');
							$("#formPfisicaCep,#formJuriCep,#formOngsCep").removeClass('is-valid');
							$("#formPfisicaEstado,#formJuriEstado,#inputState").removeClass('is-valid');
							$("#formCidadePfisica,#formJuriCida,#formOngsCidade").removeClass('is-valid');
							$("#formPfisicaEndereco,#formJuriEndere,#formOngsEnder").removeClass('is-valid');
						}
						else
						{
							$("#formPfisicaCep,#formJuriCep,#formOngsCep").removeClass('is-invalid');
							$("#formPfisicaCep,#formJuriCep,#formOngsCep").addClass('is-valid');
							$("#formPfisicaEstado,#formJuriEstado,#inputState").addClass('is-valid');
							$("#formCidadePfisica,#formJuriCida,#formOngsCidade").addClass('is-valid');
							$("#formPfisicaEndereco,#formJuriEndere,#formOngsEnder").addClass('is-valid');
							$("#formPfisicaNumero,#formJuriNumero,#formOngsNumer").focus();
						}
                    }
                });
            });

                                    function capturar(a) {

                                    document.getElementById('formPFisicaNome').value = '';
                                    document.getElementById('formPfisicaApelido').value = '';
                                    document.getElementById('formPfisicaCpf').value = '';
                                    document.getElementById('formPfisicoDataNasc').value = '';
                                    document.getElementById('formPfisicaTel').value = '';
                                            document.getElementById('formPfisicaCep').value = '';
                                            document.getElementById('formPfisicaEndereco').value = '';
                                            document.getElementById('formPfisicaComple').value = '';
  
                                            document.getElementById('formCidadePfisica').value = '';
                                    document.getElementById('formPfisicaEstado').value = '';
                                    document.getElementById('formPfisicaNumero').value = '';
                                    document.getElementById('formPfisicaEmail').value = '';
                                    document.getElementById('formPfisicaSenha').value = '';
                                    document.getElementById('formJuriRazaoSocial').value = '';
                                    document.getElementById('formJuriApelido').value = '';
                                    document.getElementById('formJuriCnpj').value = '';
                                    document.getElementById('formJuriDataFund').value = '';
                                    document.getElementById('formJuriTelCel').value = '';
                                    document.getElementById('formJuriCep').value = '';
                                    document.getElementById('formJuriEstado').value = '';
                                    document.getElementById('formJuriCida').value = '';
                                    document.getElementById('formJuriEndere').value = '';
                                    document.getElementById('formJuriNumero').value = '';
                                    document.getElementById('formJuriComple').value = '';
                                    document.getElementById('formJuriEmail').value = '';
                                    document.getElementById('formJuriSenha').value = '';
                                    document.getElementById('formOngsNome').value = '';
                                    document.getElementById('formOngsApelido').value = '';
                                    document.getElementById('formOngsCnpj').value = '';
                                    document.getElementById('formOngsDataFund').value = '';
                                    document.getElementById('formOngsTelCel').value = '';
                                    document.getElementById('formOngsCep').value = '';
                                    document.getElementById('inputState').value = '';
                                    document.getElementById('formOngsCidade').value = '';
                                    document.getElementById('formOngsEnder').value = '';
                                    document.getElementById('formOngsNumer').value = '';
                                    document.getElementById('formOngsComple').value = '';
                                    document.getElementById('formOngsEmail').value = '';
                                    document.getElementById('formOngsSenha').value = '';<!--Removendo a classe is-valid dos campos relacionados ao CEP-->
                $("#formPfisicaCep,#formJuriCep,#formOngsCep").removeClass('is-valid');
                $("#formPfisicaEstado,#formJuriEstado,#inputState").removeClass('is-valid');
                $("#formCidadePfisica,#formJuriCida,#formOngsCidade").removeClass('is-valid');
                $("#formPfisicaEndereco,#formJuriEndere,#formOngsEnder").removeClass('is-valid');
        var capturando = a;
        var x = document.getElementById('cadastroFisico');
        var x1 = document.getElementById('cadastroJuridico');
        var x2 = document.getElementById('cadastroOngs');
        if (a === '1') {
            x.style.display = 'block';
            x1.style.display = 'none';
            x2.style.display = 'none';
        } else {
            if (a === '2') {
                x1.style.display = 'block';
                x.style.display = 'none';
                x2.style.display = 'none';
            } else {
                if (a === '3') {
                    x2.style.display = 'block';
                    x1.style.display = 'none';
                    x.style.display = 'none';
                } else {
                    alert("O código inserido está incorreto");
                }
            }
        }
    }
</script>