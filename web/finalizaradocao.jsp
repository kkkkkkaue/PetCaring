<%@page import="ListarUsers.ListarUsers"%>
<%@page import="PublicacaoUnica.PublicacaoUnica"%>
<%@page import="Model.Dados" %>
<%@page import="java.util.ArrayList" %>
<%
    int erro;

    request.getSession().getAttribute("erro");
    // int erro = (Integer) session.getAttribute("erro");
    if ((Integer) session.getAttribute("erro") == null) {
        erro = 0;
    } else {
        erro = (Integer) session.getAttribute("erro");
    }

    String apelido = (String) request.getSession().getAttribute("apelido");
    String nomeImgPerf = (String) request.getSession().getAttribute("NomeIMG");
    String idPetPerfil = (String) request.getSession().getAttribute("id_user");
    String imgPet = "";
    int idPetPerfil2 = Integer.parseInt(idPetPerfil);
    int codigo_pet = Integer.parseInt(request.getParameter("cod_pet"));
    int id_acolhedor = Integer.parseInt(request.getParameter("id_ParaUsuario"));

    PublicacaoUnica dao = new PublicacaoUnica();
    ArrayList<Dados> lista = dao.listar(codigo_pet);
    ListarUsers dao2 = new ListarUsers();
    ArrayList<Dados> lista2 = dao2.listar(id_acolhedor);
%>
<!DOCTYPE html>
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
        <script type="text/javascript" src="lib/js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript" src="lib/js/script.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <title>PetCaring - Finalizar Acordo</title>
    </head>
    <body>
        <div id="preloader">
            <div id="status"></div>
        </div>
        <!--Efeito Fade-->
        <div id="efeitoFade" onclick="esconder()">
        </div>
        <%@include file="lib/include/headerLogado.jsp"%>
        <div class="container-xxl my-4" align="center">
            <input type="text" value="<%=idPetPerfil%>" hidden/>
            <br>
            <br>
            <h1 style="text-align:center;">Acordo de Adoção</h1>
            <br>
            <br>
            <br>
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <span class="badge fs-4" style="width:300px; max-height: 300px; border-radius:25px 25px 0px 0px; background-color: #03bb85;">Doador</span>
                            <img src="lib/img/imagensUsers/<%=nomeImgPerf%>" style="width:300px; height: 300px; border-radius:0px 0px 25px 25px; object-fit: cover;">
                        </div>
                        <h2><b><%=apelido%></b></h2>
                    </div>
                </div>
                <div class="col">
                    <img src="lib/img/PawTrack1.png" style="object-fit: cover; width: 125px; height: 80px; margin-top: 100px;"></img>
                </div>
                <%
                    if (lista.size() > 0) {
                        for (Dados conteudo : lista) {
                %>
                <div class="col">
                    <span class="badge fs-4" style="width:300px; border-radius:25px 25px 0px 0px; background-color: #03bb85;">Pet</span>
                    <div class="col">
                        <div class="col">
                            <img id="imgPublic" style="width:300px; height: 300px; border-radius:0px 0px 25px 25px; object-fit: cover;" src="lib/img/petCadastrados/<%=conteudo.getDiretorioIMG()%>">
                            <%imgPet = conteudo.getDiretorioIMG();%>
                        </div>
                    </div>
                    <h2><b><%=conteudo.getNome()%></b></h2>
                </div>
                <%}
                    }%>
                <div class="col">
                    <img src="lib/img/PawTrack1.png" style="object-fit: cover; width: 125px; height: 80px; margin-top: 100px;"></img>
                </div>
                <div class="col">
                    <div class="row">
                        <%
                            if (lista2.size() > 0) {
                                for (Dados conteudo : lista2) {
                        %>
                        <div class="col-6">
                            <span class="badge fs-4" style="width:300px; max-height: 300px; border-radius:25px 25px 0px 0px; background-color: #03bb85;">Acolhedor</span>
                            <img src="lib/img/imagensUsers/<%=conteudo.getDiretorioIMG()%>" style="width:300px; height: 300px; border-radius:0px 0px 25px 25px; object-fit: cover;">
                        </div>
                        <h2><b><%=conteudo.getApelido_u()%></b></h2>
                    </div>
                    <%}
                        }%>
                </div>
            </div>
        </div>
    </div>
    <div style="background:black; width: 90%; height: 80px; background-color: #03bb85; font-size:20px; margin-left: 5%; margin-top: 3%; border-radius:10px 10px 10px 10px;" >
        <div class="row">
            <div class="col-4">
                <h2 style="text-align:center; font-weight: bold; margin-top: 15px;">Finalizar Acordo de Adoção? 
                </h2>
            </div>
          <div class="col-4">
              <form method="post" action="AceitarAdocao">
                   <form action="GerarDocumentacao" method="POST">
                    <input type="text" name="idParaUsuario" value="<%=idPetPerfil%>" hidden/>
                    <input type="text" name="idDoUsuario" value="<%=id_acolhedor%>" hidden/>
                    <input type="text" name="codigo_pet" value="<%=codigo_pet%>" hidden/>
                    <input type="text" name="imgPet" value="<%=imgPet%>" hidden/>
                    <button style="width: 80%; margin-top: 15px;" type="submit" class="btn btn-lg btn-success">Aceitar</button>
                    </form>
                
              
          </div>
          <div class="col-4">
              <form method="POST" action="RecusarAcordo">
                  <button style="width: 80%; margin-top: 15px;" type="submit" class="btn btn-lg btn-danger">Cancelar</button>
                  <input type="text" name="id_ParaUsuario" value="<%=idPetPerfil%>" hidden/>
                  <input type="text" name="id_DoUsuario" value="<%=id_acolhedor%>" hidden/>
                  <input type="text" name="cod_pet" value="<%=codigo_pet%>" hidden/>
              </form>   
          </div>

        </div>
    </div>
</div>

<!--<a href="Denuncia.html"><button class="position-fixed bottom-0 end-0" onclick="" type="button" id="imgBtnDenuncia"></button></a>-->
</body>
</html>