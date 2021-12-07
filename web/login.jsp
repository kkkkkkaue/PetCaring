<!DOCTYPE html>
<%@include file="lib/include/header.jsp"%>
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
        <title>PetCaring - Login</title>

        <script>
            $(document).ready(function () {
                $('#exampleCheck1').on('click', function () {

                    var passwordField = $('#exampleInputPassword1');
                    var passwordFieldType = passwordField.attr('type');

                    if (passwordFieldType === 'password')
                    {
                        passwordField.attr('type', 'text');
                        $(this).val('Hide');
                    } else {
                        passwordField.attr('type', 'password');
                        $(this).val('Show');
                    }
                });
            });

        </script>
    </head>
    <body>
        <style>
            html, body {
                max-width: 100%;
                overflow-x: hidden;
            }
        </style>
        <div id="preloader">
            <div id="status"></div>
        </div>
        <br>
        <br>
        <br>
        <br>
        <h1 style="color:#03bb85; font-weight:bold;  text-align: center;">Acesse sua conta</h1>
                <br>

        <section id="Logar">
            <div class="row justify-content-center align-items-center">
                <form class="div1 w-25 border border-dark" action="Login" method="post">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email</label> 
                        <input type="email" name="email" class="form-control w-100" id="exampleInputEmail1" aria-describedby="emailHelp" style="text-align:left;">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Senha</label>
                        <input type="password" name="password" class="form-control w-100 " id="exampleInputPassword1" style="text-align:left;">
                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Mostrar</label>
                    </div>
                    <div class="div2">
                        <button type="submit" class="btn btn-primary w-50 align-middle" style="background-color: #03bb85;">Entrar</button>
                        <br>
                        <br> 
                        <!--<a class="txtVerde" href="esqueci.jsp"><b>Esqueceu sua senha?</b></a>-->
                    </div>
                </form>
            </div>
            <section class="divCad">
                <br><b>Não possui conta? </b><a class="txtVerde" href="cadastrarUsuario.jsp"><b>Cadastrar-se<b></a>
            </section>
         </section>
                            <!--
                    <div class="form-floating">
                      <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
                      <label for="floatingTextarea2">Comments</label>
                    </div>
                            -->
</body>
</html>