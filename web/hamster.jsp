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
        <title>PetCaring - Hamster</title>
    </head>
    <body>
        <div id="preloader">
            <div id="status"></div>
        </div>
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
	<div class="container">
		<div class="row">
				<div id="bannerNome"><h3 id="ttGDR">GUIA DE RAÇAS</h3></div>
				<div id="bannerSub"><h3 id="subTT">CONHEÇA O PET IDEAL PARA VOCÊ!</h3></div>
				<div id="contentRaca">
					<div class="badge bg-secondary" style="width: 4rem;font-size:25px;">06</div>
					<div class="badge bg-success" style="width: 8rem; font-size:25px;">
					RAÇAS
					</div>
				</div>
		</div>
	</div>
			<div class="container">	
				<div class="row">
					<div class="col">
						<div class="btn-toolbar " role="toolbar" aria-label="Toolbar with button groups">
								<div class="btn-group me-2 " role="group" aria-label="First group">
									<div class="row">
										<div class="col">
											<a href="caes.jsp"><button type="button"class="btn btn-success">CÃES</button></a>
											<a href="gatos.jsp"><button type="button" class="btn btn-success">GATOS</button></a>
											<a href="hamster.jsp"><button type="button" class="btn btn-success active">HAMSTER</button></a>
											<a href="aves.jsp"><button type="button" class="btn btn-success">AVES</button></a>
											<a href="coelhos.jsp"><button type="button" class="btn btn-success">COELHOS</button></a>
										</div>	
									</div>	
								</div>
						</div>
					</div>
				</div>
			</div>

<div class="container">
	<div class="row mx-5">
		<div class="col">
				<div class="col my-5">
					<div class="card" style="width: 18rem">
						<div class="flip-box">
							<div class="flip-box-inner">
								<div class="flip-box-front" class="imagensGuia">
									<div class="imagensGuia" id="imgHamAnao"></div>
								</div>
								<div class="flip-box-back" class="imagensGuia">
									<h2 class="NomeDaRacaNoVerso text-center">Anão Russo</h2>
									<ul id="ImgItemPais">
										<li><b class="CorDosTopicos">Países de Origem:</b> Ásia Central, ao norte da Rússia,<br> Mongólia e da China</li>
									</ul>
									<ul id="ImgItemComida">
										<li><b class="CorDosTopicos">Comida:</b> Mix de sementes</li>
									</ul>
									<ul id="ImgItemPeso">
										<li><b class="CorDosTopicos">Peso:</b> 27 a 35 g</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="card-body text-center">
							<p class="card-text">Anão Russo</p>
						</div>
					</div>
				</div>
		</div>
		<div class="col">
				<div class="col my-5">
					<div class="card" style="width: 18rem">
						<div class="flip-box">
							<div class="flip-box-inner">
								<div class="flip-box-front" class="imagensGuia">
									<div class="imagensGuia" id="imgHamSirio"></div>
								</div>
								<div class="flip-box-back" class="imagensGuia">
									<h2 class="NomeDaRacaNoVerso text-center">Sírio</h2>
									<ul id="ImgItemPais">
										<li><b class="CorDosTopicos">País de Origem:</b> Síria</li>
									</ul>
									<ul id="ImgItemComida">
										<li><b class="CorDosTopicos">Comida:</b> Mix de sementes</li>
									</ul>
									<ul id="ImgItemPeso">
										<li><b class="CorDosTopicos">Peso:</b> 85 a 150 g</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="card-body text-center">
							<p class="card-text">Sírio</p>
						</div>
					</div>
				</div>
		</div>
    </div>
</body>
</html> 