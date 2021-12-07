<?php
session_start();
include("conexaoBanco.php");
include("exten.php");
ini_set('display_errors', 0);
ini_set('display_startup_errors', 0);
$usuarios = mysqli_query($conn, "SELECT * FROM usuario WHERE id_usuario = '" . $_SESSION["idUsuar"] . "' ") or die("Falha ao puxar query da DataBase" . mysqli_error($conn));
$usuar = mysqli_fetch_assoc($usuarios);
$imagenusuario = mysqli_query($conn, "SELECT * FROM imagensusuario WHERE id_usuario = '" . $_SESSION["idUsuar"] . "' ") or die("Falha ao puxar query da DataBase" . mysqli_error($conn));
$imguser = mysqli_fetch_assoc($imagenusuario);

$sql_notifi = mysqli_query($conn, "SELECT * FROM acordo WHERE visualizacaoAcordo = 0 AND id_ParaUsuario = '" . $_SESSION["idUsuar"] . "'");
$busvisu = mysqli_num_rows($sql_notifi);
?>


<!DOCTYPE html>
<html lang="pt-br">

<head>
    <title>
        <?php
        if (isset($_GET["paraUser"]) != (isset($_GET["idUsuar"]))) {
            $userApelido = mysqli_query($conn, "SELECT * FROM usuario WHERE id_usuario = '" . $_GET["paraUser"] . "'");
            $uApelido = mysqli_fetch_assoc($userApelido);
            echo $uApelido["apelido"];
        } else {
            echo "PetCaring | Chat";
        }
        ?>
    </title>
</head>

<body>
    <input type="hidden" name="id_usuario" value="<?php echo $usuar["id_usuario"]; ?>">

    <nav class="navbar bg" id="navbar">
        <div class="container-fluid">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col">
                        <a class="navbar-brand" href="index.jsp">
                            <img src="../img/Brasao.png" alt="" width="50" class="d-inline-block align-text-bottom">
                            <text class="tituPet" id="tituNav">PetCaring</text>
                        </a>
                    </div>
                    <div class="col-md-auto">
                        <form class="d-flex">
                            <input class="form-control align-middle" type="search" placeholder="Pesquisar" aria-label="Search">
                        </form>
                    </div>
                    <div style="margin-left: 10px;" class="col">
                        <a href="http://localhost:8080/PetCaring/cuidados.jsp"><button type="button" class="imgBtn" id="btnCare" onclick="capturar(this.value)" value="1"></button></a>
                    </div>
                    <div style="margin-left: 50px;" class="col">
                        <a href="http://localhost:8080/PetCaring/caes.jsp"><button type="button" class="imgBtn" id="btnBook" onclick="capturar(this.value)" value="2"></button></a>
                    </div>
                    <div style="margin-left: 50px;" class="col">
                        <a href="http://localhost:8080/PetCaring/index.jsp"><button type="button" class="imgBtn" id="btnHome2" onclick="capturar(this.value)" value="3"></button></a>
                    </div>
                    <div style="margin-left: 50px;" class="col">

                        <a href="http://localhost:8080/PetCaring/notificacoes.jsp"><button name="notificacao" type="submit" class="imgBtn btn " id="btnSino" onclick="capturar(this.value)" value="5" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="bottom" data-bs-content="Bottom popover">
                                <?php
                                if (isset($_POST["notificacao"])) {
                                    $sql_notifi2 = mysqli_query($conn, "UPDATE acordo SET visualizacaoAcordo = 1 WHERE id_ParaUsuario = '" . $_SESSION["idUsuar"] . "'");
                                    $busvisu2 = mysqli_num_rows($sql_notifi2);

                                    if ($busvisu2) {
                                        header("Location: http://localhost:8080/PetCaring/notificacoes.jsp");
                                        die();
                                    }
                                }
                                ?>
                            </button></a>
                        <span class="badge bg-danger rounded-pill align-bottom "><?php echo $busvisu; ?></span>
                    </div>
                    <div style="margin-left: 50px;" class="col">
                        <a href="http://localhost:8080/PetCaring/Perfil?id_usuario=<?php echo $usuar["id_usuario"]; ?>"><img style="object-fit: cover;" src="../img/imagensUsers/<?php echo $imguser["nome_imgUsuario"]; ?>" onclick="mostra('config')" type="button" class="imgBtnPerfil" id="btnPerfil"></a>

                    </div>
                </div>
            </div>
        </div>
    </nav>
    <div class="list-group" id="config">
        <a href="<%=request.getContextPath()%>/Perfil?id_usuario=<%=id%>" method="post"><button type="button" class="list-group-item list-group-item-action" id="lkPerfil">Perfil</button></a>
        <a href="configuracoes.jsp"><button type="button" class="list-group-item list-group-item-action">Configurações</button></a>
        <a href="<%=request.getContextPath()%>/Logout"><button type="button" class="list-group-item list-group-item-action"><b class="text-danger">Sair</b></button></a>
    </div>
    <script type="text/javascript">
        function capturar(a) {
            var x = document.getElementById('btnCare');
            var x1 = document.getElementById('btnBook');
            var x2 = document.getElementById('btnHome2');
            var x3 = document.getElementById('btnChat');
            var x4 = document.getElementById('btnSino');
            var x5 = document.getElementById('btnPerfil');

            if (a === '1') {
                x.style.filter = 'invert(100%)';
            } else if (a === '2') {
                x1.style.filter = 'invert(100%)';
            } else if (a === '3') {
                x2.style.filter = 'invert(100%)';
            } else if (a === '4') {
                x3.style.filter = 'invert(100%)';
            } else if (a === '5') {
                x4.style.filter = 'invert(100%)';
            } else {
                x5.style.boxShadow = ' 0 0 2em white';
                x5.style.border = '2px solid #1166e8';
            }
        }
    </script>
    <div class="container-fluid" id="Areachat">
        <div class="row cols-2">
            <div class="col-4 bg" style="height:100%;overflow-y: scroll;overflow-x: hidden;">
                <input type="text" id="doUser" value="<?php echo $usuar["id_usuario"]; ?>" hidden />
                <?php
                $mensagens = mysqli_query($conn, "SELECT * FROM usuario WHERE id_usuario != '" . $usuar["id_usuario"] . "'") or die("Falha ao puxar query da DataBase" . mysqli_error($conn));

                while ($mensa = mysqli_fetch_assoc($mensagens)) {
                    $imagenusuario1 = mysqli_query($conn, "SELECT * FROM imagensusuario WHERE id_imgUsuario = '" . $mensa["id_imgUsuario"] . "' ") or die("Falha ao puxar query da DataBase" . mysqli_error($conn));
                    $buscaimg = mysqli_fetch_assoc($imagenusuario1);
                    $nomeimg = isset($buscaimg["nome_imgUsuario"]);
                    if ($buscaimg["nome_imgUsuario"] != null) {

                        echo '<a href="?paraUser=' . $mensa["id_usuario"] . '"class="list-group-item list-group-item-action align-middle" aria-current="true"> 
						  <img style="object-fit: cover;" src="../img/imagensUsers/' . $buscaimg["nome_imgUsuario"] . '" class=" imgBtnPerfil" id="btnPerfilChat2">
						  </img>
						  ' . $mensa["apelido"] . '</a>';
                    } else {
                        echo '<a href="?paraUser=' . $mensa["id_usuario"] . '"class="list-group-item list-group-item-action align-middle" aria-current="true"> 
                        <img style="object-fit: cover;" src="../img/imagensUsers/perfilImg.png" class=" imgBtnPerfil" id="btnPerfilChat2">
                        </img>
                        ' . $mensa["apelido"] . '</a>';
                    }
                }
                ?>
            </div>
            <div class="col-8">
                <div id="conversaDiv" class="modal-content" <?php
                                                            if (isset($_GET["paraUser"]) != (isset($_GET["idUsuar"]))) {
                                                                $userApelido = mysqli_query($conn, "SELECT * FROM usuario WHERE id_usuario = '" . $_GET["paraUser"] . "'");
                                                                $uApelido = mysqli_fetch_assoc($userApelido);
                                                                echo $uApelido["apelido"];
                                                            } else {
                                                                echo "hidden";
                                                            } ?>>
                    <div class="modal-header bg-light">
                        <h5 class="card-title tituCuidados">
                            <a href="perfil.html">
                                <img style="object-fit: cover; min-height: 50px; max-height: 500px;" src="../img/imagensUsers/<?php
                                                                                                                                if (isset($_GET["paraUser"]) != (isset($_GET["idUsuar"]))) {
                                                                                                                                    $userImg = mysqli_query($conn, "SELECT * FROM imagensusuario WHERE id_usuario = '" . $_GET["paraUser"] . "'");
                                                                                                                                    $uImg = mysqli_fetch_assoc($userImg);
                                                                                                                                    echo $uImg["nome_imgUsuario"];
                                                                                                                                    if ($uImg["nome_imgUsuario"] == NULL) {
                                                                                                                                        echo "perfilImg.png";
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                ?>" type="button" class="imgBtnPerfil" id="btnPerfilChat">
                                </img>
                            </a>
                            <?php
                            if (isset($_GET["paraUser"])) {
                                $userApelido = mysqli_query($conn, "SELECT * FROM usuario WHERE id_usuario = '" . $_GET["paraUser"] . "'") or die("Falha ao puxar query da DataBase" . mysqli_error($conn));
                                $uApelido = mysqli_fetch_assoc($userApelido);
                                echo '<input type="text" value=' . $_GET["paraUser"] . ' id="paraUser" hidden/>';
                                echo $uApelido["apelido"];
                            } else {
                                $userApelido = mysqli_query($conn, "SELECT * FROM usuario") or die("Falha ao puxar query da DataBase" . mysqli_error($conn));
                                $uApelido = mysqli_fetch_assoc($userApelido);
                                $_SESSION["paraUser"] = $uApelido["id_usuario"];
                                echo '<input type="text" value=' . $_SESSION["paraUser"] . ' id="paraUser" hidden />';
                                echo $uApelido["apelido"];
                            }
                            ?>
                        </h5>
                        <div class="col-4 text-center">
                            <!--<button class="btnImgVoz" title="Chamada de Voz"></button> 
								<button class="btnImgVideo" title="Chamada de Video"></button>-->
                        </div>
                    </div>

                    <div class="modal-body" id="mensagenBody" style="height: 500px; overflow-y: scroll; overflow-x: hidden;">
                        <?php

                        if (isset($_GET["paraUser"]))
                            $chatConver = mysqli_query($conn, "SELECT * FROM conversa WHERE (id_DoUsuario = '" . $_SESSION["idUsuar"] . "' AND id_ParaUsuario = '" . $_GET["paraUser"] . "') 
							OR (id_DoUsuario = '" . $_GET["paraUser"] . "' AND id_ParaUsuario = '" . $_SESSION["idUsuar"] . "') ") or die("Falha ao puxar query da DataBase" . mysqli_error($conn));

                        else
                            $chatConver = mysqli_query($conn, "SELECT * FROM conversa WHERE (id_DoUsuario = '" . $_SESSION["idUsuar"] . "' AND id_ParaUsuario = '" . $_SESSION["paraUser"] . "') 
								OR (id_DoUsuario = '" . $_SESSION["paraUser"] . "' AND id_ParaUsuario = '" . $_SESSION["idUsuar"] . "') ") or die("Falha ao puxar query da DataBase" . mysqli_error($conn));


                        while ($chat = mysqli_fetch_assoc($chatConver)) {
                            if ($chat["id_DoUsuario"] == $_SESSION["idUsuar"])
                                echo "<div style='text-align: right;'>
												<p 
												style='
												word-wrap: break-word;
												display: inline-block;
												font-size:20px;
												padding:10px;
												background-color:Honeydew;
												border-radius:0.75rem 0em 0.75rem 0.75em;
												max width: 70%;'>
													" . $chat["conteudo"] . "
												</p>

										  </div>";

                            else
                                echo "<div style='text-align: left;'>
													<p 
													style='
													word-wrap: break-word;
													display: inline-block;
													font-size:20px;
													padding:10px;
													background-color:Gainsboro;
													border-radius: 0em	0.75rem 0.75rem 0.75em;
													max width: 70%;'>
														" . $chat["conteudo"] . "
													</p>
											</div>";
                        }
                        ?>
                    </div>
                    <div class="modal-footer">
                        <input id="mensagem" class="form-control w-75"></input>
                        <button id="enviar"><i class="far fa-paper-plane"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript">
    var objDiv = document.getElementById("mensagenBody");
    objDiv.scrollTop = objDiv.scrollHeight;

    $(document).ready(function() {
        $("#enviar").on("click", function() {
            $.ajax({
                url: "inserirMensagem.php",
                method: "POST",
                data: {
                    doUser: $("#doUser").val(),
                    paraUser: $("#paraUser").val(),
                    mensagem: $("#mensagem").val()
                },
                dateType: "text",
                success: function(data) {
                    $("#mensagem").val("");
                }
            });
        });
        setInterval(function() {
            $.ajax({
                url: "chatTempoReal.php",
                method: "POST",
                data: {
                    doUser: $("#doUser").val(),
                    paraUser: $("#paraUser").val()
                },
                dataType: "text",
                success: function(data) {
                    $("#mensagenBody").html(data);
                }
            });
        }, 700);

    });
</script>

</html>