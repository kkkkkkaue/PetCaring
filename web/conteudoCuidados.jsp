<%
    int numero_conteudo = Integer.parseInt(request.getParameter("num_cont"));
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
        <title>PetCaring - Cuidados</title>
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
        <%            }
        %>  

        <%if (numero_conteudo == 1) {%>
        <div class="container-xl">
            <div class="row">
                <div class="col-8">
                    <div style="width:90%;height:auto; background:white; border:1px black solid; padding:25px; margin-top:50px;margin-bottom:50px;">
                        <div style="width:80%;">
                            <small>Alimenta��o</small>
                            <h2><b>Meu cachorro enjoa da ra��o ? O que fazer?</b></h2>
                            <small>por Camila Bonatti ? publicado em 27 out 2021 - 12:10</small>
                        </div>
                        <br>
                        <p>O meu cachorro enjoa da ra��o, o que fazer? Bom, antes de mais nada, � preciso entender melhor os motivos desse enjoo e verificar se, de fato, ele est� enjoado.</p>
                        <p>Neste artigo, o Portal do Dog vai te ajudar a entender um pouco mais sobre o assunto. No entanto, � importante deixar claro: todas as dicas e ideias deste texto, s�o para c�es saud�veis.</p>
                        <p>Portanto, � fundamental buscar amparo veterin�rio acima de qualquer coisa. � s� o veterin�rio que poder� concluir os motivos de um enjoo. Afinal, isso pode estar ligado, tamb�m, a indisposi��o, dores de barriga e outros problemas.</p>
                        <h2><b>Meu cachorro enjoa da ra��o ? Por que isso acontece?</b></h2>
                        <p>O cachorro enjoa da ra��o por v�rios motivos. Afinal, tudo est� relacionado ao dia a dia dele e tamb�m a quest�es de sa�de f�sica. Se o c�o estiver com qualquer problema ou indigest�o, ele poder� recusar a ra��o e voc� poder� achar que ele est� enjoado. Quando na verdade, est� com dor.</p>
                        <p>Portanto, a primeira dica deste artigo, �: procure um veterin�rio para se certificar de que seu c�o est� realmente saud�vel. Os sinais de algum problema podem surgir principalmente na alimenta��o. Observa��o � importante.</p>
                        <p>No entanto, para c�es saud�veis e que mesmo assim est�o enjoados da comia, algumas dicas podem te ajudar a reverter essa situa��o. Listamos algumas ideias abaixo:</p>
                        <ul>
                            <li>Excesso de comida.</li>
                            <li>Comida perto do banheiro.</li>
                            <li>Excesso de petiscos e guloseimas.</li>
                            <li>Trocas constantes de ra��o.</li>
                        </ul>
                        <h2><b>Excesso de comida</b></h2>
                        <p>Todos os excessos s�o perigosos. Tanto para n�s, humanos, como para os cachorros.</p>
                        <p>Portanto, aqui vai uma primeira dica important�ssima para lidar melhor com esse potencial enjoo pela ra��o: excesso de comida pode ser o vil�o.</p>
                        <p>Sim, deixar o cachorro comer a vontade ou v�rias vezes por dia, pode torn�-lo compulsivo por comida e, com o tempo, ele poder� enjoar de comer a mesma coisa sempre.</p>
                        <p>A gente sabe que pode ser fofo e o cora��o fica quentinho quando o cachorro est� feliz comendo. Por�m, n�o podemos agir de maneira emocional quanto a isso. Deix�-los comer a vontade n�o � saud�vel por v�rios motivos, como potenciais doen�as, obesidade e, claro, enjoos.</p>
                        <p>O cachorro enjoa da ra��o muito porque ele est� se sentido empanturrado dela. Ou seja, ele j� n�o aguenta mais sentir o mesmo cheiro e a mesma textura o tempo inteiro. Infelizmente, isso pode trazer bastante malef�cios para o dog. Tanto f�sicos, quanto mentais e de est�mulos.</p>
                        <p>Observe: ser� que seu c�o n�o est� enjoado porque est� comendo a todo momento?</p>
                        <h2><b>Cachorro enjoa da ra��o ? Comida perto do banheiro</b></h2>
                        <p>Outro fator que pode estar fazendo o seu melhor amigo enjoar da ra��o, � a posi��o em que seus potes de ra��o est�o.</p>
                        <p>Preferencialmente, eles precisam ficar em locais confort�veis, de f�cil acesso e instintivamente seguros. Ou seja, o c�o n�o pode ter ?desafios? para poder comer. Caso contr�rio, ele ser� inibido e poder� enjoar.</p>	
                        <p>Portanto, pode ser que o pote de ra��o esteja muito perto do banheiro do doguinho. E os cheiros acabam se entrela�ando, fazendo com que o cachorro n�o queira comer a ra��o porque ela n�o est� com cheiro agrad�vel.</p>
                        <p>Pode n�o parecer, mas os c�es s�o limpos e muito higi�nicos quanto a isso. Por mais que possa levar um tempo at� que eles aprendam onde � o banheiro dentro de casa, ainda assim, eles sempre v�o preferir comer em ambientes limpos e seguros.</p>
                        <p>O cachorro enjoa da ra��o, do petisco, dos brinquedos ou do que for, caso eles estejam em lugares desagrad�veis para o pet. Pense na reposi��o das coisas.</p>
                        <h2><b>Cachorro enjoa da ra��o ? Excesso de petiscos e guloseimas</b></h2>

                        <p>Todo excesso pode gerar um desconforto por algum motivo: seja f�sico, mental ou digestivo, no caso de comida.</p>

                        <p>Por isso, � muito importante que voc� n�o acostume mal o seu melhor amigo, com petiscos e guloseimas extras s� por ter o ?cora��o mole?.</p>

                        <p>Sim, a gente gosta de agradar o nosso pet. Por�m, para o bem dele, � preciso que haja um bom equil�brio nessas coisas, sem precisar necessariamente agrad�-lo a todo momento.</p>

                        <p>Quando voc� come�a a dar petiscos o tempo inteiro para o seu dog, isso come�a a virar rotina. E o cachorro, esperto do jeito que �, vai preferir, obviamente, o petisco.</p>

                        <p>Logo, quando o pote de ra��o � colocado no ch�o, ele poder� facilmente recusar. A rea��o do tutor, instantaneamente, � achar que ele enjoou da ra��o.</p>

                        <p>Na pr�tica, ele enjoou mesmo. Afinal, tem uma comidinha muito mais ?divertida? que ele ganha a todo momento. Por que comer a ra��o, que � mais entediante e ?mais do mesmo?, n�o � mesmo?</p>

                        <p>Pense nisso na hora de identificar os potenciais motivos que levam o cachorro enjoar da ra��o.</p>

                        <h2><b>Cachorro enjoa da ra��o ? Trocas constantes de ra��o</b></h2>
                        <p>E ainda, um cachorro enjoa da ra��o quando h� uma troca constante do tipo de alimento.</p>

                        <p>Ou seja, voc� condiciona o seu c�ozinho a enjoar de alguma coisa, porque ele sabe que, daqui a pouco, vai ganhar algo melhor. � como se fosse um refor�o positivo para estimular o c�o a enjoar e esperar uma ra��o nova.</p>

                        <p>Por exemplo, se o c�ozinho n�o est� mais gostando de uma ra��o por qualquer motivo e voc� troc�-la e ele comer, ele vai perceber esse padr�o.</p>

                        <p>Com o tempo, ele vai enjoar de novo, e de novo, e de novo. Pois ele sabe que o tutor sempre vir� com uma comida melhor. � um ciclo vicioso. Por isso, o mais importante de tudo, � tentar identificar os padr�es e, assim, n�o acostumar mal o seu c�ozinho.</p>

                        <p>A seguir, veja algumas boas ideias do que fazer quando o cachorro enjoa da ra��o.</p>

                        <h2><b>O que fazer quando meu cachorro enjoa da ra��o</b></h2>
                        <p>At� aqui, j� entendemos que o cachorro enjoa da ra��o por in�meros motivos diferentes.</p>

                        <p>Muitas vezes, esses motivos est�o totalmente relacionados ao dia a dia e comportamentos estimulados pelo tutor. Por isso, para te ajudar, separamos uma lista com algumas dicas que poder�o fazer com que seu melhor amigo n�o enjoe assim t�o facilmente da ra��o e passe a encarar a alimenta��o de uma forma diferente.</p>

                        <p>Veja abaixo:</p>

                        <ul>
                            <li>Crie uma rotina de alimenta��o.</li>
                            <li>N�o deixe o cachorro comer a vontade.</li>
                            <li>Petiscos s� em determinados momentos.</li>
                            <li>N�o troque a ra��o imediatamente.</li>
                        </ul>
                        <p>A seguir, entenda mais sobre cada uma dessas situa��es para colocar em pr�tica ainda hoje com seu dog.</p>

                        <h2><b>Crie uma rotina de alimenta��o</b></h2>
                        <p>C�es gostam de rotina. N�o adianta fugir disso: quanto mais voc� conseguir estimular seu c�o a seguir uma rotina saud�vel, melhores ser�o os comportamentos dele do ponto de vista f�sico e mental.</p>

                        <p>C�es gostam de saber ?o que vai acontecer depois?. Quanto menos aleat�ria for a rotina dele, melhor para todos.</p>

                        <p>E na alimenta��o, isso n�o � diferente. Criar uma rotina de alimenta��o adequada, ajuda o seu melhor amigo a entender quando � hora de comer.</p>

                        <p>Logo, ele n�o vai criar manias e rejeitar a ra��o. Muito pelo contr�rio: ele vai comer, porque estar� com fome, visto que � o hor�rio de comer.</p>

                        <h2><b>N�o deixe o cachorro comer a vontade</h2></b>
                        <p>Deixar o cachorro comer a vontade pode ser um erro grave na ?gest�o? da alimenta��o do dog. Afinal, quando voc� deixa ele comer a vontade, pode ser que ele enjoe da ra��o. Afinal, ele vai comer sem parar e a todo momento.</p>

                        <p>No entanto, quando voc� cria uma rotina adequada para o c�o comer de duas a tr�s vezes por dia (dependendo da fase de vida do cachorro), ele come�a a dar mais ?valor? para a comida.</p>

                        <p>Instintivamente, ele sabe que aquele � o momento de comer e que depois n�o ter� mais comida. Ent�o, ele acaba criando uma rotina mental e saud�vel de alimenta��o, o que faz com que ele crie um padr�o e n�o enjoe da ra��o.</p>

                        <h2><b>Petiscos s� em determinados momentos</b></h2>
                        <p>Os petiscos muitas vezes s�o os vil�es de uma alimenta��o adequada. Um cachorro enjoa da ra��o quando ele sente que pode ganhar um petisco a qualquer momento. Afinal, ele sempre vai preferir o petisco, que � feito justamente para agradar o paladar do cachorro.</p>

                        <p>Por isso, estipule um momento espec�fico para oferecer petiscos ao dog. Preferencialmente, d� petiscos somente em dias de treinamento de refor�o positivo ou fins de semana.</p>

                        <p>Assim, al�m de agradar o dog, ele vai se condicionar aos padr�es positivos de comportamento e voc� une o �til ao agrad�vel.</p>

                        <h2><b>N�o troque a ra��o imediatamente</b></h2>
                        <p>E por fim, se o seu melhor amigo est� enjoado da ra��o, n�o troque-a imediatamente. Muito pelo contr�rio, na verdade. O ideal � que voc� mantenha a ra��o por mais um tempo, at� que ele possa, de fato, se acostumar com ela.</p>

                        <p>Treine no dia a dia situa��es de rotina para que o cachorro saiba a hora de comer. Ofere�a quantidades adequadas com base na ra�a e sa�de e boa sorte no processo.</p>

                        <p>Cuide bem do seu dog.</p>

                        <p><b>Texto Retirado do Site:</b><br>
                            <a href="https://www.portaldodog.com.br/cachorros/alimentacao/meu-cachorro-enjoa-da-racao-o-que-fazer/">https://www.portaldodog.com.br/cachorros/alimentacao/meu-cachorro-enjoa-da-racao-o-que-fazer/</a>
                        </p>	
                    </div>
                    <div style="background:white; border:1px black solid; border-radius:10px; width:720px; height:202px; margin-bottom:50px;">
                        <img src="./lib/img/Cuidados/autores/autora.jpeg;" style="max-height: 200px; max-width: 200px; min-width: 200px; min-height: 200px; margin-left: 1%; position: absolute;">
                        <div class="row">
                            <div class="col-4">
                                <div class="imgAutor" alt="..." style="width:200px; border-radius:10px; height:200px; background-size:cover; cursor:pointer; position: absolute;    ">
                                    <span class="badge bg-success rounded-pill">Autor</span>
                                </div>
                            </div>
                            <div class="col-8 my-1">
                                <h5>Camila Bonatti</h5>
                                <p>Psic�loga (CRP12/17354), apaixonada pelo universo pet. Especialista em marketing de conte�do e reda��o web. � redatora h� mais de tr�s anos e atua como ghostwriter, copywriter e psicoeducadora. Atualmente est� fazendo a sua forma��o em Letras/Portugu�s.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%} else if (numero_conteudo == 2) {%>
        <div class="container-xl">
            <div class="row">
                <div class="col-8">
                    <div style="width:90%;height:auto; background:white; border:1px black solid; padding:25px; margin-top:50px;margin-bottom:50px;">
                        <div style="width:80%;">
                            <small>Conviv�ncia</small>
                            <h2><b>Como entreter o cachorro dentro de casa ? 10 ideias legais!</b></h2>
                            <small>por Camila Bonatti ? publicado em 24 out 2021 - 10:10</small>
                        </div>
                        <br>
                        <p>Existem muitas formas de como entreter o cachorro dentro de casa. Afinal, o nosso melhor amigo geralmente pode se divertir com ?pouco?, desde que esse ?pouco? seja agrad�vel e seguro.
                        </p>
                        <p>Ou seja, tudo que voc� precisa fazer � experimentar v�rios brinquedos diferentes e encontrar um padr�o que o c�ozinho goste.
                        </p>
                        <p>
                            Neste artigo, o Portal do Dog vai te dar algumas boas ideias de como entreter o cachorro dentro de casa, com ou sem voc� por perto. Portanto, continue lendo e saiba mais sobre o tema.
                        </p>
                        <p>Quem sabe, a partir de agora o seu c�ozinho ser� ainda mais feliz dentro de casa, n�o � mesmo?
                        </p>
                        <h2><b>Como entreter o cachorro dentro de casa ? 10 ideias legais!
                            </b></h2>
                        <p>Muito embora seja f�cil, ainda assim, � um desafio entreter o cachorro dentro de casa por muito tempo.
                        </p>
                        <p>Principalmente c�es que t�m algum tipo de ansiedade ou estresse. Nesses casos, al�m de fundamentais, as brincadeiras ajudam a aliviar um pouco dessa press�o. S� que as brincadeiras precisam ser certeiras.
                        </p>
                        <p>De nada adianta deixar o seu c�ozinho em casa por muitas horas com v�rios brinquedos/brincadeiras. Afinal, os c�es precisam de seus tutores para se sentirem bem.
                        </p>
                        <p>Faz parte da rotina deles perceber que est�o ?agradando? o tutor. Ent�o, use as brincadeiras para gastar energia em um dia de chuva, muito sol, etc.
                        </p>
                        <p>Veja algumas ideias para tirar do papel:</p>
                        <ol>
                            <li>Brinquedos com desafios para pegar petiscos.</li>
                            <li>Esconda petiscos e estimule o c�o a encontrar.</li>
                            <li>Estimule o c�o a buscar a bolinha.</li>
                            <li>Fa�a passeios dentro do condom�nio.</li>
                            <li>Evite deixar o ambiente quieto demais.</li>
                            <li>Deixe o c�o olhar pra fora da janela.</li>
                            <li>Brinque de cabo de guerra com o dog.</li>
                            <li>Brinquedos para roer/destruir.</li>
                            <li>Cuidado com brinquedos pontiagudos/que soltam partes.</li>
                            <li>Interaja com o seu cachorro.</li>
                        </ol>
                        <p>A seguir, entenda mais sobre cada uma dessas brincadeiras e veja como us�-las com seu melhor amigo canino. Acompanhe.
                        </p>
                        <h2><b>Brinquedos com desafios para pegar petiscos</b></h2>
                        <p>Uma das melhores brincadeiras para fazer com seu melhor amigo e entret�-lo dentro de casa, � estimular o animal a pegar petiscos. Ou seja, desafios que fa�am o c�ozinho ir atr�s de uma recompensa, simplesmente porque ele quer capturar aquilo.
                        </p>
                        <p>Nesse caso, voc� pode implementar uma s�rie de ideias diferentes e divertidas. Por exemplo, voc� pode fazer uma bolinha, com petiscos l� dentro. Brinquedos que o c�o possa ?destruir? para alcan�ar o objetivo tamb�m podem ser implementados.
                        </p>
                        <p>Em lojas de pet shop, com certeza voc� vai encontrar brinquedos prontos para estimular a ca�a. Mas, ainda assim, voc� pode criar os pr�prios brinquedos para seu dog e faz�-lo gastar energia e passar horas tentando pegar a comida.
                        </p>
                        <p>Cuidado para n�o exagerar nos petiscos para o seu dog n�o engordar. E cuidado para n�o deixar as coisas muito dif�ceis, pois o c�o poder� desistir por falta de interesse.
                        </p>
                        <h2><b>Esconda petiscos e estimule o c�o a encontrar</b></h2>
                        <p>Outra forma de fazer o seu melhor amigo gastar energia, � estimulando o c�o a encontrar petiscos. Como funciona isso? Basicamente, � parecido com a dica anterior, mas aqui, voc� ter� que esconder o petisco ? e n�o coloc�-lo em situa��es de ca�a.
                        </p>
                        </p>Por exemplo, voc� pode estimular o c�o buscar um petisco que voc� escondeu embaixo da cama, atr�s da cortina, embaixo do sof�, dentro de algum lugar seguro e por a� vai. Quanto mais pistas voc� der para o c�o de que h� alguma coisa para ca�ar ali, mais empolgado ele vai ficar.
                        </p>
                        <p>Esse tipo de brincadeira estimula o c�o a v�rios tipos de coisas. Instintivamente, ele se sente muito empolgado, pois est� com seus instintos de ca�a a flor da pele. O que � �timo para gastar energia.
                        </p>
                        <p>Por�m, cuidado: � importante colocar os petiscos em lugares seguros e ambientes tranquilos. N�o fa�a o cachorro correr riscos para conseguir pegar algum petisco, ok?
                        </p>
                        <p>Leia mais: Como oferecer petiscos com seguran�a.
                        </p>
                        <h2><b>Como entreter o cachorro dentro de casa ? Estimule o c�o a buscar a bolinha</b></h2>
                        <p>Se tem uma brincadeira que os cachorros adoram, � buscar objetos para o tutor. Geralmente, o objeto favorito � a bolinha. Afinal, a bolinha � f�cil de morder e trazer de volta. No entanto, voc� tamb�m pode experimentar outras coisas, tipo um galho ou um outro brinquedo.
                        </p>
                        <p>Esse tipo de brincadeira cria muitos la�os entre c�o e tutor, o que � �timo para a rela��o no longo prazo. Isso ajuda o tutor a ficar mais perto do seu melhor amigo.
                        <p>
                        <p>Essa � uma �tima forma de entreter o cachorro dentro de casa, pois muitas vezes voc� n�o precisa de muito espa�o para brincar com o dog. Basta ter uma �rea aberta e segura. N�o jogue a bolinha em lugares que o c�o pode se machucar, pois ele vai correr como um louco atr�s dela, ok?
                        <p>
                        <h2><b>Como entreter o cachorro dentro de casa ? Fa�a passeios dentro do condom�nio</b></h2>
                        <p>Se voc� mora em apartamento, o ambiente muitas vezes pode ser pequeno e entediante para o c�o. Principalmente em dias de chuva, o animal pode ficar com muita energia acumulada e as brincadeiras ser�o fundamentais para deix�-lo tranquilo.
                        </p>
                        <p>Portanto, passear com seu dog dentro do condom�nio (se permitido for), � importante. Mantenha ele na guia e deixe-o cheirar os ambientes e conhecer os espa�os.
                        </p>
                        <p>O olfato � importante para os c�es e estimular isso de maneira segura faz bem a eles. O gasto de energia mental � muito grande com est�mulos olfativos.
                        </p>
                        <p>Se o condom�nio tiver outros vizinhos com cachorros, veja esse artigo aqui: Socializa��o do c�o ? Como fazer?
                        </p>
                        <h2><b>Como entreter o cachorro dentro de casa ? Evite deixar o ambiente quieto demais</b></h2>
                        <p>Ambientes barulhentos tendem a deixar o cachorro estressado e ansioso. Afinal, � muito ru�do para processar.
                        </p>
                        <p>No entanto, ambientes muito quietos e calmos tamb�m s�o igualmente ruins, pois o c�o n�o ter� est�mulos auditivos que s�o importantes para ele se sentir bem no espa�o.
                        </p>
                        <p>Principalmente se o c�o vai ficar em casa sozinho, os est�mulos auditivos ajudam muito ele a n�o se concentrar somente nos barulhos externos e se estressar por eles.
                        </p>
                        <p>Uma musiquinha na TV ou no r�dio, ajuda o seu dog a se sentir melhor. Veja as melhores m�sicas para cachorros.
                        </p>
                        <h2><b>Deixe o c�o olhar pra fora da janela</b></h2>
                        <p>Outra forma de entreter o cachorro dentro de casa, principalmente em dias de chuva, � deix�-lo olhar pra fora da janela. Esse tipo de situa��o � interessante somente quando houver a presen�a do tutor, por v�rios motivos.
                        </p>
                        <p>Um deles, � que o seu c�o pode ficar muito inquieto e estressado quando fica olhando pra fora por muito tempo. Afinal, por l�, ele poder� ter v�rios est�mulos ruins para um comportamento inadequado. Ele pode ver pessoas, outros cachorros e por a� vai. Isso tudo � importante, mas com cautela e controle.
                        </p>
                        <p>Se voc� mora em apartamento, nunca deixe seu dog chegar perto da janela se n�o houver tela de prote��o, ok?
                        </p>						
                        <h2><b>Brinque de cabo de guerra com o dog</b></h2>
                        <p>	Alguns tutores n�o gostam dessa brincadeira pois acham que o dog vai ter est�mulos de agressividade. Por�m, n�o � bem por a�. Na verdade, o cabo de guerra � uma das melhores brincadeiras que o tutor pode fazer com seu melhor amigo em casa.
                        </p>
                        <p>O cabo de guerra, quando feito com cautela, estimula alguns instintos no animal. Al�m disso, ajuda a gastar muita energia f�sica e mental, o que � �timo para o dog n�o descontar essa energia em outras coisas.
                        </p>
                        <p>Cuidado para n�o puxar o cabo de guerra muito forte para n�o machucar os dentes do animal, ok? Apenas segure de maneira que o c�o tenha um desafio ? voc� n�o precisa mostrar a sua for�a para o dog.
                        </p>
                        <h2><b>Brinquedos para roer/destruir</b></h2>
                        <p>Al�m do cabo de guerra, outro �timo brinquedo que ajuda a estimular o gasto de energia do cachorro, � aquele brinquedo feito para roer/destruir.
                        </p>
                        <p>Se voc� n�o quer que seu melhor amigo destrua os brinquedos dele, compre brinquedos feitos para serem destru�dos. Ao menos, o c�o se diverte e voc� n�o fica estressado por ter que comprar brinquedos novos a todo momento.
                        </p>
                        <p>Deixar o c�o destruir/roer um brinquedo � muito estimulante pra ele. Afinal, ele est�, ali, gastando energia f�sica e mental. Isso n�o estimula agressividade no c�ozinho, n�o se preocupe.
                        </p>
                        <p>O que estimula agressividade nele, � falta de adestramento, est�mulos ruins no dia a dia, falta de padr�o na rotina e por a� vai.
                        </p>
                        <h2><b>Cuidado com brinquedos pontiagudos/que soltam partes</b></h2>
                        <p>� fundamental que o tutor tome cuidado com os brinquedos que comprar/fazer para o seu pet. Afinal, se o brinquedo tiver partes que se soltam ou que o c�o possa roer e mastigar, ele poder� se engasgar. O que pode ser algo muito grave e pode at� levar o �bito do cachorro.
                        </p>
                        <p>Evite brinquedos de pl�stico duro e com partes pequenas e encaixadas. Procure por brinquedos feitos especialmente para cachorros. Assim, voc�s n�o ter�o problemas e a seguran�a do pet estar� em primeiro lugar, como sempre tem que ser.
                        </p>
                        <p>Leia mais: Como desengasgar um cachorro: A t�cnica Heimlich funciona?
                        </p>	
                        <h2><b>Interaja com o seu cachorro</b></h2>
                        <p>E por fim, algo que ajuda muito a entreter o cachorro dentro de casa: intera��o com o tutor! Sim, a simples intera��o com seu tutor, j� faz o c�o se sentir muito bem do ponto de vista f�sico e mental.
                        </p>
                        <p>Afinal, isso ajuda a gastar energia e gera uma conex�o muito importante para a rela��o.
                        </p>
                        <p>As intera��es podem ser de muitas formas diferentes. Preferencialmente, interaja de maneira carinhosa e com brincadeiras. Evite situa��es que deixem o cachorro mimado ou com uma rotina que n�o � saud�vel.
                        </p>
                        <p>Ou seja, n�o d� comidinhas s� porque o c�o est� fazendo aquela cara de triste.
                        </p>
                        <p>Agora que voc� j� entendeu como entreter o cachorro dentro de casa, anote as nossas dicas e coloque-as em pr�tica. Teste com seu melhor amigo e depois comente aqui o que achou.
                        </p>
                        <p>Cuide do seu dog!</p>

                        <p><b>Texto Retirado do Site:</b><br>
                            <a href="https://www.portaldodog.com.br/cachorros/convivencia/como-entreter-o-cachorro-dentro-de-casa/">https://www.portaldodog.com.br/cachorros/convivencia/como-entreter-o-cachorro-dentro-de-casa/</a>
                        </p>	
                    </div>

                    <div style="background:white; border:1px black solid; border-radius:10px; width:720px; height:202px; margin-bottom:50px;">
                        <img src="./lib/img/Cuidados/autores/autora.jpeg;" style="max-height: 200px; max-width: 200px; min-width: 200px; min-height: 200px; margin-left: 1%; position: absolute;">
                        <div class="row">
                            <div class="col-4">
                                <div class="imgAutor" alt="..." style="width:200px; border-radius:10px; height:200px; background-size:cover; cursor:pointer; position: absolute;    ">
                                    <span class="badge bg-success rounded-pill">Autor</span>
                                </div>
                            </div>
                            <div class="col-8 my-1">
                                <h5>Camila Bonatti</h5>
                                <p>Psic�loga (CRP12/17354), apaixonada pelo universo pet. Especialista em marketing de conte�do e reda��o web. � redatora h� mais de tr�s anos e atua como ghostwriter, copywriter e psicoeducadora. Atualmente est� fazendo a sua forma��o em Letras/Portugu�s.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>	
        <%} else if (numero_conteudo == 3) {%>
        <div class="container-xl">
            <div class="row">	
                <div class="col-8">

                    <div style="width:90%;height:auto; background:white; border:1px black solid; padding:25px; margin-top:50px;margin-bottom:50px;">
                        <div style="width:80%;">
                            <small>Conviv�ncia</small>
                            <h2><b>Desobedi�ncia canina ? Por que acontece?</b></h2>
                            <small>por Camila Bonatti ? publicado em 12 nov 2021 - 11:11</small>
                        </div>
                        <br>
                        <p>A desobedi�ncia canina tem o poder de deixar o c�ozinho bastante desconfort�vel no ambiente. Ou seja, se ele est� agindo de maneira desobediente, saiba que ele n�o est� fazendo isso pra ?te provocar?.
                        </p>
                        <p>Na verdade, o c�o est� ansioso, angustiado e geralmente com energia para gastar.</p>
                        <p>Entender por que a desobedi�ncia canina se faz presente no dia a dia vai te ajudar a construir um ambiente muito mais calmo e tranquilo para o seu c�o. Afinal, voc� conseguir� controlar algumas situa��es e evitar outras.</p>
                        <p>Neste artigo, o Portal do Dog vai te ajudar a entender um pouco mais sobre as principais desobedi�ncias dos c�es, por que eles fazem isso e o que fazer para o c�o se comportar.	</p>
                        <h2><b>Desobedi�ncia canina ? Por que isso acontece?</b></h2>
                        <p>Se voc� � um tutor de primeira viagem ou est� pensando em adotar um c�ozinho, � preciso entender algumas coisas de comportamento.</p>
                        <p>Afinal de contas, o comportamento canino depende muito das a��es do tutor e tamb�m do ambiente em que o c�o vive.</p>
                        <p>A desobedi�ncia canina, muitas vezes, est� atrelada totalmente ao fato de que o seu c�o n�o tem um ambiente adequado para viver. Ou seja, est�mulos negativos est�o por toda parte.</p>						
                        <p>Isso gera ansiedade e, posteriormente, gera desobedi�ncia. O c�o passa a agir de maneira mais medrosa e as vezes at� agressiva.</p>
                        <p>Separamos uma lista de situa��es que podem gerar desobedi�ncia canina no seu c�ozinho. Veja abaixo:</p>
                        <ul>
                            <li>Falta de consist�ncia nos limites, proibi��es e permiss�es.<li>
                            <li>R�tulos preconceituosos ? ?meu c�o � dominante?.<li>
                            <li>Agir com adestramento punitivo ? e n�o refor�o positivo.<li>
                            <li>Controle dos instintos naturais do cachorro.<li>
                            <li>Pouco ou nenhum refor�o positivo.<li>
                            <li>Falta de gasto de energia e enriquecimento ambiental.<li>
                            <li>Pouca paci�ncia com seu melhor amigo.<li>
                        </ul>
                        <p>Para entender um pouco mais sobre o contexto de cada uma das situa��es acima, continue lendo.</p>
                        <h2><b>Falta de consist�ncia nos limites, proibi��es e permiss�es</b></h2>
                        <p>Todos os c�es agem de maneira parecida: eles aprendem o que pode, o que n�o pode e v�o se condicionado a isso com o tempo.</p>

                        <p>Condicionamento � a palavra-chave para que voc� encontre a solu��o para um c�o desobediente. E por isso, � preciso entender mais sobre consist�ncia.</p>

                        <p>Ou seja, fazer com que seu c�o entenda perfeitamente o que pode, o que n�o pode e o que ele deve fazer, n�o � algo r�pido. � preciso muita paci�ncia e, acima de tudo, consist�ncia.</p>

                        <p>Sem consist�ncia, voc� n�o vai conseguir criar um c�ozinho saud�vel do ponto de vista comportamental.

                        <p>Portanto, sempre que voc� come�ar um novo treinamento ou ensinamento, � preciso ter consist�ncia. Ou seja, se hoje pode, amanh� tem que poder tamb�m.</p>

                        <p>E o mesmo vale ao contr�rio: se o c�o n�o pode uma coisa, ele precisa continuar n�o podendo. Caso contr�rio, isso gerar� inconsist�ncia, o c�o ficar� confuso e vai agir de modo desobediente.</p>

                        <p>Essa desobedi�ncia n�o vem para ?provocar? o tutor. Ela vem porque o c�o n�o sabe muito bem o que ele pode e o que n�o pode. Logo, ele faz o que ele quiser.</p>

                        <p>Exemplo: se voc� deixar o c�o subir no sof� e depois de um tempo mand�-lo sair, isso vai gerar confus�o na mente do dog. Ele vai se sentir confuso e n�o vai saber qual comportamento seguir.</p>

                        <h2><b>R�tulos preconceituosos ? ?meu c�o � dominante?</b></h2>
                        Outro fator bastante prejudicial para o comportamento do seu melhor amigo, � achar que o c�o � assim e pronto. Ou seja, se o seu c�o est� desobedecendo, simplesmente condicionar esse comportamento ao ?comportamento natural? do c�o.</p>

                        <p>Isso � um r�tulo de preconceito que ajuda a construir ainda mais os maus comportamentos.</p>

                        <p>Se o seu c�ozinho n�o est� se comportamento bem, n�o � porque ele gosta disso. Afinal, o maior sonho da vida dos cachorros � fazer bem para seus tutores. V�-los felizes � o que deixa os c�es verdadeiramente felizes.</p>

                        <p>Portanto, � muito importante que voc� n�o rotule o seu c�o de dominante, bagunceiro ou agressivo. Assim voc� sempre vai refor�ar esse comportamento nele e dificilmente ele vai mudar.</p>

                        <p>O que fazer, nesse caso?</p>

                        <p>Basicamente, voc� precisa fazer muito treinamento de refor�o positivo com o seu c�ozinho. Se ele � dominante, � preciso desconstruir o comportamento ruim com uma rotina adequada, consist�ncia nos treinamentos e muita paci�ncia.</p>

                        <h2><b>Agir com adestramento punitivo ? e n�o refor�o positivo</b></h2>
                        <p>Ao lidar com um c�o dominante, conforme o t�pico anterior, muitos tutores acabam n�o sabendo o que fazer e agem de maneira errada. Ou seja, agem com refor�o punitivo, ao inv�s de usar refor�o positivo.</p>

                        <p>A desobedi�ncia canina n�o vai ser resolvida com refor�o punitivo ou situa��es amea�adoras para o seu c�o. Brigar, xingar ou at� mesmo agir com viol�ncia, � muito prejudicial para a sa�de do seu melhor amigo.</p>

                        <p>Isso vai deixar o c�o ainda mais ansioso e desobediente.

                        <p>Por que? Porque o c�o ama o seu tutor. E quando o tutor est� agindo de maneira estranha e com viol�ncia, ele vai se sentir deslocado, triste e poder� agir de maneiras erradas para o que voc� julga como adequado.</p>

                        <p>Se o seu c�o fez algo errado, simplesmente n�o fa�a nada. Mas quando ele fizer algo certo, elogie e d� um petisco.</p>

                        <p>O refor�o positivo � que vai condicion�-lo aos comportamentos certos. Enquanto que o refor�o punitivo, s� vai quebrar a conex�o de voc�s.</p>

                        <h2><b>Desobedi�ncia canina ? Controle dos instintos naturais do cachorro</b></h2>
                        <p>Os cachorros t�m instintos. N�o h� como fugir disso e muito menos esquecer. Afinal, eles s�o c�es que est�o procurando um ambiente confort�vel, saud�vel e equilibrado pra viver.</p>

                        <p>Ao querer controlar o instinto do cachorro, automaticamente, voc� estar� ?passando por cima? da natureza dele. Ou seja, os c�es precisam de momentos exclusivos para se sentirem cachorros.</p>

                        <p>Eles precisam cavar, roer, morder, correr, se sujar e farejar. Proibir ou n�o incentivar esse tipo de pr�tica, pode ser bastante prejudicial para o dia a dia do dog e, consequentemente, ele poder� se tornar desobediente.</p>

                        <p>Entender os instintos do cachorro e preparar uma rotina para que ele possa usufruir disso � muito importante. Lembre-se que voc� est� criando um cachorro e n�o um ursinho de pel�cia, ok?</p>

                        <p>Leia tamb�m: Olfato Canino: Descubra os 5 fatos incr�veis.</p>

                        <h2><b>Desobedi�ncia canina ? Pouco ou nenhum refor�o positivo</b></h2>
                        <p>O refor�o positivo � o que vai fazer o seu c�o entender o que ele pode e o que n�o pode. Muitas vezes, � a partir do refor�o positivo que voc� vai conseguir mostrar ao c�o quais s�o os comportamentos que ele deve seguir para ser ?bem comportado?.</p>

                        <p>No entanto, se n�o houver refor�o positivo, o c�o n�o vai saber o que fazer. Ele n�o sabe at� onde ele pode ir e vai agir de maneiras aleat�rias. C�es odeiam aleatoriedade. Eles gostam de rotina. Quanto mais ?certo? for o dia, melhor pra eles.</p>

                        <p>Quando voc� refor�a uma situa��o positivamente, o c�o tende a repet�-la. Tudo que eles querem, � ganhar um agradinho. Portanto, use os agradinhos para estimular bons comportamentos e voc� ter� um c�o incrivelmente treinado.</p>

                        <h2><b>Falta de gasto de energia e enriquecimento ambiental</b></h2>
                        <p>A falta de gasto de energia � tamb�m um fator muito prejudicial para os c�es. N�o � raro que um c�o tenha comportamentos ruins dentro de casa quando est� com energia acumulada.</p>

                        <p>Eles podem roer m�veis, objetos, almofadas e carregar chinelos. Al�m disso, eles podem agir de maneira agressiva em algumas momentos.</p>

                        <p>Portanto, gaste a energia do seu c�o. Crie um ambiente enriquecido e evite acumular cargas de energia muito grandes no seu cachorro.</p>

                        <h2><b>Desobedi�ncia canina ? Pouca paci�ncia com seu melhor amigo</b></h2>
                        <p>E por fim, a pouca paci�ncia com seu melhor amigo � outro fator que pode gerar comportamentos de desobedi�ncia. Afinal, a falta de paci�ncia esta totalmente atrelada aos cuidados que voc� tem com o c�o.</p>

                        <p>Se faltar paci�ncia, pode sobrar refor�o punitivo. E como j� entendemos anteriormente, isso � bem ruim para os dogs.</p>

                        <p>� muito importante lembrar que o cachorro � um cachorro. Ele n�o � um ursinho de pel�cia e muito menos um ser humano com consci�ncia e raz�o.</p>

                        <p>Portanto, aprenda como lidar com o seu c�ozinho de maneira adequada. Se ele estiver aprendendo comportamentos, tenha calma. Se ele ainda estiver em fase de treinamento e ainda est� fazendo coisas ?erradas?, muita paci�ncia.</p>

                        <h2><b>Um cachorro � desobediente por natureza?</b></h2>
                        <p>N�o. Um cachorro n�o � desobediente por natureza. Na verdade, um c�o n�o � desobediente em momento nenhum.</p>

                        <p>O que acontece � que o tutor imp�e algumas regras no ambiente e o c�o passa a n�o respeit�-las. Mas mesmo n�o respeitando as regras, ainda assim, para o c�o, os comportamentos adotados n�o s�o ruins.</p>

                        <p>Ele apenas est� seguindo seu instinto e condicionamento recebido at� ent�o.</p>

                        <h2><b>O c�o sabe que est� desobedecendo o tutor?</b></h2>
                        <p>N�o. Um c�o n�o sabe que est� desobedecendo e nem faz uma ?carinha de triste? quando apronta alguma coisa. Esses comportamentos e rea��es s�o criados pelo tutor, uma vez que a consci�ncia de regras � do tutor.</p>

                        <p>Portanto, n�o brigue, ofenda ou use viol�ncia f�sica com seu c�o desobediente. Ele n�o � desobediente para provocar. Mas sim, por falta de outros est�mulos, adestramento e consist�ncia no processo.</p>

                        <p>Cuide bem do seu dog.</p>

                        <p><b>Texto Retirado do Site:</b><br>
                            <a href="https://www.portaldodog.com.br/cachorros/convivencia/desobediencia-canina/">https://www.portaldodog.com.br/cachorros/convivencia/desobediencia-canina/</a>
                        </p>	
                    </div>

                    <div style="background:white; border:1px black solid; border-radius:10px; width:720px; height:202px; margin-bottom:50px;">
                        <div class="row">
                            <div class="col-4">
                                <div class="imgAutor" alt="..." style="width:200px; border-radius:10px; height:200px; background:url(../img/cuidados/autores/autora.jpeg) center no-repeat; background-size:cover; cursor:pointer;">
                                    <span class="badge bg-success rounded-pill">Autor</span>
                                </div>
                            </div>
                            <div class="col-8 my-1">
                                <h5>Camila Bonatti</h5>
                                <p>Psic�loga (CRP12/17354), apaixonada pelo universo pet. Especialista em marketing de conte�do e reda��o web. � redatora h� mais de tr�s anos e atua como ghostwriter, copywriter e psicoeducadora. Atualmente est� fazendo a sua forma��o em Letras/Portugu�s.</p>
                            </div>
                        </div>
                    </div>
                </div>	
            </div>
        </div>	

        <%} else if (numero_conteudo == 4) {%>
        <div class="container-xl">
            <div class="row">
                <div class="col-8">
                    <div style="width:90%;height:auto; background:white; border:1px black solid; padding:25px; margin-top:50px;margin-bottom:50px;">
                        <div style="width:80%;">
                            <small>Adestramento</small>
                            <h2><b>Como ensinar xixi e coc� no lugar certo?</b></h2>
                            <small>por Camila Bonatti ? publicado em 30 out 2021 - 05:10</small>
                        </div>
                        <br>
                        <p>Alguns erros ao ensinar xixi e coc� no lugar certo para o cachorro podem passar despercebidos pela maioria dos tutores. Afinal, esses erros muitas vezes s�o camuflados de ?bons h�bitos? ou desconhecimento do processo correto para ensinar o c�ozinho. Principalmente por tutores de primeira viagem.
                        </p>
                        <p>Por isso, neste artigo, o Portal do Dog vai te ajudar a entender um pouco mais sobre o assunto. Afinal, � do interesse do c�ozinho e mais ainda do tutor, que o animal aprenda onde ele deve fazer suas necessidades, n�o � mesmo?
                        </p>
                        <p>Embora n�o seja um processo r�pido e simples, � um processo que pode ser f�cil, desde que o tutor tenha paci�ncia e saiba o que fazer. Por isso, evitar erros ao ensinar xixi e coc� no lugar certo j� � um passo bastante importante, n�o � mesmo?
                        </p>
                        <p>Acompanhe e saiba tudo sobre o tema.</p>

                        <h2><b>Erros ao ensinar xixi e coc� no lugar certo para o cachorro</b></h2>
                        <p>Um dos erros ao ensinar xixi e coc� no lugar certo para o cachorro � justamente achar que o c�o precisa aprender isso rapidamente.
                        </p>
                        <p>Para o c�o, principalmente os filhotes, o melhor lugar para fazer as necessidades vai ser aquele ambiente calmo, tranquilo e sem estresse para o momento. Ou seja: qualquer lugar est� �timo, desde que esteja tudo calmo.
                        </p>
                        <p>Aqui no site, temos alguns artigos ensinando como treinar o c�o para ele acertar o banheiro. Veja: Xixi e coc� no lugar certo para seu c�o: 3 dicas para ensinar.
                        </p>
                        <p>S� que al�m de aprender como fazer, � preciso aprender, tamb�m, o que n�o fazer. Nesse caso, separamos 9 situa��es que talvez voc� fa�a e n�o sabe. Veja abaixo:</p>
                        <ol>			
                            <li>Falta de paci�ncia com o c�o.</li>
                            <li>Achar que o c�o vai aprender da noite para o dia.</li>
                            <li>Pouca higiene no banheiro do c�ozinho.</li>
                            <li>Falta de restri��o do espa�o.</li>
                            <li>Pouca ou nenhuma rotina (c�es gostam de rotina).</li>
                            <li>Tapete higi�nico perto da comida e caminha.</li>
                            <li>Nunca substituir os famosos jornais.</li>
                            <li>Brigar com o cachorro ou usar algum tipo de viol�ncia.</li>
                            <li>N�o refor�ar positivamente a situa��o.</li>
                        </ol>
                        <p>E a�, voc� comete ou j� cometeu algum desses erros ao ensinar o xixi e coc� no lugar certo para o cachorro? Pois bem, a partir de agora, vamos entender mais sobre cada situa��o da lista acima.
                        </p>
                        <p>Veja o que fazer, como evitar, problemas que podem surgir a partir disso e mais. Acompanhe!
                        </p>
                        <h2><b>Como ensinar xixi e coc� no lugar certo ? Falta de paci�ncia com o c�o</b></h2>
                        <p>Antes de mais nada, n�o podemos deixar de mencionar algo fundamental e que pode facilmente ?acabar? com a sua estrat�gia para ensinar xixi e coc� no lugar certo para o c�o: paci�ncia.
                        </p>
                        <p>Sim, sem paci�ncia, nada vai dar certo. E inclusive, a falta de paci�ncia pode facilmente fazer com que seu c�o fique estressado, ansioso e nunca aprenda onde � o banheiro dele.										
                        </p>							
                        <p>Para evitar situa��es de falta de paci�ncia, voc� precisa entender que, ao criar grandes expectativas, a paci�ncia pode se esgotar rapidinho.
                        </p>
                        <p>Por isso, lembre-se sempre que o seu c�o � um c�o e ele precisa de condicionamento para aprender alguma coisa. N�o � s� mostrar onde � o banheiro ou comprar produtos que ajudam o c�o a se sentir confort�vel no banheiro, ok?
                        </p>
                        <p>Leia mais: Educadores sanit�rios funcionam para adestrar o cachorro?
                        </p>
                        <h2><b>Achar que o c�o vai aprender da noite para o dia</b></h2>
                        <p>Esse erro est� muito ligado com o t�pico anterior, sobre a falta de paci�ncia. Ou seja, sempre que voc� coloca uma expectativa muito grande em um adestramento ou ensinamento para seu c�o, as coisas podem n�o acontecer da forma que deveriam.
                        </p>
                        <p>Por isso, lembre-se: seu c�ozinho n�o vai aprender onde � o banheiro dele da noite para o dia.
                        </p>
                        <p>A falta de paci�ncia pode fazer com que voc� pense que poucas sess�es de adestramento ser�o o suficiente. No entanto, n�o s�o.
                        </p>
                        <p>Ensinar o banheiro para o cachorro � um desafio muito grande. Voc� precisa acompanhar o desenvolvimento dele e entender que pode levar algumas semanas ou at� meses at� que o c�o, enfim, acerte o lugar do xixi e coc�.
                        </p>
                        <p>At� l�, voc� precisa de muito refor�o positivo, carinho, paci�ncia e amor. Nunca coloque cargas de estresse no seu c�ozinho. Isso vai faz�-lo n�o aprender onde ele deve fazer xixi e coc�.
                        </p>
                        <h2><b>Como ensinar xixi e coc� no lugar certo ? Pouca higiene no banheiro do c�ozinho</b></h2>
                        <p>Um dos erros ao ensinar xixi e coc� no lugar certo para o cachorro, � a falta de higiene e limpeza no ambiente em que o c�ozinho deveria fazer suas necessidades.
                        </p>
                        <p>E aqui, n�o tem muito segredo. Afinal, basta pensarmos por n�s: um banheiro sujo e com cheiro ruim, � bem desagrad�vel, n�o � mesmo?
                        </p>
                        <p>Pois bem, para os c�es, vale a mesma afirma��o. Eles n�o gostam de ambientes sujos. Muito menos quando esse ambiente � o banheiro deles.
                        </p>
                        <p>Portanto, se o seu c�o desaprendeu onde � o banheiro ou se ele nunca aprendeu, pense que, talvez, ele esteja incomodado com alguma coisa. Pode ser a falta de higiene que est� deixando-o desconfort�vel.
                        </p>
                        <p>Mantenha uma limpeza rotineira. Preferencialmente, logo ap�s o c�ozinho usar o banheiro. N�o deixe sujeira acumular de forma alguma. Isso vai ajudar, inclusive, a n�o dar cheiro ruim na sua casa.
                        </p>
                        <p>Veja tamb�m este artigo: Como limpar o xixi / urina do seu cachorro.
                        </p>
                        <h2><b>Como ensinar xixi e coc� no lugar certo ? Falta de restri��o do espa�o</b></h2>
                        <p>Uma das coisas mais importantes que voc� deve fazer ao adotar um cachorro, � restringir o espa�o dele nos primeiros dias em casa. Preferencialmente, quando o c�o est� sozinho no ambiente.</p>

                        <p>Neste caso, a restri��o � fundamental para que o c�o n�o suje a casa inteira e ?se perca? no aprendizado de onde � o banheiro certo.
                        </p>
                        <p>Esse � um dos erros ao ensinar xixi e coc� no lugar certo para o cachorro cometido por muitos tutores de primeira viagem.
                        </p>
                        <p>Afinal, nem sempre podemos ficar em casa o dia inteiro com o c�o. E se ele for um filhote rec�m chegado no recinto, ele ainda n�o conhece o espa�o e poder� usar o espa�o inteiro como banheiro.
                        </p>
                        <p>Portanto, restrinja o recinto dele quando ele estiver sozinho.</p>

                        <h2><b>Pouca ou nenhuma rotina (c�es gostam de rotina)</b></h2>
                        <p>C�es gostam de rotina. � um erro por si s�, n�o estabelecer uma rotina saud�vel para seu c�o. E quando o assunto � erros ao ensinar xixi e coc� no lugar certo para o cachorro, a rotina � um dos pontos mais importantes de todos. Afinal, a rotina ajuda o c�o a fixar os processos e adestramentos.</p>

                        <p>Se hoje o banheiro � em um lugar, amanh� � em outro e depois de amanh� em mais outro, isso n�o vai dar certo. S� vai gerar muita confus�o na cabe�a do c�ozinho e ele poder�, desta forma, adotar qualquer lugar como sendo o banheiro dele.</p>

                        <p>Ofere�a uma rotina adequada, repetitiva e sem muitas ?novas emo��es? ao c�o. Eles gostam das coisas previs�veis e, inclusive, a rotina ajuda-os a ter um organismo mais controlado para as necessidades em momentos espec�ficos.</p>

                        <h2><b>Tapete higi�nico perto da comida e caminha</b></h2>
                        <p>Esse � um dos erros ao ensinar xixi e coc� no lugar certo que mais podem prejudicar o aprendizado do c�o.</p>

                        <p>Afinal, aqui, voc� estar� lidando com o instinto de sobreviv�ncia do animal. A comida � ?sagrada? para os c�es e � algo que eles v�o lutar para conquistar. Logo, manter o banheiro do dog perto da comida dele, � algo que vai deixar o c�o bem desconfort�vel.</p>

                        <p>Portanto, busque um lugar adequado para que o c�ozinho possa fazer suas necessidades, que n�o seja perto do pote de ra��o e �gua.</p>

                        <h2><b>Nunca substituir os famosos jornais</b></h2>
                        <p>Tudo bem, os jornais s�o boas op��es para quem acabou de receber um novo membro da fam�lia em casa. Por�m, eles n�o podem se perpetuar no recinto por diversos motivos.</p>

                        <p>Os jornais soltam tinta e isso pode trazer alergia para as regi�es �ntimas dos c�es. Al�m disso, os jornais podem deixar o ambiente escorregadio e, portanto, desconfort�vel para o seu dog.</p>

                        <p>A higiene do ambiente tamb�m n�o fica das melhores quando o local � forrado com jornais. O cheiro � propagado e o c�o se sente desconfort�vel por isso. Al�m de deixar a casa igualmente mal-cheirosa.</p>

                        <p>Quando puder, evolua para os tapetes higi�nicos.</p>

                        <h2><b>Brigar com o cachorro ou usar algum tipo de viol�ncia</b></h2>
                        <p>Talvez, esse seja um dos erros ao ensinar xixi e coc� no lugar certo que mais s�o prejudiciais ao c�o. Afinal, ao brigar com o c�o ou usar qualquer tipo de viol�ncia, o c�o pode ficar muito desconfort�vel n�o s� para o banheiro. Mas tamb�m, para v�rias outras situa��es do dia a dia.</p>

                        <p>Adestramentos, ensinamento de truques e comandos b�sicos devem sempre seguir padr�es de refor�o positivo. Nunca use a puni��o como forma de ensinar alguma coisa ao c�o. Afinal, ele n�o vai aprender e pode facilmente ficar estressado, ansioso e com v�rios outros problemas.</p>

                        <p>Por isso, esque�a aquele truque de ?colocar o focinho do c�o no xixi fora do lugar?, ok? Isso n�o vai ajudar seu c�o a entender onde � o banheiro dele.</p>

                        <h2><b>N�o refor�ar positivamente a situa��o</b></h2>
                        <p>E por fim, outro erro ao querer ensinar o banheiro ao c�o, � deixar de usar o refor�o positivo como estrat�gia de ensinamento. O refor�o positivo � fant�stico para v�rios tipos de ensinamentos e ajuda o c�o a n�o ficar estressado e ansioso com a press�o de aprender alguma coisa.</p>

                        <p>Sempre que o seu c�ozinho acertar o lugar do xixi e coc�, ofere�a um benef�cio: pode ser um biscoito, um elogio ou um carinho. Assim, sempre que ele errar, n�o fa�a nada ? apenas n�o d� o benef�cio.</p>

                        <p>Ent�o, com o tempo, o c�o tender� a repetir comportamentos pelo benef�cio. E quando voc� menos esperar, ele saber� exatamente onde � o banheiro dele.</p>

                        <p>Cuide bem do seu dog.</p>

                        <p><b>Texto Retirado do Site:</b><br>
                            <a href="https://www.portaldodog.com.br/cachorros/convivencia/adestramento/erros-ao-ensinar-xixi-e-coco-no-lugar-certo/">https://www.portaldodog.com.br/cachorros/convivencia/adestramento/erros-ao-ensinar-xixi-e-coco-no-lugar-certo/</a>
                        </p>	
                    </div>

                    <div style="background:white; border:1px black solid; border-radius:10px; width:720px; height:202px; margin-bottom:50px;">
                        <div class="row">
                            <div class="col-4">
                                <div class="imgAutor" alt="..." style="width:200px; border-radius:10px; height:200px; background:url(../img/cuidados/autores/autora.jpeg) center no-repeat; background-size:cover; cursor:pointer;">
                                    <span class="badge bg-success rounded-pill">Autor</span>
                                </div>
                            </div>
                            <div class="col-8 my-1">
                                <h5>Camila Bonatti</h5>
                                <p>Psic�loga (CRP12/17354), apaixonada pelo universo pet. Especialista em marketing de conte�do e reda��o web. � redatora h� mais de tr�s anos e atua como ghostwriter, copywriter e psicoeducadora. Atualmente est� fazendo a sua forma��o em Letras/Portugu�s.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>	
        <%} else if (numero_conteudo == 5) {%>
        <div class="container-xl">
            <div class="row">
                <div class="col-8">
                    <div style="width:90%;height:auto; background:white; border:1px black solid; padding:25px; margin-top:50px;margin-bottom:50px;">
                        <div style="width:80%;">
                            <small>Curiosidade</small>
                            <h2><b>Como � a vis�o de um gato?</b></h2>
                            <small>por Hyago Bandeira ? publicado em 02 dez 2021 - 15:53</small>
                        </div>
                        <br>
                        <h2><b>Sabe por que os olhos do gato brilham no escuro?</b></h2>
                        <p>Vamos esclarecer essas e outras curiosidades sobre a vis�o felina</p>			

                        <p>Os olhos s�o os tra�os mais marcantes de um felino, mas al�m do formato imponente e as pupilas que dilatam e se retraem dependendo da situa��o, a vis�o dos gatos � outro fator que desperta curiosidade. Mesmo depois de domesticados, os gatos ainda carregam muitos instintos da vida selvagem, como a habilidade de enxergarem no escuro. E voc� sabia que os olhos do gato servem at� para expressar o que ele est� sentindo? A vis�o felina � mais complexa e interessante do que se imagina. Por isso, o Patas da Casa reuniu informa��es importantes sobre a vis�o de gato para voc� desvendar tudo sobre esse mist�rio. D� s� uma olhada!
                        </p>
                        <h2><b>Como � a vis�o dos gatos: eles podem ver cores?</b></h2>
                        <p>Afinal, gato enxerga em preto e branco ou esse � apenas um mito? A resposta para essa pergunta � n�o. Os gatos enxergam mais do que branco e preto, mas n�o s�o todas as cores que eles veem. Isso acontece por causa de uma c�lula chamada cone, que possui a fun��o de auxiliar a vis�o diurna e perceber as cores. Em compara��o com os humanos, os felinos possuem uma c�lula fotorreceptora a menos, o que impede de enxergar tons de verde. Ou seja, a vis�o de gato permite que ele enxergue colorido, mas sem as combina��es da cor verde.
                        </p>

                        <h2><b>Vis�o do gato: eles possuem uma �tima vis�o perif�rica e noturna</b></h2>
                        <p>Apesar de enxergar um mundo sem as tonalidades esverdeadas, a vis�o dos gatos � muito boa no quesito angular e perif�rico. Em compara��o com os humanos, os bichanos possuem um campo de vis�o mais amplo, que permite que eles enxerguem �ngulos de aproximadamente 200�. A vis�o dos humanos � de apenas 180�.
                        </p>
                        <p>Outra d�vida constante sobre a vis�o do gato � se ele possui vis�o noturna. Os felinos se locomovem extremamente bem � noite, isso porque eles conseguem enxergar muito bem quando todas as luzes est�o apagadas. A explica��o est� no alto n�vel de bastonetes, que s�o as c�lulas respons�veis pela vis�o noturna. Al�m disso, os gatos possuem uma estrutura chamada tapetum lucidum atr�s da retina, que reflete a luz e permite que ela passe mais de uma vez pela retina, fazendo com que a vis�o de gato aproveite mais a pouca luz dispon�vel no escuro. Essa caracter�stica � a respons�vel por fazer os olhos dos felinos brilharem no escuro.
                        </p>
                        <h2><b>Como � a vis�o de um gato: esp�cie pode ser considerada m�ope</b></h2>
                        <p>Com tantas vantagens da vis�o do gato em compara��o com a dos humanos, existe uma coisa que nos deixa um pouco mais � frente deles. Por conta da forma do globo ocular, os bichanos n�o enxergam muito bem � dist�ncia. Para os padr�es humanos, eles podem ser considerados m�opes. A partir dos 6 metros, a vis�o do gato come�a a ficar um emba�ada. No entanto, em rela��o a outras esp�cies de animais, a vis�o em profundidade dos felinos � considerada muito boa. O que � bom para que o animal capture uma presa, por exemplo, seja um bichinho ou um ratinho de corda. 
                        </p>
                        <p><b>Texto Retirado do Site:</b><br>
                            <a href="https://www.patasdacasa.com.br/noticia/como-e-a-visao-de-um-gato_a4000/1">https://www.patasdacasa.com.br/noticia/como-e-a-visao-de-um-gato_a4000/1</a>
                        </p>	
                    </div>

                    <div style="background:white; border:1px black solid; border-radius:10px; width:720px; height:202px; margin-bottom:50px;">
                        <div class="row">
                            <div class="col-4">
                                <div class="imgAutor" alt="..." style="width:200px; border-radius:10px; height:200px; background:url(../img/cuidados/autores/Autor.jpg) center no-repeat; background-size:cover; cursor:pointer;">
                                    <span class="badge bg-success rounded-pill">Autor</span>
                                </div>
                            </div>
                            <div class="col-8 my-1">
                                <h5>Hyago Bandeira</h5>
                                <p>Rep�rter do Patas desde o final de 2020 e jornalista em forma��o pela UFRJ. Me apaixonei ainda mais pelo universo dos cachorros e gatos a partir do meu trabalho no site. Apesar de n�o ser um pai de pet atualmente, sinto imensa gratid�o por ser um colaborador dessa rede de apoio para os tutores.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>	
        <%} else if (numero_conteudo == 6) {%>
        <div class="container-xl">
            <div class="row">
                <div class="col-8">

                    <div style="width:90%;height:auto; background:white; border:1px black solid; padding:25px; margin-top:50px;margin-bottom:50px;">
                        <div style="width:80%;">
                            <small>Alimenta��o</small>
                            <h2><b>Gato pode comer fruta? Descubra a forma correta de inserir os alimentos na dieta do felino</b></h2>
                            <small>por Hyago Bandeira ? publicado em 30 nov 2021 - 20:16</small>
                        </div>
                        <br>
                        <h2><b>Felinos podem comer mel�o sem problemas, mas voc� sabe outras frutas que gatos podem comer?</b></h2>
                        <p>Saber se o gato pode comer fruta � uma das principais d�vidas dos gateiros que querem incrementar a alimenta��o do pet. Oferecer outros tipos de alimentos, al�m da ra��o e sach� para gato, � uma op��o que pode ser adotada na dieta do gato. No entanto, tudo deve ser feito com muito cuidado quando se trata da alimenta��o felina. Mas ser� que os gatos podem comer frutas? Nem tudo que � ben�fico para o organismo humano ser� bom para eles e � importante saber disso. D� s� uma olhada no que descobrimos sobre esse assunto!
                        </p>
                        <h2><b>Os gatos podem comer frutas ou n�o?</b></h2>
                        <p>Antes de descobrir quais frutas gatos podem comer � preciso entender como esse alimento contribui para a dieta dos felinos. Afinal de contas, eles realmente podem comer frutas? A princ�pio � necess�rio entender sobre a cadeia alimentar do gato e como ocorre a sua dieta na natureza. Os felinos s�o animais carn�voros e por, conta disso, sua dieta nunca pode ser baseada s� em vegetais. Ou seja, os gatos podem comer frutas, mas elas nunca poder�o ser o principal alimento dos felinos pois n�o fornecem aquilo que o organismo deles precisa. Os bichanos s�o carn�voros, mas � poss�vel inserir algumas variedades entre as refei��es. Por�m, vale a pena pesquisar que frutas gatos podem comer, pois muitas delas podem ser prejudiciais para os bichanos.
                        </p>
                        <h2><b>Quais s�o as frutas que gatos podem comer?</b></h2>
                        <p>As frutas s�o alimentos que possuem uma grande quantidade de a��cares e muitas vezes podem ser prejudiciais para o organismo dos gatos. Para te ajudar na miss�o preparamos duas listas, uma com as frutas que gato pode comer e outra com os alimentos proibidos. Veja a seguir!
                        </p>
                        <p><b>Frutas que gatos podem comer:</b></p>
                        <ul>
                            <li>Ma��</li>
                            <li>Morango</li>
                            <li>Mel�o</li>
                            <li>Melancia</li>
                            <li>Banana</li>
                            <li>Pera</li>
                        </ul>
                        <p><b>Frutas que gatos n�o podem comer:</b></p>
                        <ul>
                            <li>Lim�o</li>
                            <li>Laranja</li>
                            <li>Uva</li>
                            <li>Caqui</li>
                        </ul>
                        <p>De modo geral, as frutas c�tricas devem ser sempre evitadas para os felinos, pois o organismo dos pets n�o suportam a acidez desses alimentos, podendo prejudicar at� mesmo a parede do est�mago.
                        </p>
                        <h2><b>Frutas que gato pode comer: como variar a dieta dos bichanos?</b></h2>
                        <p>A busca por frutas que gatos podem comer muitas vezes � para variar a alimenta��o do gato. Para isso, � mais interessante procurar pelos petiscos pr�prios para gatos. Muitos deles possuem frutas na composi��o e s�o estudados e preparados especialmente para os felinos. As op��es s�o diversas e s�o mais seguras do que arriscar oferecendo alimentos que n�o s�o espec�ficos como petisco.
                        </p>
                        <p><b>Texto Retirado do Site:</b><br>
                            <a href="https://www.patasdacasa.com.br/noticia/gato-pode-comer-fruta-descubra-a-forma-correta-de-inserir-os-alimentos-na-dieta-do-felino_a3985/1">https://www.patasdacasa.com.br/noticia/gato-pode-comer-fruta-descubra-a-forma-correta-de-inserir-os-alimentos-na-dieta-do-felino_a3985/1</a>
                        </p>	
                    </div>

                    <div style="background:white; border:1px black solid; border-radius:10px; width:720px; height:202px; margin-bottom:50px;">
                        <div class="row">
                            <div class="col-4">
                                <div class="imgAutor" alt="..." style="width:200px; border-radius:10px; height:200px; background:url(../img/cuidados/autores/Autor.jpg) center no-repeat; background-size:cover; cursor:pointer;">
                                    <span class="badge bg-success rounded-pill">Autor</span>
                                </div>
                            </div>
                            <div class="col-8 my-1">
                                <h5>Hyago Bandeira</h5>
                                <p>Rep�rter do Patas desde o final de 2020 e jornalista em forma��o pela UFRJ. Me apaixonei ainda mais pelo universo dos cachorros e gatos a partir do meu trabalho no site. Apesar de n�o ser um pai de pet atualmente, sinto imensa gratid�o por ser um colaborador dessa rede de apoio para os tutores.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%} else if (numero_conteudo == 7) {%>
        <div class="container-xl">
            <div class="row">
                <div class="col-8">

                    <div style="width:90%;height:auto; background:white; border:1px black solid; padding:25px; margin-top:50px;margin-bottom:50px;">
                        <div style="width:80%;">
                            <small>Conviv�ncia</small>
                            <h2><b>Tela de prote��o para gatos: qual a diferen�a entre os modelos 3x3 e 5x5 e como escolher?</b></h2>
                            <small>por Karoline Miranda ? publicado em 19 nov 2021 - 16:30</small>
                        </div>
                        <br>
                        <p>A tela de prote��o para gatos em todas as janelas da casa � a primeira coisa que voc� deve providenciar ao decidir adotar um gato. Os felinos s�o animais exploradores e curiosos: eles amam observar a rua e conhecer todos os cantos da casa. A falta de uma tela para gatos pode fazer com que as aventuras em ambientes n�o adaptados resultem em acidentes graves e at� fugas. Existem dois tipos de tela de prote��o para gatos que normalmente s�o usados: 3x3 e 5x5 determinam o tamanho dos ?buracos? na tela para janela - gatos ficam bem mais seguros com uma delas. Quer entender os modelos de rede de prote��o para gatos, a diferen�a entre os tamanhos e qual modelo � mais indicado para sua casa com patinhas? Confira aqui!</p>
                        </p>
                        <h2><b>A tela de prote��o para gatos impede fugas e acidentes</b></h2>
                        <p>A import�ncia da tela para gatos � ignorada por muita gente, mas � essencial para se ter uma casa segura para felinos. Gatinhos, mesmo que castrados, podem fugir e a tela de janela para gatos impede que isso ocorra. A cria��o indoor (ou seja, sem acesso �s ruas) aumenta a expectativa de vida do seu animal. Os gatos s�o animais que t�m seus instintos selvagens bem presentes. Apesar de serem domesticados, ainda possuem uma conex�o muito grande com o comportamento explorador de seus ancestrais. Isso significa que eles amam desbravar o mundo, com sua curiosidade �nica. Isso pode acabar levando �s famosas fugidinhas.
                        </p>
                        <p>Os felinos que moram em casas seguras com tela para gatos n�o fugir vivem, em m�dia, 16 anos. J� os gatos ?livres? costumam viver cerca de oito anos. Isso porque, ao impedir as voltinhas com a tela de prote��o, gatos t�m menos chance de contrair doen�as graves, se envolver em briga de gato ou serem atropelados, situa��es infelizmente comuns ao sair para a rua. Colocar uma tela de prote��o para gatos na sua casa para acolher seu gatinho �, antes de tudo, um ato de amor.
                        </p>
                        <h2><b>Tipos de tela de prote��o: qual a diferen�a entre os tamanhos 3x3 e 5x5?</b></h2>
                        <p>A principal diferen�a entre os tipos de telas de prote��o para janelas 3x3 e 5x5 � o tamanho dos buracos. Na tela de gato de 3x3, o tamanho � menor (3 cm). J� no modelo 5x5, os furos medem 5 cm. Essa tela de gatos � mais comum de encontrar e geralmente � utilizada em casas e apartamentos onde h� crian�as e cachorros maiores. Em todos os casos, o ideal � instalar rede de prote��o para gatos feita com um material firme e resistente. Os tipos de tela nylon ou polietileno resistem �s garras e dentinhos ferozes dos pequenos felinos. Mas afinal, como colocar tela na janela para gatos? Primeiro, saiba que a tela prote��o para gatos deve sempre ser instalada de dentro para fora, nunca de forma contr�ria.
                        </p>
                        <p>A tela para gatos precisa ser bem fixada nas laterais para que o animal n�o consiga passar (lembre-se de que eles podem ser bem flex�veis!). Para isso, � preciso fazer furos na parede com uma furadeira, onde ser�o colocados os ganhos. Eles devem ser bem fixados na parede e ter uma dist�ncia entre si de, em m�dia, 30 cm. A tela prote��o para gatos ser� colocada nesses ganchos e deve ficar bem esticada. Como a tela para gatos pode ficar um pouco maior, a sobra deve ser cortada. Para aumentar a sustenta��o da rede de prote��o para gatos, pode-se usar tamb�m um cord�o naval, entrela�ado entre os ganchos.
                        </p>
                        <h2><b>Qual modelo de rede de prote��o para gatos � indicado?</b></h2>
                        <p>Na hora de escolher a rede de prote��o para gatos ideal para o seu bichano voc� precisa considerar duas coisas: a idade de gato e o comportamento geral dele (ou seja, se ele tem o costume de arranhar ou roer superf�cies). Vamos te explicar melhor! No caso de filhotinhos, por exemplo, a tela para gatos 3x3 (que tem o buraco bem menor) impossibilita que o gato passe por ela, evitando acidentes e fugas. Esse modelo de tela de gato tamb�m pode ser considerado para os adultos, principalmente se ele costuma roer as coisas. Isso porque o modelo 5x5 permite que o felino coloque todo o focinho dentro do furo da tela de prote��o, permitindo que ele consiga morder as cordinhas com mais facilidade. Com o buraco menor do tipo 3x3, o gato n�o consegue fazer isso. J� a tela de prote��o para gatos 5x5 � suficiente para adultos mais tranquilos e que n�o costumam ficar mordendo e roendo. Nesses casos, vale investir na tela de gato 5x5, que � mais f�cil de ser encontrada.
                        </p>
                        <p>A tela de prote��o para gatos em todas as janelas da casa � a primeira coisa que voc� deve providenciar ao decidir adotar um gato. Os felinos s�o animais exploradores e curiosos: eles amam observar a rua e conhecer todos os cantos da casa. A falta de uma tela para gatos pode fazer com que as aventuras em ambientes n�o adaptados resultem em acidentes graves e at� fugas. Existem dois tipos de tela de prote��o para gatos que normalmente s�o usados: 3x3 e 5x5 determinam o tamanho dos ?buracos? na tela para janela - gatos ficam bem mais seguros com uma delas. Quer entender os modelos de rede de prote��o para gatos, a diferen�a entre os tamanhos e qual modelo � mais indicado para sua casa com patinhas? Confira aqui!
                        </p>
                        <h2><b>A tela de prote��o para gatos impede fugas e acidentes</b></h2>
                        <p>A import�ncia da tela para gatos � ignorada por muita gente, mas � essencial para se ter uma casa segura para felinos. Gatinhos, mesmo que castrados, podem fugir e a tela de janela para gatos impede que isso ocorra. A cria��o indoor (ou seja, sem acesso �s ruas) aumenta a expectativa de vida do seu animal. Os gatos s�o animais que t�m seus instintos selvagens bem presentes. Apesar de serem domesticados, ainda possuem uma conex�o muito grande com o comportamento explorador de seus ancestrais. Isso significa que eles amam desbravar o mundo, com sua curiosidade �nica. Isso pode acabar levando �s famosas fugidinhas.
                        </p>
                        <p>Os felinos que moram em casas seguras com tela para gatos n�o fugir vivem, em m�dia, 16 anos. J� os gatos ?livres? costumam viver cerca de oito anos. Isso porque, ao impedir as voltinhas com a tela de prote��o, gatos t�m menos chance de contrair doen�as graves, se envolver em briga de gato ou serem atropelados, situa��es infelizmente comuns ao sair para a rua. Colocar uma tela de prote��o para gatos na sua casa para acolher seu gatinho �, antes de tudo, um ato de amor.
                        </p>
                        <h2><b>Tipos de tela de prote��o: qual a diferen�a entre os tamanhos 3x3 e 5x5?</b></h2>
                        <p>A principal diferen�a entre os tipos de telas de prote��o para janelas 3x3 e 5x5 � o tamanho dos buracos. Na tela de gato de 3x3, o tamanho � menor (3 cm). J� no modelo 5x5, os furos medem 5 cm. Essa tela de gatos � mais comum de encontrar e geralmente � utilizada em casas e apartamentos onde h� crian�as e cachorros maiores. Em todos os casos, o ideal � instalar rede de prote��o para gatos feita com um material firme e resistente. Os tipos de tela nylon ou polietileno resistem �s garras e dentinhos ferozes dos pequenos felinos. Mas afinal, como colocar tela na janela para gatos? Primeiro, saiba que a tela prote��o para gatos deve sempre ser instalada de dentro para fora, nunca de forma contr�ria.
                        </p>
                        <p>A tela para gatos precisa ser bem fixada nas laterais para que o animal n�o consiga passar (lembre-se de que eles podem ser bem flex�veis!). Para isso, � preciso fazer furos na parede com uma furadeira, onde ser�o colocados os ganhos. Eles devem ser bem fixados na parede e ter uma dist�ncia entre si de, em m�dia, 30 cm. A tela prote��o para gatos ser� colocada nesses ganchos e deve ficar bem esticada. Como a tela para gatos pode ficar um pouco maior, a sobra deve ser cortada. Para aumentar a sustenta��o da rede de prote��o para gatos, pode-se usar tamb�m um cord�o naval, entrela�ado entre os ganchos.
                        </p>
                        <h2><b>Qual modelo de rede de prote��o para gatos � indicado?</b></h2>
                        <p>Na hora de escolher a rede de prote��o para gatos ideal para o seu bichano voc� precisa considerar duas coisas: a idade de gato e o comportamento geral dele (ou seja, se ele tem o costume de arranhar ou roer superf�cies). Vamos te explicar melhor! No caso de filhotinhos, por exemplo, a tela para gatos 3x3 (que tem o buraco bem menor) impossibilita que o gato passe por ela, evitando acidentes e fugas. Esse modelo de tela de gato tamb�m pode ser considerado para os adultos, principalmente se ele costuma roer as coisas. Isso porque o modelo 5x5 permite que o felino coloque todo o focinho dentro do furo da tela de prote��o, permitindo que ele consiga morder as cordinhas com mais facilidade. Com o buraco menor do tipo 3x3, o gato n�o consegue fazer isso. J� a tela de prote��o para gatos 5x5 � suficiente para adultos mais tranquilos e que n�o costumam ficar mordendo e roendo. Nesses casos, vale investir na tela de gato 5x5, que � mais f�cil de ser encontrada.
                        </p>

                        <h2><b>Ao instalar tela para gatos, � preciso ter alguns cuidados e manter o pet afastado</b></h2>
                        <p>Na hora de instalar ou trocar a tela de prote��o para gatos, alguns cuidados devem ser tomados. Deixar o gato em um local sem prote��o � muito perigoso, por conta dos riscos de fuga e acidentes. Por isso, se voc� ainda n�o tem rede de prote��o para gatos ou est� se mudando para uma casa nova que n�o tenha tela, n�o deixe seu bichano entrar no local. Pode parecer exagero, mas n�o �. Apenas deixe-o entrar em um c�modo com janelas ou varandas quando estiver telado. Enquanto estiver colocando a tela para gatos, n�o permita que o animal fique no mesmo ambiente. Prenda-o em outro c�modo durante a instala��o para evitar problemas. Depois que  a tela de gato j� tiver sido instalada, tenha cuidado para n�o desgastar. Limpe apenas com �gua e sab�o neutro, pois produtos mais abrasivos podem acabar enfraquecendo o material. Al�m disso, nunca remova os ganchos, nem para limpar. 
                        </p>
                        <h2><b>Prefira um profissional na hora de instalar a tela de janela para gatos</b></h2>
                        <p>Voc� pode at� colocar a rede de prote��o para gatos sozinho, mas o risco de uma instala��o errada que leve a acidentes no futuro � grande. Mesmo que voc� saiba o passo a passo de como instalar tela de prote��o, isso pode n�o ser o suficiente, pois existem equipamentos adequados para isso e � muito mais complicado na pr�tica do que na teoria. Existem profissionais especializados na instala��o de tela de prote��o para gatos, que realizam todo o servi�o e garantem a seguran�a. Muitas pessoas optam por instalar sozinhas para n�o gastar mais dinheiro com a instala��o profissional. Para comprar uma tela de prote��o para gatos, o valor � medido de acordo com o metro quadrado. Normalmente, para 1 m� de tela para gatos, pre�o � de R$ 40 a R$ 50. Um exemplo: se sua janela tiver 4 m� e o valor de tela de prote��o for de R$ 50, voc� gastar� 4 X 50 = 200. Ou seja, nessa rede de prote��o para gatos, pre�o ser� de R$200. 
                        </p>
                        <p>Para o servi�o de instala��o da tela de prote��o para gatos, o pre�o tamb�m muda de acordo com o tamanho. Normalmente, o metro quadrado para instala��o custa entre R$ 15 e R$40. Usando o exemplo de rede de prote��o para gatos de 4 m� e supondo que o valor de instala��o seja de R$20 por metro quadrado, voc� gastar� 4 X 20 = R$80. Como s� de comprar a tela de prote��o para gatos o pre�o � elevado, muitos abrem m�o da instala��o. Mas a realidade � que vale bem mais a pena gastar um pouco mais para instalar do que economizar e ter um resultado ruim. Lembrando que colocar a tela de prote��o para gatos parece muito simples, mas um pequeno erro pode comprometer toda a estrutura, fazendo seu gato achar qualquer brecha para fugir e at� mesmo sofrer algum acidente grave ao encostar na tela mal colocada. 
                        </p>
                        <p><b>Texto Retirado do Site:</b><br>
                            <a href="https://www.patasdacasa.com.br/noticia/tela-de-protecao-para-gatos-qual-a-diferenca-entre-os-modelos-3x3-e-5x5-e-como-escolher_a1053/1">https://www.patasdacasa.com.br/noticia/tela-de-protecao-para-gatos-qual-a-diferenca-entre-os-modelos-3x3-e-5x5-e-como-escolher_a1053/1</a>
                        </p>	
                    </div>

                    <div style="background:white; border:1px black solid; border-radius:10px; width:720px; height:202px; margin-bottom:50px;">
                        <div class="row">
                            <div class="col-4">
                                <div class="imgAutor" alt="..." style="width:200px; border-radius:10px; height:200px; background:url(../img/cuidados/autores/Autora3.jpg) center no-repeat; background-size:cover; cursor:pointer;">
                                    <span class="badge bg-success rounded-pill">Autor</span>
                                </div>
                            </div>
                            <div class="col-8 my-1">
                                <h5>Karoline Miranda</h5>
                                <p>Rep�rter auxiliar do Patas em 2019, uma verdadeira senhora no corpo de jovem, apaixonada por literatura, um bom caf� e muitos gatos! Sou tutora da Kali, minha princesa felina de 1 ano e 7 meses, al�m do Leo e da Leona, meus g�meos de 8 meses. Kali � a prova de que gatos podem ser carinhosos, leais, carentes e nem um pouco trai�oeiros. Quanto ao Leo e a Leona, garanto: fazem tanta bagun�a quanto qualquer labrador!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>	
        <%} else if (numero_conteudo == 8) {%>
        <div class="container-xl">
            <div class="row">
                <div class="col-8">

                    <div style="width:90%;height:auto; background:white; border:1px black solid; padding:25px; margin-top:50px;margin-bottom:50px;">
                        <div style="width:80%;">
                            <small>Sa�de</small>
                            <h2><b>Gato vomitando: saiba as causas, como identificar, problemas de sa�de relacionados e o que fazer</b></h2>
                            <small>por Hyago Bandeira ? publicado em 16 nov 2021 - 17:36</small>
                        </div>
                        <br>
                        <p>O gato vomitando n�o � uma situa��o muito incomum. Apesar de muitas vezes estar relacionado � elimina��o bolas de pelo, � importante ficar atento � frequ�ncia e aspecto dos v�mitos de gato, j� que � um sintoma comum a alguns problemas de sa�de. Se voc� tem um gato vomitando amarelo, espuma branca ou ra��o, � prov�vel que ele esteja com algum desequil�brio no organismo que precisa ser investigado. Se o v�mito incluir sangue ou fezes, o atendimento precisa ser imediato. Doen�as como linfoma, insufici�ncia renal e diabetes s�o algumas das complica��es de sa�de que podem ser apontadas com o v�mito de gato. O Patas da Casa preparou um guia com tudo que voc� precisa saber sobre o gato vomitando!</p>						
                        <h2><b>?Meu gato est� vomitando?: observar aspecto do v�mito � fundamental</b></h2>
                        <p>Para identificar o que o v�mito de gato significa � necess�rio olhar de perto o aspecto do conte�do que saiu pela boca do pet. Se for uma elimina��o de bola de pelos, n�o ser� dif�cil identificar os pelos emaranhados junto com um l�quido amarelo. Mas outros aspectos e colora��es podem  estar associadas a uma causa diferente. Al�m disso, � importante prestar aten��o no momento em que o gato vomita, para saber se o v�mito est� ocorrendo ap�s uma refei��o ou ter tomado algum rem�dio, por exemplo. As caracter�sticas mais comuns do v�mito de gato s�o:
                        </p>
                        <ul>
                            <li><b>V�mito amarelo:</b> geralmente o gato vomitando amarelo indica que o est�mago do animal est� vazio e a �nica subst�ncia que restou para ser expelida � o l�quido biliar. Problemas de gastrite tamb�m podem estar associados ao v�mito de gato amarelo, que costuma ocorrer ap�s epis�dios frequentes de v�mitos de cor marrom.
                            </li>
                            <li><b>Espuma branca:</b> o gato vomitando espuma branca pode indicar alguma irrita��o no sistema digestivo. A frequ�ncia dos v�mitos desse tipo deve ser observada pelo tutor. Caso esteja ocorrendo de forma recorrente, o ideal � procurar a ajuda de um profissional para verificar o caso do seu pet, j� que existem v�rias possibilidades associadas com esse tipo de v�mito de gato.
                            </li>
                            <li><b>V�mito marrom:</b> em casos graves, a colora��o marrom pode indicar parasitas, linfomas alimentares, gastrite e complica��es no sistema gastrointestinal. Entretanto, esse tipo de v�mito tamb�m pode estar associado a algo menos grave, como os casos de gato vomitando ra��o. Nesse caso, � poss�vel identificar os gr�os que foram mal digeridos. 
                            </li>
                            <li><b>V�mito vermelho:</b> a cor vermelha est� associada a problemas de coagula��o, tumores, lombrigas, t�nias e outras quest�es. O gato vomitando sangue precisa ser examinado por um m�dico veterin�rio com urg�ncia, pois pode se tratar de um caso mais grave. 
                            </li>
                            <li><b>V�mito com fezes:</b> esse � um dos quadros que mais indica a necessidade de urg�ncia no atendimento veterin�rio. O v�mito de gato com fezes pode ser causado por algum tipo de obstru��o no est�mago.
                            </li>
                        </ul>	
                        <h2><b>Gato vomitando: o que pode ser?</b></h2>
                        <p>Por mais que o aspecto do v�mito indique qual a gravidade do problema, existem v�rias doen�as que podem ser associada a mesma caracter�stica do v�mito de gato. O gato vomitando ra��o, por exemplo, na maioria das vezes n�o apresenta grandes amea�as � sa�de animal. Entretanto, a regurgita��o tamb�m pode indicar m� forma��o do canal esof�gico, alergia a ra��o ou a ingest�o de algum objeto estranho. As doen�as e condi��es mais comuns associadas ao v�mito de gato s�o:
                        </p>
                        <ul>

                            <li>insufici�ncia renal</li>
                            <li>envenenamento</li>
                            <li>pancreatite</li>
                            <li>diabetes</li>
                            <li>lipidose hep�tica felina</li>
                            <li>doen�a inflamat�ria intestinal felina</li>
                            <li>alergia alimentar</li>
                            <li>tumores</li>

                        </ul>
                        <h2><b>Gato vomitando: o que fazer?</b></h2>
                        <p>� necess�rio que os tutores mantenham a calma quando o gato vomita. Depois de analisar o aspecto do v�mito, � importante observar o comportamento do gato depois de passar mal. � normal e esperado que o felino fique mais quietinho e demonstrando cansa�o ap�s o ocorrido. Mesmo assim, o mais indicado � tirar a �gua e a ra��o do pet para que ele n�o volte a vomitar. A ingest�o de �gua ou comida deve ser feita aos poucos para evitar isso. O felino tamb�m n�o pode ficar desidratado, at� porque o v�mito faz com que ele perca certos nutrientes e alimentos.
                        </p>
                        <p>Se o gato n�o apresentar nenhuma mudan�a de comportamento, pode ser que tenha sido apenas um v�mito isolado. De qualquer forma, manter o check-up do seu gatinho sempre em dia � a melhor forma de prevenir doen�as e fazer diagn�sticos precoces. 
                        </p>
                        <h2><b>Como lidar com o gato vomitando bolas de pelo?</b></h2>
                        <p>Os gatos s�o extremamente higi�nicos. Eles mesmos fazem a pr�pria limpeza com a l�ngua, o que pode resultar na elimina��o de bolas de pelo. Tamb�m chamada tricobezoar, a bola de pelo vai se formando no est�mago conforme a l�ngua �spera do felino remove a poeira e pelos soltos. No caso do gato de pelo longo, � comum que a elimina��o via oral ocorra pelo menos uma vez por semana, principalmente na primavera e no outono. O �nico problema � quando essas bolas n�o conseguem ser eliminadas e acabam ficando presas no intestino do animal, podendo causar dor abdominal, diarreia ou fezes ressecadas, falta de apetite, apatia e v�mitos. A melhor forma de evitar as bolas de pelo � escovando o bichano frequentemente para remover pelos mortos. A alimenta��o do gato tamb�m pode ajudar: uma ra��o rica em fibras ajuda a facilitar o tr�nsito dos pelos no sistema digestivo do pet. 
                        </p>
                        <h2><b>V�mito de gato frequente: tratamento depende da causa do problema</b></h2>
                        <p>	Se o felino est� vomitando frequentemente � necess�rio que o tutor busque um profissional. Isso � essencial para descobrir a origem do problema e fazer o tratamento adequado. As solu��es caseiras muitas vezes acabam atrasando a melhora. Nos casos graves, antibi�ticos e outros medicamentos podem ser indicados, dependendo da causa. O diagn�stico preciso s� poder� ser feito pelo m�dico veterin�rio. De modo geral, evitar comidas gordurosas e a�ucaradas na dieta do felino � algo que pode ser adotado para evitar o caso de gato vomitando. Se al�m do v�mito o felino apresenta outros sintomas, o tutor deve se preocupar um pouco mais. Diarreia, incha�o, febre, sinais de depress�o felina, gengivas p�lidas ou amareladas s�o alguns dos sinais que devem deixar o tutor alerta para quadros mais graves.
                        </p>
                        <p><b>Texto Retirado do Site:</b><br>
                            <a href="https://www.patasdacasa.com.br/noticia/gato-vomitando-saiba-as-causas-como-identificar-problemas-de-saude-relacionados-e-o-que-fazer_a3921/1">https://www.patasdacasa.com.br/noticia/gato-vomitando-saiba-as-causas-como-identificar-problemas-de-saude-relacionados-e-o-que-fazer_a3921/1</a>
                        </p>	
                    </div>

                    <div style="background:white; border:1px black solid; border-radius:10px; width:720px; height:202px; margin-bottom:50px;">
                        <div class="row">
                            <div class="col-4">
                                <div class="imgAutor" alt="..." style="width:200px; border-radius:10px; height:200px; background:url(../img/cuidados/autores/Autor.jpg) center no-repeat; background-size:cover; cursor:pointer;">
                                    <span class="badge bg-success rounded-pill">Autor</span>
                                </div>
                            </div>
                            <div class="col-8 my-1">
                                <h5>Hyago Bandeira</h5>
                                <p>Rep�rter do Patas desde o final de 2020 e jornalista em forma��o pela UFRJ. Me apaixonei ainda mais pelo universo dos cachorros e gatos a partir do meu trabalho no site. Apesar de n�o ser um pai de pet atualmente, sinto imensa gratid�o por ser um colaborador dessa rede de apoio para os tutores.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%} else if (numero_conteudo == 9) {%>
        <div class="container-xl">
            <div class="row">
                <div class="col-8">

                    <div style="width:90%;height:auto; background:white; border:1px black solid; padding:25px; margin-top:50px;margin-bottom:50px;">
                        <div style="width:80%;">
                            <small>CUIDADOS</small>
                            <h2><b>Hamster:5 cuidados b�sicos para manter seu pet saud�vel</b></h2>
                            <small>por Ingrid Marques ? publicado em 9 de ago de 2019</small>
                        </div>
                        <br>
                        <p>Hamsters exigem menos cuidados, se comparados aos outros animais dom�sticos. No entanto, isso n�o quer dizer que eles n�o necessitam de aten��o: os h�bitos desses bichanos s�o bem diferentes em rela��o aos gatos e cachorros, que, se n�o forem respeitados, podem faz�-lo correr risco de vida.
                        </p>
                        <p>Se voc� considera investir em um hamster, confira cuidados e dicas para que eles tenham uma vida saud�vel e feliz! 
                        </p>
                        <h2><b>D� alimenta��o adequada</b></h2>
                        <p>Um hamster feliz � um hamster bem alimentado! Eles s�o bichinhos on�voros, o que significa que podem comer praticamente tudo. O mais indicado � comprar ra��es espec�ficas para cada tipo de roedor. Como s�o apaixonados por petiscos, complemente a alimenta��o com frutas, legumes, gr�os e sementes. 
                        </p>
                        <p>N�o esque�a de fatiar em partes pequenas para que o hamster n�o engula tudo e sofra com m� digest�o Outra dica � n�o deixar comida velha na gaiola, j� que ele pode passar mal. Sempre disponibilize �gua limpa e fresca. 
                        </p>
                        <h2><b>Higienize a gaiola para Hamster</b></h2>
                        <p>A gaiola deve ser higienizada de uma a duas vezes por semana, j� que a higiene do bichano se baseia na limpeza do seu habitat natural. Lave com sab�o neutro e �gua e deixe secar. Troque o forro da gaiola e utilize serragem para deixar mais confort�vel. 
                        </p>
                        <p>Roedores s�o t�o higi�nicos quanto os gatos: eles passam boa parte do dia se lambendo. Essa atitude faz com que eles sejam bem limpinhos, mas caso queira limp�-lo ainda mais, n�o � indicado dar banho com �gua, isso pode fazer com que o hamster corra risco de vida. Procure alternativas, como banho � seco.  
                        </p>
                        <h2><b>Forne�a espa�o na gaiola</b></h2>
                        <p>Apesar de serem pequenos, os hamsters necessitam de espa�o em seu habitat natural, por isso, na hora de comprar a gaiola, n�o leve em considera��o somente o pre�o, lembre-se que os hamsters gostam de correr e brincar, e um espa�o pequeno pode deix�-lo entediado e triste. 

                        <h2><b>Respeite os hor�rios dele</b></h2>
                        <p>Roedores s�o animais noturnos e mais ativos ap�s as seis horas da tarde, portanto, ele pode ficar estressado caso queira acord�-lo de manh�. Respeite os hor�rios fisiol�gicos do animal e, assim, ele ser� mais feliz. 

                        <h2><b>Invista em brinquedos para hamster</b></h2>
                        <p>Roedores s�o agitados e espertos.  Quando n�o est�o descansando, adoram brincar e necessitam movimentar-se para n�o sentirem t�dio. Por isso, a gaiola do pet deve ser equipada com brinquedos, como roda girat�ria, escadas e tubos que permitam que ele corra para todos os lados.
                        </p>
                        <p>A bola de exerc�cios � uma op��o perfeita para que o hamster brinque fora da gaiola sem correr perigos externos, como entrar embaixo de um eletrodom�stico, roer fios el�tricos ou entrar em ralos e canos e nunca mais ser encontrado. Para que o bichano n�o fique estressado, a brincadeira na bola n�o deve passar de vinte minutos. 
                        </p>
                        <p>Hamsters s�o animais d�ceis, brincalh�es, amig�veis e excelentes bichos de estima��o para crian�as e adultos. Dar brinquedos, oferecer petiscos e deixar a gaiola em um quarto separado do restante da casa durante o dia, para que ele durma bem, s�o alguns cuidados b�sicos para que ele seja um animal feliz e saud�vel. 
                        </p>
                        <p>Buscando itens para seu hamster? Clique no banner abaixo e confira os melhores produtos para roedores na loja online da Tudo de Bicho! 
                        </p>


                        <p><b>Texto Retirado do Site:</b><br>
                            <a href="https://blog.tudodebicho.com.br/roedor/hamster-5-cuidados-basicos-para-manter-seu-pet-saudavel/">https://blog.tudodebicho.com.br/roedor/hamster-5-cuidados-basicos-para-manter-seu-pet-saudavel/</a>
                        </p>	
                    </div>
                    <div style="background:white; border:1px black solid; border-radius:10px; width:720px; height:202px; margin-bottom:50px;">
                        <div class="row">
                            <div class="col-4">
                                <div class="imgAutor" alt="..." style="width:200px; border-radius:10px; height:200px; background:url(../img/cuidados/autores/ingrid.jpeg) center no-repeat; background-size:cover; cursor:pointer;">
                                    <span class="badge bg-success rounded-pill">Autor</span>
                                </div>
                            </div>
                            <div class="col-8 my-1">
                                <h5>Ingrid Marques</h5>
                                <p>Jornalista, falante, que adora cultura, comida, filmes e signos! Temperamental, � apaixonada por animais e n�o resiste a um ?catiorineo?. Ama levar informa��o para todas as pessoas, acredita que conte�do s�rio e de qualidade melhora a vida de todos, inclusive dos bichinhos!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%} else if (numero_conteudo == 10) {%>
        <div class="container-xl">
            <div class="row">
                <div class="col-8">

                    <div style="width:90%;height:auto; background:white; border:1px black solid; padding:25px; margin-top:50px;margin-bottom:50px;">
                        <div style="width:80%;">
                            <small>Cuidados</small>
                            <h2><b>Aves dom�sticas ? Cuidados especiais para o bem-estar</b></h2>
                            <small>por PETZ ? publicado em 27 de jun de 2017</small>
                        </div>
                        <br>
                        <p>N�o h� d�vidas de que os c�es e os gatos s�o os animais dom�sticos mais populares, no entanto, as aves dom�sticas t�m ganhado mais espa�o nas casas dos amantes de animais ao longo dos �ltimos anos.
                        </p>
                        <p>Quer fazer parte dos tutores das aves dom�sticas? Aqui v�o algumas dicas que te ajudar�o a dominar o mundo dos p�ssaros e ser um �timo tutor para esses pets.
                        </p>
                        <h2><b>Gaiola para aves dom�sticas</b></h2>

                        <p>A gaiola � essencial para a felicidade de uma ave (lembre-se que essa ser� a casa do seu pet). Para escolher o melhor habitat, � necess�rio mais do que gosto pessoal, e voc� deve estar atento ao tamanho do seu p�ssaro, esp�cie e necessidades particulares. Lembre-se: cada p�ssaro possui necessidades �nicas.
                        </p>
                        <p>Como regra geral, voc� deve ofertar a maior gaiola que voc� puder adquirir. Como o p�ssaro vai passar a maior parte da vida dentro dela, � importante que haja espa�o para que ele se movimente e se exercite o mais livremente poss�vel.
                        </p>
                        <p>Esp�cies como can�rios gostam de espa�o para voar, enquanto as cacatuas gostam de barras para escalar. O essencial � que o pet possa abrir as asas completamente e erguer a cabe�a sem tocar a gaiola.
                        </p>
                        <h2><b>Onde colocar a gaiola?</b></h2>
                        <p>A gaiola deve ficar em um lugar da casa que seja, de maneira geral, ?est�vel?. Ou seja, que seja livre de mudan�as de temperatura e umidade, al�m de ser livre de barulhos altos e odores fortes. Evite ao m�ximo locais que exponham sua ave a situa��es estressantes. Um bom ambiente � aquele onde a ave possa curtir a fam�lia e as atividades dos humanos.
                        </p>
                        <p>Evite deixar a ave na cozinha, pois algumas panelas, como a teflon, liberam gazes que podem ser t�xicos para as aves.
                        </p>
                        <h2><b>Itens de primeira ordem para aves dom�sticas</b></h2>
                        <p>Providencie itens b�sicos e apropriados para o tamanho e esp�cie do passarinho: bebedor, comedouro e forros para gaiola, por exemplo. Certifique-se de que a comida e a �gua estejam sempre acess�veis para o seu pet. Tenha tamb�m kit de primeiro-socorros, produtos para limpeza da gaiola, e outros itens que auxiliam no cuidado do seu passarinho.
                        </p>
                        <p>Oferte aos seus p�ssaros brinquedos que sejam apropriados a sua esp�cie. Aves gostam de itens que lhe mantenham ocupadas e estimuladas, como escadas, cordas, bolas de cores e tamanhos variados e balan�os, entre outros.
                        </p>
                        <p>Providencie uma variedade grande de brinquedos e fa�a uma esp�cie de ?rod�zio? entre eles, permitindo que seu p�ssaro n�o fique entediado e tenha uma vida mais feliz. No entanto, n�o se esque�a de que brinquedos n�o substituem uma rela��o pr�xima entre voc� e o pet, e passar um tempo com sua ave � a melhor maneira de construir esse v�nculo.
                        </p>
                        <p>D� tempo e espa�o para sua ave dom�stica: quando ela chegar ao novo lar, n�o fique a rodeando demais. Deixe que ela se adapte ao local e ao novo estilo de vida. Controlar o barulho nos locais mais pr�ximos do p�ssaro ajuda a reduzir o estresse e d� a ideia de um ambiente calmo.
                        </p>
                        <p>Aos poucos, passe a envolver seu pet na rotina di�ria e o introduza a vida da fam�lia. Um bom passo inicial � ofertar alguma atividade calma para sua ave e, aos poucos, voc� pode introduzir sons que sejam agrad�veis no local em que o pet mais passa tempo. Com o tempo a ave se acostumar� ao seu novo lar.
                        </p>
                        <p><b>Aves dom�sticas</b> s�o encantadoras e �timas companhias! Voc� pode encontrar todos os itens necess�rios para seu p�ssaro na unidade Petz mais pr�xima a voc�!
                        </p>
                        <p><b>Texto Retirado do Site:</b><br>
                            <a href="https://www.petz.com.br/blog/bem-estar/safari-bem-estar/aves-domesticas/">https://www.petz.com.br/blog/bem-estar/safari-bem-estar/aves-domesticas/</a>
                        </p>	
                    </div>

                    <div style="background:white; border:1px black solid; border-radius:10px; width:720px; height:202px; margin-bottom:50px;">
                        <div class="row">
                            <div class="col-4">
                                <div class="imgAutor" alt="..." style="width:200px; border-radius:10px; height:200px; background:url(../img/cuidados/autores/page_1.jpg) center no-repeat; background-size:cover; cursor:pointer;">
                                    <span class="badge bg-success rounded-pill">Autor</span>
                                </div>
                            </div>
                            <div class="col-8 my-1">
                                <h5>Petz</h5>
                                <p>A Petz, anteriormente chamada de Pet Center Marginal, � uma rede brasileira de pet shops. � a maior rede de pet shop do Brasil e � especializada em servi�os e venda de produtos para animais de estima��o e animais dom�stic�veis ex�ticos.</p>									</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>	
        <%} else if (numero_conteudo == 11) {%>
        <div class="container-xl">
            <div class="row">
                <div class="col-8">

                    <div style="width:90%;height:auto; background:white; border:1px black solid; padding:25px; margin-top:50px;margin-bottom:50px;">
                        <div style="width:80%;">
                            <small>Cuidados</small>
                            <h2><b>Cuidados que todo pai ou m�e de coelho deve ter com o pet</b></h2>
                            <small>por Gabriel Arruda ? publicado em 13 de abr de 2020</small>
                        </div>
                        <br>
                        <p>Antes de adotar um pet, � preciso analisar diversos fatores, desde quest�es financeiras at� os cuidados mais espec�ficos que cada um necessita em seu dia a dia. E para quem est� querendo fugir do convencional, ou seja, de c�es e gatos, e pretende adotar um coelho, deve-se estar atento especialmente sobre a rotina da esp�cie.
                        </p>
                        <h2><b>Cuidados com o coelho: alimenta��o</b></h2>
                        <p>Bem, a primeira coisa que os pais devem ter ci�ncia sobre a alimenta��o de um coelho � que ela n�o deve ser � base de ra��o, melhor dizendo, esses orelhudos n�o podem se alimentar apenas com ra��es industrializadas. Mesmo com altos n�veis nutricionais de algumas, esses peludinhos precisam de um sustento um pouco mais ?natural?.
                        </p>
                        <p>� preciso ter em mente que as ra��es devem servir apenas como um acr�scimo ao inv�s de ser o pilar principal na alimenta��o de um coelho, que necessita consumir muita fibra para que tenha uma boa vida.
                        </p>
                        <p>Oferecer uma dieta � base de fibras vai manter o trato gastrointestinal do pet saud�vel, por conseguinte prevenindo algumas doen�as como a diarreia, por exemplo, que � bem recorrente nesses peludos. Al�m da diarreia, muitos coelhos podem apresentar timpanismo, que � um problema estomacal causado pelo excesso de ra��o. (Confira nossa outra mat�ria sobre os principais cuidados na alimenta��o dos coelhos)
                        </p>
                        <p>Se engana, tamb�m, quem acha que eles s� devem viver de legumes, como cenoura, ou verduras. Pois �, os coelhos s�o mais complexos do que a maioria de n�s imagina quando o assunto � alimenta��o! 
                        </p>
                        <h2><b>Cuidados com o coelho: ambiente</b></h2>
                        <p>� bem comum ver pessoas mantendo coelhos em gaiolas 24 horas por dia, mas a real � que esses animais precisam de uma boa dose de liberdade em sua rotina. O coelho � um animal bastante en�rgico e necessita de um ambiente amplo para sobreviver. Al�m de mant�-lo saud�vel, caminhadas di�rias far�o com que o intestino do peludo funcione perfeitamente, livrando-o de poss�veis complica��es referentes ao ?sedentarismo for�ado?.
                        </p>
                        <p>Al�m disso, os coelhos s�o animais muito sens�veis e podem at� mesmo falecer caso se assuste com algo. Por isso, � necess�rio analisar o ambiente que ser�o expostos, principalmente se houver algum outro pet dentro de casa.
                        </p>
                        <h2><b>Cuidados com o coelho: higiene</b></h2>
                        <p>Preservar uma boa higiene no ambiente onde o peludo vive � fundamental para a sa�de dele. Alguns cuidados devem ser feitos regularmente, como a limpeza da gaiola e dos lugares onde ele fica, assim como o bebedouro e o comedouro.
                        </p>
                        <p>Sobre banhos, dificilmente um coelho precisar� tomar um, pois, assim como os gatos, eles cuidam da pr�pria limpeza. Portanto, quem tem um orelhudo em casa raramente ir� se preocupar em lav�-lo.
                        </p>
                        <h2><b>Atividades f�sicas</b></h2>
                        <p>Sim, os coelhos precisam de uma rotina regular de exerc�cios, pois s�o mam�feros muito ativos. Al�m de deix�-los livres durante algumas partes do dia, isto �, fora da gaiola, � preciso realizar alguns est�mulos, entre eles as brincadeiras. Al�m disso, lembre-se que esses s�o animais muito inteligentes e podem assimilar alguns ensinamentos, basta dedicar um pouco de tempo e paci�ncia.
                        </p>
                        <h2><b>Como peg�-lo corretamente</b></h2>
                        <p>Para quem n�o sabe, os coelhos n�o curtem muito a ideia de serem carregados no colo, pois se sentem desprotegidos e inseguros. Caso precise segurar o seu pet, passe a m�o pelo peito e pelas patas traseiras em vez de agarr�-lo, isso far� com que ele entenda que isso n�o � uma amea�a. Lembre-se de que esses orelhudos s�o presas na vida selvagem e instintivamente sentem medo de movimentos r�pidos.
                        </p>
                        <p>Vale destacar que pegar coelhos pela orelha � extremamente errado e pode trazer problemas grav�ssimos ao pet, al�m de ser agressivo e doloroso. Peg�-lo pelas pernas, rabo ou pesco�o tamb�m n�o � recomendado, pois s�o lugares sens�veis e o pet pode criar uma associa��o negativa entre intera��o humana e dor.
                        </p>
                        <p><b>Texto Retirado do Site:</b><br>
                            <a href="https://www.petlove.com.br/dicas/cuidados-especificos-coelhos">https://www.petlove.com.br/dicas/cuidados-especificos-coelhos</a>
                        </p>	
                    </div>

                    <div style="background:white; border:1px black solid; border-radius:10px; width:720px; height:202px; margin-bottom:50px;">
                        <div class="row">
                            <div class="col-4">
                                <div class="imgAutor" alt="..." style="width:200px; border-radius:10px; height:200px; background:url(../img/cuidados/autores/GabrielArruda.jpeg) center no-repeat; background-size:cover; cursor:pointer;">
                                    <span class="badge bg-success rounded-pill">Autor</span>
                                </div>
                            </div>
                            <div class="col-8 my-1">
                                <h5>Gabriel Arruda</h5>
                                <p>� Jornalista, apaixonado por pets e esportes. Est� sempre em busca de novos desafios, justamente pela curiosidade que o toma conta. Pai de um Beagle chamado Johnny, mais conhecido como "o Destruidor".</p>									
                            </div>
                        </div>
                    </div>
                </div>	
            </div>
        </div>
        <%} else if (numero_conteudo == 12) {%>
        <div class="container-xl">
            <div class="row">
                <div class="col-8">

                    <div style="width:90%;height:auto; background:white; border:1px black solid; padding:25px; margin-top:50px;margin-bottom:50px;">
                        <div style="width:80%;">
                            <small>Cuidados</small>
                            <h2><b>Animais de estima��o pequenos: como escolher o pet ideal?</b></h2>
                            <small>por Petz ? publicado em 16 Abr de 2018</small>
                        </div>
                        <br>
                        <p>Escolher um pet n�o � f�cil, principalmente para pessoas que moram em apartamentos ou pequenas casa e n�o podem oferecer espa�o suficiente aos novos membros da fam�lia. Nesses casos, � necess�rio analisar quais animais de estima��o pequenos combinam mais com o cotidiano de cada um.
                        </p>
                        <p>Muitos tutores deixam de ter um bichinho de estima��o, pois acham que morar em locais pouco espa�osos � um empecilho, j� que muitos dos pets precisam de espa�o para brincar ou at� mesmo descansar.
                        </p>
                        <p>Contudo, existem diversas variedades de animaizinhos pequenos que podem ser perfeitos para pessoas com pouco espa�o, dinheiro e tempo!
                        </p>
                        <h2><b>Como escolher o animal de estima��o certo para mim?</b></h2>

                        <p>Muitas pessoas acham que os c�es s�o os �nicos bichinhos de estima��o, por�m outros animais tamb�m podem estar inclu�dos nesse grupo. Por isso, escolher o pet ideal tem a ver n�o s� com ra�as de cachorro, mas sim diversas esp�cies de animais.
                        </p>
                        <p>Sendo asssim, como escolher o animal de estima��o certo? Antes de tudo, � importante pensar nos gastos ? alimenta��o, higiene, consultas veterin�rias e outros ? que cada pet trar� para o novo cotidiano e ent�o analisar se � poss�vel inclu�-lo as outras despesas.
                        </p>
                        <p>Caso o pet escolhido seja um animal ex�tico ou silvestre, � necess�rio obter todos os documentos necess�rios, nos quais permitem a estadia dele em uma propriedade, para que n�o seja considerado um ato ilegal.
                        </p>
                        <p>Alguns tipos de bichinhos n�o s�o permitidos em determinados condom�nios, por isso � importante pesquisar as leis sobre cada moradia antes de decidir qual ser� o animalzinho ideal.
                        </p>
                        <h2><b>Alguns dos melhores animais de estima��o pequenos</b></h2>

                        <p>A indecis�o na hora de decidir um novo amigo de estima��o pode ser grande, por isso n�s separamos alguns animais de estima��o pequenos e diferentes perfeitos para pessoas que buscam praticidade e muito amor.
                        </p>

                        <h2><b>Fur�o</b></h2>
                        <p>Os fur�es s�o pets muito carinhosos, brincalh�es e adoram se sentir livres, mas podem morar em casas pequenas sem nenhum problema!
                        </p>
                        <p>Na maioria das vezes, os fur�es costumam morar em gaiolas, ainda mais porque adoram se esconder. Contudo, para brincar, os pequenos preferem sair da casinha e explorar os diversos locais da casa.
                        </p>
                        <p>Esse bichinho pode ser perfeito para aqueles que n�o possuem muito tempo, j� que n�o exigem do tutor muitas atividades; mas precisam sair de suas gaiolas pelo menos uma vez por dia. Outra grande vantagem � que dificilmente fazem barulhos altos.
                        </p>
                        <p>Assim como os outros pets, os fur�es precisam tomar vacina anualmente, visto que possuem predisposi��o a ter doen�as cr�nicas e custosas.
                        </p>

                        <h2><b>Chinchila</b></h2>
                        <p>Para pessoas mais calmas, que adoram ter dias tranquilos, as chinchilas s�o �timos animais de estima��o. Basicamente, s�o extremamente d�ceis, n�o exigem muito esfor�os para realizar suas atividades f�sicas e podem viver tranquilamente em uma gaiola.
                        </p>
                        <p>Outra vantagem � o sil�ncio que proporcionam para o ambiente, j� que s�o bichinhos extremamente silenciosos, at� quando est�o se divertindo. Mas al�m de serem silenciosos, eles mesmo preferem morar em ambientes mais calmos e sem barulho.
                        </p>
                        <p>Por isso, pessoas que adoram barulho, sons altos e bagun�a, talvez as chinchilas n�o sejam as melhores op��es.
                        </p>
                        <h2><b>Peixe</b></h2>
                        <p>Os peixinhos s�o animais perfeitos, principalmente para pais que querem dar um bichinho de estima��o para seus filhos.
                        </p>
                        <p>Isso porque muitos peixes n�o precisam de um grande espa�o para viver, nem exigem cuidados rigorosos e dif�ceis de serem atendidos. Contudo, existem esp�cies de peixes que exigem uma aten��o e at� mesmo um espa�o maior para poderem viver saud�veis.
                        </p>
                        <p>Para aqueles que n�o possuem muito tempo em sua rotina, os peixes podem ser a melhor op��o, ainda mais porque n�o exigem do propriet�rio nenhum tipo de atividade f�sica.
                        </p>
                        <h2><b>P�ssaro</b></h2>
                        <p>J� os p�ssaros podem ser perfeitos para diversas pessoas, j� que cada esp�cie possui diferentes caracter�sticas, desde as mais interativas at� as mais reservadas. O tamanho dos p�ssaros tamb�m varia, por isso s� depende da pessoa respons�vel pela escolha saber qual o melhor pet para ela.
                        </p>
                        <p>Segundo a veterin�ria Mariana Pestelli, algumas das esp�cies, principalmente aquelas de bico torto, tendem a fazer mais barulho, por isso verifique se no local onde voc� mora � permitido ou n�o ter animais de estima��o que emitem sons altos.
                        </p>
                        <p>Contudo, para quem busca um pet de estima��o divertido, bonito e ainda por cima pr�tico, um p�ssaro pode ser a escolha perfeita!
                        </p>
                        <h2><b>Cachorro</b></h2>
                        <p>Um dos pets mais desejados � o cachorro. Assim como os p�ssaros, cada ra�a de c�es possui uma determinada caracter�stica, por essa raz�o � capaz de agradar a muitas pessoas, sejam elas mais calmas ou agitadas.
                        </p>
                        <p>Para pessoas que moram em apartamentos, as melhores ra�as de c�es s�o: Poodle, Yorkshire, Malt�s, Shih Tzu, Lhasa Apso, Pug, Buldogue Frances e outras. Mas vale lembrar que quando cachorros n�o possuem muito espa�o para se exercitar e brincar, � necess�rio que saiam para passear.
                        </p>
                        <p>Alguns c�es s�o muito ligados aos seus tutores e ficam muito tristes quando passam muito tempo longe deles. Por isso, pessoas que costumam ficar fora de casa o dia todo, o mais indicado � escolher ra�as mais independentes.
                        </p>
                        <h2><b>Gato</b></h2>
                        <p>Assim como os c�es, os gatos s�o animais muito desejados e admirados. Muitas vezes, pessoas que buscam um animal independente, am�vel, pr�tico e tranquilo, acabam escolhendo um gatinho, afinal, eles oferecem tudo isso e muito mais!
                        </p>
                        <p>Os gatos s�o muito calmos e n�o exigem dos tutores grandes esfor�os para praticar exerc�cios. Al�m disso, suas exig�ncias podem ser atendidas de maneira pr�tica e f�cil, j� que apenas precisam de uma caixa de areia, um comedouro, um bebedouro, uma caminha, brinquedinhos e muito amor para poderem viver felizes e satisfeitos.
                        </p>
                        <h2><b>Qual animal de estima��o combina comigo?</b></h2>

                        <p>Al�m desses, � poss�vel encontrar muitos outros animais de estima��o pequenos para morar com quem deseja um amigo.
                        </p>
                        <p>Por isso, se voc� ainda n�o sabe qual animal de estima��o combina com voc�, n�o se preocupe, continue ligado aqui em nosso site e confira outros posts sobre animais de estima��o.			
                        </p>							

                        <p><b>Texto Retirado do Site:</b><br>
                            <a href="https://www.petz.com.br/blog/adocao/animais-de-estimacao-pequenos-como-escolher-o-pet-ideal/">https://www.petz.com.br/blog/adocao/animais-de-estimacao-pequenos-como-escolher-o-pet-ideal/</a>
                        </p>	
                    </div>

                    <div style="background:white; border:1px black solid; border-radius:10px; width:720px; height:202px; margin-bottom:50px;">
                        <div class="row">
                            <div class="col-4">
                                <div class="imgAutor" alt="..." style="width:200px; border-radius:10px; height:200px; background:url(../img/cuidados/autores/page_1.jpg) center no-repeat; background-size:cover; cursor:pointer;">
                                    <span class="badge bg-success rounded-pill">Autor</span>
                                </div>
                            </div>
                            <div class="col-8 my-1">
                                <h5>Petz</h5>
                                <p>A Petz, anteriormente chamada de Pet Center Marginal, � uma rede brasileira de pet shops. � a maior rede de pet shop do Brasil e � especializada em servi�os e venda de produtos para animais de estima��o e animais dom�stic�veis ex�ticos.</p>									
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>	
        <%} else {%>      
        <br>
        <br>
        <br>
        <div class="row justify-content-center align-items-center w-50"  style="margin-left: 25%; position: absolute;">
            <div class="alert alert-danger text-center" role="alert">
                Conte�do n�o encontrado <a href="cuidados.jsp" class="alert-link">voltar para Cuidados</a>
            </div>
        </div>    
        <%}%>
    </body>
</html> 
<script type="text/javascript">
    $(document).ready(function () {
        capturar("1");
    });
</script>
