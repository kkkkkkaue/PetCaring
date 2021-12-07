<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="img/Logo.png"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Asap:ital,wght@1,700&family=Nunito:ital,wght@1,700&family=Yellowtail&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script src="https://cdn.tiny.cloud/1/765g9ev46kribe67sd7et7srrts67mm9tyy8blvu89zcmu6h/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<title>PetCaring - Escrever</title>
</head>
<body id="bd2">
	<div class="collapse" id="navbarToggleExternalContent">
  <div class="bg-dark p-4">
    <h5 class="text-white h4">Collapsed content</h5>
    <span class="text-muted">Toggleable via the navbar brand.</span>
  </div>
</div>
<script>
addNav();
	 $(document).ready(function () {
			capturar("1");
		});
</script>		
	<div class="container-xl">
		<div class="row">
			<div class="col-1">
			</div>
			<div class="col-8">
					<h1 id="ttDicas">Cadastrar Dicas de Cuidados e Curiosidades</h1>
						<div class="row m-4">
							<div class="col g-4">
								<div class="card " id="cardCare" style="width:20rem;">
									<img class="card-img-top" id="preview" onclick="readImage()" style="">
									<input type="file" id="flImage" name="fImage" accept="image/*">
									<script>
											function readImage(){
														'use strict';
														let photo = document.getElementById('preview');
														let file = document.getElementById('flImage');

														file.click();

														file.addEventListener('change', function(){

															if(file.files.length <= 0)
															{
																return;
															}

															 let reader = new FileReader();

															 reader.onload = function(){
																 photo.src = reader.result;
															 };

															 reader.readAsDataURL(file.files[0]);
														});
														}
									</script>
									<div class="card-body">
										<small class="ttPequeno"><input type="text" maxlength="25" placeholder="Insira um subitítulo"></small>
										<h5><input type="text" maxlength="45"  placeholder="Insira um título"></h5>
									</div>
								</div>	
								<small>O tamanho ideal para a imagem é de 318px por 224px</small>
							</div>
							<div class="col m-4">
							<h4 style="background:#03bb85; color:white;">SEJA BEM VINDO</h4>	
							<h5>Nós da PetCaring estamos sempre tentando fazer o melhor para o nosso público</h5>	
							<h4>Edite aqui seu card e seu texto!</h4>	
							</div>
						</div>
						
					<div class="bgTexto" style="background:white; border:1px black solid; border-radius:10px; width:100%; height:auto; margin-bottom:50px; padding:20px;">
						<div class="row">
								<div class="col-8">
									<small class="ttPequeno"><input type="text" maxlength="25" placeholder="Insira um subitítulo" disabled=""></small>
									<h1><input type="text" maxlength="45"  placeholder="Insira um título"  disabled=""></h1>
									<small class="ttPequeno"><input type="text" maxlength="25" placeholder="Autor(a)" style="width:500px;"></small>
								</div>
								<div class="col-4">
									<button type="button" class="btn btn-success">Publicar Artigo</button>
									<button type="button" class="btn btn-warning">Limpar Tudo</button>
								</div>
							<div class="row">
								<div class="col">
									<textarea id="story" name="story" rows="5" cols="108" style="margin-top:25px; min-height:200px; max-width:100%;">
									</textarea>
								</div>
							</div>
						</div>
					</div>
					<div style="background:white; border:1px black solid; border-radius:10px; width:720px; height:202px; margin-bottom:50px;">
						<div class="row">
							<div class="col-4">
							<div class="imgAutor" alt="..." style="width:200px; border-radius:10px; height:200px; background:url(./img/d.jpg) center no-repeat; background-size:cover; cursor:pointer;">
								<span class="badge bg-success rounded-pill">Autor</span>
							</div>
							</div>
							<div class="col-8">
								<input  type="text" maxlength="25"  placeholder="Nome do Autor(a)" disabled=""><br>
								<textarea  type="text" maxlength="260"  placeholder="Descrição do Autor(a)" style="min-width:99%;max-width:99%;max-height:150px; min-height:150px;"></textarea>
							</div>
							<small>O tamanho ideal para a imagem é de 200px por 200px</small>
						</div>
					</div>
			</div>	
</body>
</html> 
<!--
<div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
-->
