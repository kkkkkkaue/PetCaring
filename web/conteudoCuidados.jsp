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
                            <small>Alimentação</small>
                            <h2><b>Meu cachorro enjoa da ração ? O que fazer?</b></h2>
                            <small>por Camila Bonatti ? publicado em 27 out 2021 - 12:10</small>
                        </div>
                        <br>
                        <p>O meu cachorro enjoa da ração, o que fazer? Bom, antes de mais nada, é preciso entender melhor os motivos desse enjoo e verificar se, de fato, ele está enjoado.</p>
                        <p>Neste artigo, o Portal do Dog vai te ajudar a entender um pouco mais sobre o assunto. No entanto, é importante deixar claro: todas as dicas e ideias deste texto, são para cães saudáveis.</p>
                        <p>Portanto, é fundamental buscar amparo veterinário acima de qualquer coisa. É só o veterinário que poderá concluir os motivos de um enjoo. Afinal, isso pode estar ligado, também, a indisposição, dores de barriga e outros problemas.</p>
                        <h2><b>Meu cachorro enjoa da ração ? Por que isso acontece?</b></h2>
                        <p>O cachorro enjoa da ração por vários motivos. Afinal, tudo está relacionado ao dia a dia dele e também a questões de saúde física. Se o cão estiver com qualquer problema ou indigestão, ele poderá recusar a ração e você poderá achar que ele está enjoado. Quando na verdade, está com dor.</p>
                        <p>Portanto, a primeira dica deste artigo, é: procure um veterinário para se certificar de que seu cão está realmente saudável. Os sinais de algum problema podem surgir principalmente na alimentação. Observação é importante.</p>
                        <p>No entanto, para cães saudáveis e que mesmo assim estão enjoados da comia, algumas dicas podem te ajudar a reverter essa situação. Listamos algumas ideias abaixo:</p>
                        <ul>
                            <li>Excesso de comida.</li>
                            <li>Comida perto do banheiro.</li>
                            <li>Excesso de petiscos e guloseimas.</li>
                            <li>Trocas constantes de ração.</li>
                        </ul>
                        <h2><b>Excesso de comida</b></h2>
                        <p>Todos os excessos são perigosos. Tanto para nós, humanos, como para os cachorros.</p>
                        <p>Portanto, aqui vai uma primeira dica importantíssima para lidar melhor com esse potencial enjoo pela ração: excesso de comida pode ser o vilão.</p>
                        <p>Sim, deixar o cachorro comer a vontade ou várias vezes por dia, pode torná-lo compulsivo por comida e, com o tempo, ele poderá enjoar de comer a mesma coisa sempre.</p>
                        <p>A gente sabe que pode ser fofo e o coração fica quentinho quando o cachorro está feliz comendo. Porém, não podemos agir de maneira emocional quanto a isso. Deixá-los comer a vontade não é saudável por vários motivos, como potenciais doenças, obesidade e, claro, enjoos.</p>
                        <p>O cachorro enjoa da ração muito porque ele está se sentido empanturrado dela. Ou seja, ele já não aguenta mais sentir o mesmo cheiro e a mesma textura o tempo inteiro. Infelizmente, isso pode trazer bastante malefícios para o dog. Tanto físicos, quanto mentais e de estímulos.</p>
                        <p>Observe: será que seu cão não está enjoado porque está comendo a todo momento?</p>
                        <h2><b>Cachorro enjoa da ração ? Comida perto do banheiro</b></h2>
                        <p>Outro fator que pode estar fazendo o seu melhor amigo enjoar da ração, é a posição em que seus potes de ração estão.</p>
                        <p>Preferencialmente, eles precisam ficar em locais confortáveis, de fácil acesso e instintivamente seguros. Ou seja, o cão não pode ter ?desafios? para poder comer. Caso contrário, ele será inibido e poderá enjoar.</p>	
                        <p>Portanto, pode ser que o pote de ração esteja muito perto do banheiro do doguinho. E os cheiros acabam se entrelaçando, fazendo com que o cachorro não queira comer a ração porque ela não está com cheiro agradável.</p>
                        <p>Pode não parecer, mas os cães são limpos e muito higiênicos quanto a isso. Por mais que possa levar um tempo até que eles aprendam onde é o banheiro dentro de casa, ainda assim, eles sempre vão preferir comer em ambientes limpos e seguros.</p>
                        <p>O cachorro enjoa da ração, do petisco, dos brinquedos ou do que for, caso eles estejam em lugares desagradáveis para o pet. Pense na reposição das coisas.</p>
                        <h2><b>Cachorro enjoa da ração ? Excesso de petiscos e guloseimas</b></h2>

                        <p>Todo excesso pode gerar um desconforto por algum motivo: seja físico, mental ou digestivo, no caso de comida.</p>

                        <p>Por isso, é muito importante que você não acostume mal o seu melhor amigo, com petiscos e guloseimas extras só por ter o ?coração mole?.</p>

                        <p>Sim, a gente gosta de agradar o nosso pet. Porém, para o bem dele, é preciso que haja um bom equilíbrio nessas coisas, sem precisar necessariamente agradá-lo a todo momento.</p>

                        <p>Quando você começa a dar petiscos o tempo inteiro para o seu dog, isso começa a virar rotina. E o cachorro, esperto do jeito que é, vai preferir, obviamente, o petisco.</p>

                        <p>Logo, quando o pote de ração é colocado no chão, ele poderá facilmente recusar. A reação do tutor, instantaneamente, é achar que ele enjoou da ração.</p>

                        <p>Na prática, ele enjoou mesmo. Afinal, tem uma comidinha muito mais ?divertida? que ele ganha a todo momento. Por que comer a ração, que é mais entediante e ?mais do mesmo?, não é mesmo?</p>

                        <p>Pense nisso na hora de identificar os potenciais motivos que levam o cachorro enjoar da ração.</p>

                        <h2><b>Cachorro enjoa da ração ? Trocas constantes de ração</b></h2>
                        <p>E ainda, um cachorro enjoa da ração quando há uma troca constante do tipo de alimento.</p>

                        <p>Ou seja, você condiciona o seu cãozinho a enjoar de alguma coisa, porque ele sabe que, daqui a pouco, vai ganhar algo melhor. É como se fosse um reforço positivo para estimular o cão a enjoar e esperar uma ração nova.</p>

                        <p>Por exemplo, se o cãozinho não está mais gostando de uma ração por qualquer motivo e você trocá-la e ele comer, ele vai perceber esse padrão.</p>

                        <p>Com o tempo, ele vai enjoar de novo, e de novo, e de novo. Pois ele sabe que o tutor sempre virá com uma comida melhor. É um ciclo vicioso. Por isso, o mais importante de tudo, é tentar identificar os padrões e, assim, não acostumar mal o seu cãozinho.</p>

                        <p>A seguir, veja algumas boas ideias do que fazer quando o cachorro enjoa da ração.</p>

                        <h2><b>O que fazer quando meu cachorro enjoa da ração</b></h2>
                        <p>Até aqui, já entendemos que o cachorro enjoa da ração por inúmeros motivos diferentes.</p>

                        <p>Muitas vezes, esses motivos estão totalmente relacionados ao dia a dia e comportamentos estimulados pelo tutor. Por isso, para te ajudar, separamos uma lista com algumas dicas que poderão fazer com que seu melhor amigo não enjoe assim tão facilmente da ração e passe a encarar a alimentação de uma forma diferente.</p>

                        <p>Veja abaixo:</p>

                        <ul>
                            <li>Crie uma rotina de alimentação.</li>
                            <li>Não deixe o cachorro comer a vontade.</li>
                            <li>Petiscos só em determinados momentos.</li>
                            <li>Não troque a ração imediatamente.</li>
                        </ul>
                        <p>A seguir, entenda mais sobre cada uma dessas situações para colocar em prática ainda hoje com seu dog.</p>

                        <h2><b>Crie uma rotina de alimentação</b></h2>
                        <p>Cães gostam de rotina. Não adianta fugir disso: quanto mais você conseguir estimular seu cão a seguir uma rotina saudável, melhores serão os comportamentos dele do ponto de vista físico e mental.</p>

                        <p>Cães gostam de saber ?o que vai acontecer depois?. Quanto menos aleatória for a rotina dele, melhor para todos.</p>

                        <p>E na alimentação, isso não é diferente. Criar uma rotina de alimentação adequada, ajuda o seu melhor amigo a entender quando é hora de comer.</p>

                        <p>Logo, ele não vai criar manias e rejeitar a ração. Muito pelo contrário: ele vai comer, porque estará com fome, visto que é o horário de comer.</p>

                        <h2><b>Não deixe o cachorro comer a vontade</h2></b>
                        <p>Deixar o cachorro comer a vontade pode ser um erro grave na ?gestão? da alimentação do dog. Afinal, quando você deixa ele comer a vontade, pode ser que ele enjoe da ração. Afinal, ele vai comer sem parar e a todo momento.</p>

                        <p>No entanto, quando você cria uma rotina adequada para o cão comer de duas a três vezes por dia (dependendo da fase de vida do cachorro), ele começa a dar mais ?valor? para a comida.</p>

                        <p>Instintivamente, ele sabe que aquele é o momento de comer e que depois não terá mais comida. Então, ele acaba criando uma rotina mental e saudável de alimentação, o que faz com que ele crie um padrão e não enjoe da ração.</p>

                        <h2><b>Petiscos só em determinados momentos</b></h2>
                        <p>Os petiscos muitas vezes são os vilões de uma alimentação adequada. Um cachorro enjoa da ração quando ele sente que pode ganhar um petisco a qualquer momento. Afinal, ele sempre vai preferir o petisco, que é feito justamente para agradar o paladar do cachorro.</p>

                        <p>Por isso, estipule um momento específico para oferecer petiscos ao dog. Preferencialmente, dê petiscos somente em dias de treinamento de reforço positivo ou fins de semana.</p>

                        <p>Assim, além de agradar o dog, ele vai se condicionar aos padrões positivos de comportamento e você une o útil ao agradável.</p>

                        <h2><b>Não troque a ração imediatamente</b></h2>
                        <p>E por fim, se o seu melhor amigo está enjoado da ração, não troque-a imediatamente. Muito pelo contrário, na verdade. O ideal é que você mantenha a ração por mais um tempo, até que ele possa, de fato, se acostumar com ela.</p>

                        <p>Treine no dia a dia situações de rotina para que o cachorro saiba a hora de comer. Ofereça quantidades adequadas com base na raça e saúde e boa sorte no processo.</p>

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
                                <p>Psicóloga (CRP12/17354), apaixonada pelo universo pet. Especialista em marketing de conteúdo e redação web. É redatora há mais de três anos e atua como ghostwriter, copywriter e psicoeducadora. Atualmente está fazendo a sua formação em Letras/Português.</p>
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
                            <small>Convivência</small>
                            <h2><b>Como entreter o cachorro dentro de casa ? 10 ideias legais!</b></h2>
                            <small>por Camila Bonatti ? publicado em 24 out 2021 - 10:10</small>
                        </div>
                        <br>
                        <p>Existem muitas formas de como entreter o cachorro dentro de casa. Afinal, o nosso melhor amigo geralmente pode se divertir com ?pouco?, desde que esse ?pouco? seja agradável e seguro.
                        </p>
                        <p>Ou seja, tudo que você precisa fazer é experimentar vários brinquedos diferentes e encontrar um padrão que o cãozinho goste.
                        </p>
                        <p>
                            Neste artigo, o Portal do Dog vai te dar algumas boas ideias de como entreter o cachorro dentro de casa, com ou sem você por perto. Portanto, continue lendo e saiba mais sobre o tema.
                        </p>
                        <p>Quem sabe, a partir de agora o seu cãozinho será ainda mais feliz dentro de casa, não é mesmo?
                        </p>
                        <h2><b>Como entreter o cachorro dentro de casa ? 10 ideias legais!
                            </b></h2>
                        <p>Muito embora seja fácil, ainda assim, é um desafio entreter o cachorro dentro de casa por muito tempo.
                        </p>
                        <p>Principalmente cães que têm algum tipo de ansiedade ou estresse. Nesses casos, além de fundamentais, as brincadeiras ajudam a aliviar um pouco dessa pressão. Só que as brincadeiras precisam ser certeiras.
                        </p>
                        <p>De nada adianta deixar o seu cãozinho em casa por muitas horas com vários brinquedos/brincadeiras. Afinal, os cães precisam de seus tutores para se sentirem bem.
                        </p>
                        <p>Faz parte da rotina deles perceber que estão ?agradando? o tutor. Então, use as brincadeiras para gastar energia em um dia de chuva, muito sol, etc.
                        </p>
                        <p>Veja algumas ideias para tirar do papel:</p>
                        <ol>
                            <li>Brinquedos com desafios para pegar petiscos.</li>
                            <li>Esconda petiscos e estimule o cão a encontrar.</li>
                            <li>Estimule o cão a buscar a bolinha.</li>
                            <li>Faça passeios dentro do condomínio.</li>
                            <li>Evite deixar o ambiente quieto demais.</li>
                            <li>Deixe o cão olhar pra fora da janela.</li>
                            <li>Brinque de cabo de guerra com o dog.</li>
                            <li>Brinquedos para roer/destruir.</li>
                            <li>Cuidado com brinquedos pontiagudos/que soltam partes.</li>
                            <li>Interaja com o seu cachorro.</li>
                        </ol>
                        <p>A seguir, entenda mais sobre cada uma dessas brincadeiras e veja como usá-las com seu melhor amigo canino. Acompanhe.
                        </p>
                        <h2><b>Brinquedos com desafios para pegar petiscos</b></h2>
                        <p>Uma das melhores brincadeiras para fazer com seu melhor amigo e entretê-lo dentro de casa, é estimular o animal a pegar petiscos. Ou seja, desafios que façam o cãozinho ir atrás de uma recompensa, simplesmente porque ele quer capturar aquilo.
                        </p>
                        <p>Nesse caso, você pode implementar uma série de ideias diferentes e divertidas. Por exemplo, você pode fazer uma bolinha, com petiscos lá dentro. Brinquedos que o cão possa ?destruir? para alcançar o objetivo também podem ser implementados.
                        </p>
                        <p>Em lojas de pet shop, com certeza você vai encontrar brinquedos prontos para estimular a caça. Mas, ainda assim, você pode criar os próprios brinquedos para seu dog e fazê-lo gastar energia e passar horas tentando pegar a comida.
                        </p>
                        <p>Cuidado para não exagerar nos petiscos para o seu dog não engordar. E cuidado para não deixar as coisas muito difíceis, pois o cão poderá desistir por falta de interesse.
                        </p>
                        <h2><b>Esconda petiscos e estimule o cão a encontrar</b></h2>
                        <p>Outra forma de fazer o seu melhor amigo gastar energia, é estimulando o cão a encontrar petiscos. Como funciona isso? Basicamente, é parecido com a dica anterior, mas aqui, você terá que esconder o petisco ? e não colocá-lo em situações de caça.
                        </p>
                        </p>Por exemplo, você pode estimular o cão buscar um petisco que você escondeu embaixo da cama, atrás da cortina, embaixo do sofá, dentro de algum lugar seguro e por aí vai. Quanto mais pistas você der para o cão de que há alguma coisa para caçar ali, mais empolgado ele vai ficar.
                        </p>
                        <p>Esse tipo de brincadeira estimula o cão a vários tipos de coisas. Instintivamente, ele se sente muito empolgado, pois está com seus instintos de caça a flor da pele. O que é ótimo para gastar energia.
                        </p>
                        <p>Porém, cuidado: é importante colocar os petiscos em lugares seguros e ambientes tranquilos. Não faça o cachorro correr riscos para conseguir pegar algum petisco, ok?
                        </p>
                        <p>Leia mais: Como oferecer petiscos com segurança.
                        </p>
                        <h2><b>Como entreter o cachorro dentro de casa ? Estimule o cão a buscar a bolinha</b></h2>
                        <p>Se tem uma brincadeira que os cachorros adoram, é buscar objetos para o tutor. Geralmente, o objeto favorito é a bolinha. Afinal, a bolinha é fácil de morder e trazer de volta. No entanto, você também pode experimentar outras coisas, tipo um galho ou um outro brinquedo.
                        </p>
                        <p>Esse tipo de brincadeira cria muitos laços entre cão e tutor, o que é ótimo para a relação no longo prazo. Isso ajuda o tutor a ficar mais perto do seu melhor amigo.
                        <p>
                        <p>Essa é uma ótima forma de entreter o cachorro dentro de casa, pois muitas vezes você não precisa de muito espaço para brincar com o dog. Basta ter uma área aberta e segura. Não jogue a bolinha em lugares que o cão pode se machucar, pois ele vai correr como um louco atrás dela, ok?
                        <p>
                        <h2><b>Como entreter o cachorro dentro de casa ? Faça passeios dentro do condomínio</b></h2>
                        <p>Se você mora em apartamento, o ambiente muitas vezes pode ser pequeno e entediante para o cão. Principalmente em dias de chuva, o animal pode ficar com muita energia acumulada e as brincadeiras serão fundamentais para deixá-lo tranquilo.
                        </p>
                        <p>Portanto, passear com seu dog dentro do condomínio (se permitido for), é importante. Mantenha ele na guia e deixe-o cheirar os ambientes e conhecer os espaços.
                        </p>
                        <p>O olfato é importante para os cães e estimular isso de maneira segura faz bem a eles. O gasto de energia mental é muito grande com estímulos olfativos.
                        </p>
                        <p>Se o condomínio tiver outros vizinhos com cachorros, veja esse artigo aqui: Socialização do cão ? Como fazer?
                        </p>
                        <h2><b>Como entreter o cachorro dentro de casa ? Evite deixar o ambiente quieto demais</b></h2>
                        <p>Ambientes barulhentos tendem a deixar o cachorro estressado e ansioso. Afinal, é muito ruído para processar.
                        </p>
                        <p>No entanto, ambientes muito quietos e calmos também são igualmente ruins, pois o cão não terá estímulos auditivos que são importantes para ele se sentir bem no espaço.
                        </p>
                        <p>Principalmente se o cão vai ficar em casa sozinho, os estímulos auditivos ajudam muito ele a não se concentrar somente nos barulhos externos e se estressar por eles.
                        </p>
                        <p>Uma musiquinha na TV ou no rádio, ajuda o seu dog a se sentir melhor. Veja as melhores músicas para cachorros.
                        </p>
                        <h2><b>Deixe o cão olhar pra fora da janela</b></h2>
                        <p>Outra forma de entreter o cachorro dentro de casa, principalmente em dias de chuva, é deixá-lo olhar pra fora da janela. Esse tipo de situação é interessante somente quando houver a presença do tutor, por vários motivos.
                        </p>
                        <p>Um deles, é que o seu cão pode ficar muito inquieto e estressado quando fica olhando pra fora por muito tempo. Afinal, por lá, ele poderá ter vários estímulos ruins para um comportamento inadequado. Ele pode ver pessoas, outros cachorros e por aí vai. Isso tudo é importante, mas com cautela e controle.
                        </p>
                        <p>Se você mora em apartamento, nunca deixe seu dog chegar perto da janela se não houver tela de proteção, ok?
                        </p>						
                        <h2><b>Brinque de cabo de guerra com o dog</b></h2>
                        <p>	Alguns tutores não gostam dessa brincadeira pois acham que o dog vai ter estímulos de agressividade. Porém, não é bem por aí. Na verdade, o cabo de guerra é uma das melhores brincadeiras que o tutor pode fazer com seu melhor amigo em casa.
                        </p>
                        <p>O cabo de guerra, quando feito com cautela, estimula alguns instintos no animal. Além disso, ajuda a gastar muita energia física e mental, o que é ótimo para o dog não descontar essa energia em outras coisas.
                        </p>
                        <p>Cuidado para não puxar o cabo de guerra muito forte para não machucar os dentes do animal, ok? Apenas segure de maneira que o cão tenha um desafio ? você não precisa mostrar a sua força para o dog.
                        </p>
                        <h2><b>Brinquedos para roer/destruir</b></h2>
                        <p>Além do cabo de guerra, outro ótimo brinquedo que ajuda a estimular o gasto de energia do cachorro, é aquele brinquedo feito para roer/destruir.
                        </p>
                        <p>Se você não quer que seu melhor amigo destrua os brinquedos dele, compre brinquedos feitos para serem destruídos. Ao menos, o cão se diverte e você não fica estressado por ter que comprar brinquedos novos a todo momento.
                        </p>
                        <p>Deixar o cão destruir/roer um brinquedo é muito estimulante pra ele. Afinal, ele está, ali, gastando energia física e mental. Isso não estimula agressividade no cãozinho, não se preocupe.
                        </p>
                        <p>O que estimula agressividade nele, é falta de adestramento, estímulos ruins no dia a dia, falta de padrão na rotina e por aí vai.
                        </p>
                        <h2><b>Cuidado com brinquedos pontiagudos/que soltam partes</b></h2>
                        <p>É fundamental que o tutor tome cuidado com os brinquedos que comprar/fazer para o seu pet. Afinal, se o brinquedo tiver partes que se soltam ou que o cão possa roer e mastigar, ele poderá se engasgar. O que pode ser algo muito grave e pode até levar o óbito do cachorro.
                        </p>
                        <p>Evite brinquedos de plástico duro e com partes pequenas e encaixadas. Procure por brinquedos feitos especialmente para cachorros. Assim, vocês não terão problemas e a segurança do pet estará em primeiro lugar, como sempre tem que ser.
                        </p>
                        <p>Leia mais: Como desengasgar um cachorro: A técnica Heimlich funciona?
                        </p>	
                        <h2><b>Interaja com o seu cachorro</b></h2>
                        <p>E por fim, algo que ajuda muito a entreter o cachorro dentro de casa: interação com o tutor! Sim, a simples interação com seu tutor, já faz o cão se sentir muito bem do ponto de vista físico e mental.
                        </p>
                        <p>Afinal, isso ajuda a gastar energia e gera uma conexão muito importante para a relação.
                        </p>
                        <p>As interações podem ser de muitas formas diferentes. Preferencialmente, interaja de maneira carinhosa e com brincadeiras. Evite situações que deixem o cachorro mimado ou com uma rotina que não é saudável.
                        </p>
                        <p>Ou seja, não dê comidinhas só porque o cão está fazendo aquela cara de triste.
                        </p>
                        <p>Agora que você já entendeu como entreter o cachorro dentro de casa, anote as nossas dicas e coloque-as em prática. Teste com seu melhor amigo e depois comente aqui o que achou.
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
                                <p>Psicóloga (CRP12/17354), apaixonada pelo universo pet. Especialista em marketing de conteúdo e redação web. É redatora há mais de três anos e atua como ghostwriter, copywriter e psicoeducadora. Atualmente está fazendo a sua formação em Letras/Português.</p>
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
                            <small>Convivência</small>
                            <h2><b>Desobediência canina ? Por que acontece?</b></h2>
                            <small>por Camila Bonatti ? publicado em 12 nov 2021 - 11:11</small>
                        </div>
                        <br>
                        <p>A desobediência canina tem o poder de deixar o cãozinho bastante desconfortável no ambiente. Ou seja, se ele está agindo de maneira desobediente, saiba que ele não está fazendo isso pra ?te provocar?.
                        </p>
                        <p>Na verdade, o cão está ansioso, angustiado e geralmente com energia para gastar.</p>
                        <p>Entender por que a desobediência canina se faz presente no dia a dia vai te ajudar a construir um ambiente muito mais calmo e tranquilo para o seu cão. Afinal, você conseguirá controlar algumas situações e evitar outras.</p>
                        <p>Neste artigo, o Portal do Dog vai te ajudar a entender um pouco mais sobre as principais desobediências dos cães, por que eles fazem isso e o que fazer para o cão se comportar.	</p>
                        <h2><b>Desobediência canina ? Por que isso acontece?</b></h2>
                        <p>Se você é um tutor de primeira viagem ou está pensando em adotar um cãozinho, é preciso entender algumas coisas de comportamento.</p>
                        <p>Afinal de contas, o comportamento canino depende muito das ações do tutor e também do ambiente em que o cão vive.</p>
                        <p>A desobediência canina, muitas vezes, está atrelada totalmente ao fato de que o seu cão não tem um ambiente adequado para viver. Ou seja, estímulos negativos estão por toda parte.</p>						
                        <p>Isso gera ansiedade e, posteriormente, gera desobediência. O cão passa a agir de maneira mais medrosa e as vezes até agressiva.</p>
                        <p>Separamos uma lista de situações que podem gerar desobediência canina no seu cãozinho. Veja abaixo:</p>
                        <ul>
                            <li>Falta de consistência nos limites, proibições e permissões.<li>
                            <li>Rótulos preconceituosos ? ?meu cão é dominante?.<li>
                            <li>Agir com adestramento punitivo ? e não reforço positivo.<li>
                            <li>Controle dos instintos naturais do cachorro.<li>
                            <li>Pouco ou nenhum reforço positivo.<li>
                            <li>Falta de gasto de energia e enriquecimento ambiental.<li>
                            <li>Pouca paciência com seu melhor amigo.<li>
                        </ul>
                        <p>Para entender um pouco mais sobre o contexto de cada uma das situações acima, continue lendo.</p>
                        <h2><b>Falta de consistência nos limites, proibições e permissões</b></h2>
                        <p>Todos os cães agem de maneira parecida: eles aprendem o que pode, o que não pode e vão se condicionado a isso com o tempo.</p>

                        <p>Condicionamento é a palavra-chave para que você encontre a solução para um cão desobediente. E por isso, é preciso entender mais sobre consistência.</p>

                        <p>Ou seja, fazer com que seu cão entenda perfeitamente o que pode, o que não pode e o que ele deve fazer, não é algo rápido. É preciso muita paciência e, acima de tudo, consistência.</p>

                        <p>Sem consistência, você não vai conseguir criar um cãozinho saudável do ponto de vista comportamental.

                        <p>Portanto, sempre que você começar um novo treinamento ou ensinamento, é preciso ter consistência. Ou seja, se hoje pode, amanhã tem que poder também.</p>

                        <p>E o mesmo vale ao contrário: se o cão não pode uma coisa, ele precisa continuar não podendo. Caso contrário, isso gerará inconsistência, o cão ficará confuso e vai agir de modo desobediente.</p>

                        <p>Essa desobediência não vem para ?provocar? o tutor. Ela vem porque o cão não sabe muito bem o que ele pode e o que não pode. Logo, ele faz o que ele quiser.</p>

                        <p>Exemplo: se você deixar o cão subir no sofá e depois de um tempo mandá-lo sair, isso vai gerar confusão na mente do dog. Ele vai se sentir confuso e não vai saber qual comportamento seguir.</p>

                        <h2><b>Rótulos preconceituosos ? ?meu cão é dominante?</b></h2>
                        Outro fator bastante prejudicial para o comportamento do seu melhor amigo, é achar que o cão é assim e pronto. Ou seja, se o seu cão está desobedecendo, simplesmente condicionar esse comportamento ao ?comportamento natural? do cão.</p>

                        <p>Isso é um rótulo de preconceito que ajuda a construir ainda mais os maus comportamentos.</p>

                        <p>Se o seu cãozinho não está se comportamento bem, não é porque ele gosta disso. Afinal, o maior sonho da vida dos cachorros é fazer bem para seus tutores. Vê-los felizes é o que deixa os cães verdadeiramente felizes.</p>

                        <p>Portanto, é muito importante que você não rotule o seu cão de dominante, bagunceiro ou agressivo. Assim você sempre vai reforçar esse comportamento nele e dificilmente ele vai mudar.</p>

                        <p>O que fazer, nesse caso?</p>

                        <p>Basicamente, você precisa fazer muito treinamento de reforço positivo com o seu cãozinho. Se ele é dominante, é preciso desconstruir o comportamento ruim com uma rotina adequada, consistência nos treinamentos e muita paciência.</p>

                        <h2><b>Agir com adestramento punitivo ? e não reforço positivo</b></h2>
                        <p>Ao lidar com um cão dominante, conforme o tópico anterior, muitos tutores acabam não sabendo o que fazer e agem de maneira errada. Ou seja, agem com reforço punitivo, ao invés de usar reforço positivo.</p>

                        <p>A desobediência canina não vai ser resolvida com reforço punitivo ou situações ameaçadoras para o seu cão. Brigar, xingar ou até mesmo agir com violência, é muito prejudicial para a saúde do seu melhor amigo.</p>

                        <p>Isso vai deixar o cão ainda mais ansioso e desobediente.

                        <p>Por que? Porque o cão ama o seu tutor. E quando o tutor está agindo de maneira estranha e com violência, ele vai se sentir deslocado, triste e poderá agir de maneiras erradas para o que você julga como adequado.</p>

                        <p>Se o seu cão fez algo errado, simplesmente não faça nada. Mas quando ele fizer algo certo, elogie e dê um petisco.</p>

                        <p>O reforço positivo é que vai condicioná-lo aos comportamentos certos. Enquanto que o reforço punitivo, só vai quebrar a conexão de vocês.</p>

                        <h2><b>Desobediência canina ? Controle dos instintos naturais do cachorro</b></h2>
                        <p>Os cachorros têm instintos. Não há como fugir disso e muito menos esquecer. Afinal, eles são cães que estão procurando um ambiente confortável, saudável e equilibrado pra viver.</p>

                        <p>Ao querer controlar o instinto do cachorro, automaticamente, você estará ?passando por cima? da natureza dele. Ou seja, os cães precisam de momentos exclusivos para se sentirem cachorros.</p>

                        <p>Eles precisam cavar, roer, morder, correr, se sujar e farejar. Proibir ou não incentivar esse tipo de prática, pode ser bastante prejudicial para o dia a dia do dog e, consequentemente, ele poderá se tornar desobediente.</p>

                        <p>Entender os instintos do cachorro e preparar uma rotina para que ele possa usufruir disso é muito importante. Lembre-se que você está criando um cachorro e não um ursinho de pelúcia, ok?</p>

                        <p>Leia também: Olfato Canino: Descubra os 5 fatos incríveis.</p>

                        <h2><b>Desobediência canina ? Pouco ou nenhum reforço positivo</b></h2>
                        <p>O reforço positivo é o que vai fazer o seu cão entender o que ele pode e o que não pode. Muitas vezes, é a partir do reforço positivo que você vai conseguir mostrar ao cão quais são os comportamentos que ele deve seguir para ser ?bem comportado?.</p>

                        <p>No entanto, se não houver reforço positivo, o cão não vai saber o que fazer. Ele não sabe até onde ele pode ir e vai agir de maneiras aleatórias. Cães odeiam aleatoriedade. Eles gostam de rotina. Quanto mais ?certo? for o dia, melhor pra eles.</p>

                        <p>Quando você reforça uma situação positivamente, o cão tende a repetí-la. Tudo que eles querem, é ganhar um agradinho. Portanto, use os agradinhos para estimular bons comportamentos e você terá um cão incrivelmente treinado.</p>

                        <h2><b>Falta de gasto de energia e enriquecimento ambiental</b></h2>
                        <p>A falta de gasto de energia é também um fator muito prejudicial para os cães. Não é raro que um cão tenha comportamentos ruins dentro de casa quando está com energia acumulada.</p>

                        <p>Eles podem roer móveis, objetos, almofadas e carregar chinelos. Além disso, eles podem agir de maneira agressiva em algumas momentos.</p>

                        <p>Portanto, gaste a energia do seu cão. Crie um ambiente enriquecido e evite acumular cargas de energia muito grandes no seu cachorro.</p>

                        <h2><b>Desobediência canina ? Pouca paciência com seu melhor amigo</b></h2>
                        <p>E por fim, a pouca paciência com seu melhor amigo é outro fator que pode gerar comportamentos de desobediência. Afinal, a falta de paciência esta totalmente atrelada aos cuidados que você tem com o cão.</p>

                        <p>Se faltar paciência, pode sobrar reforço punitivo. E como já entendemos anteriormente, isso é bem ruim para os dogs.</p>

                        <p>É muito importante lembrar que o cachorro é um cachorro. Ele não é um ursinho de pelúcia e muito menos um ser humano com consciência e razão.</p>

                        <p>Portanto, aprenda como lidar com o seu cãozinho de maneira adequada. Se ele estiver aprendendo comportamentos, tenha calma. Se ele ainda estiver em fase de treinamento e ainda está fazendo coisas ?erradas?, muita paciência.</p>

                        <h2><b>Um cachorro é desobediente por natureza?</b></h2>
                        <p>Não. Um cachorro não é desobediente por natureza. Na verdade, um cão não é desobediente em momento nenhum.</p>

                        <p>O que acontece é que o tutor impõe algumas regras no ambiente e o cão passa a não respeitá-las. Mas mesmo não respeitando as regras, ainda assim, para o cão, os comportamentos adotados não são ruins.</p>

                        <p>Ele apenas está seguindo seu instinto e condicionamento recebido até então.</p>

                        <h2><b>O cão sabe que está desobedecendo o tutor?</b></h2>
                        <p>Não. Um cão não sabe que está desobedecendo e nem faz uma ?carinha de triste? quando apronta alguma coisa. Esses comportamentos e reações são criados pelo tutor, uma vez que a consciência de regras é do tutor.</p>

                        <p>Portanto, não brigue, ofenda ou use violência física com seu cão desobediente. Ele não é desobediente para provocar. Mas sim, por falta de outros estímulos, adestramento e consistência no processo.</p>

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
                                <p>Psicóloga (CRP12/17354), apaixonada pelo universo pet. Especialista em marketing de conteúdo e redação web. É redatora há mais de três anos e atua como ghostwriter, copywriter e psicoeducadora. Atualmente está fazendo a sua formação em Letras/Português.</p>
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
                            <h2><b>Como ensinar xixi e cocô no lugar certo?</b></h2>
                            <small>por Camila Bonatti ? publicado em 30 out 2021 - 05:10</small>
                        </div>
                        <br>
                        <p>Alguns erros ao ensinar xixi e cocô no lugar certo para o cachorro podem passar despercebidos pela maioria dos tutores. Afinal, esses erros muitas vezes são camuflados de ?bons hábitos? ou desconhecimento do processo correto para ensinar o cãozinho. Principalmente por tutores de primeira viagem.
                        </p>
                        <p>Por isso, neste artigo, o Portal do Dog vai te ajudar a entender um pouco mais sobre o assunto. Afinal, é do interesse do cãozinho e mais ainda do tutor, que o animal aprenda onde ele deve fazer suas necessidades, não é mesmo?
                        </p>
                        <p>Embora não seja um processo rápido e simples, é um processo que pode ser fácil, desde que o tutor tenha paciência e saiba o que fazer. Por isso, evitar erros ao ensinar xixi e cocô no lugar certo já é um passo bastante importante, não é mesmo?
                        </p>
                        <p>Acompanhe e saiba tudo sobre o tema.</p>

                        <h2><b>Erros ao ensinar xixi e cocô no lugar certo para o cachorro</b></h2>
                        <p>Um dos erros ao ensinar xixi e cocô no lugar certo para o cachorro é justamente achar que o cão precisa aprender isso rapidamente.
                        </p>
                        <p>Para o cão, principalmente os filhotes, o melhor lugar para fazer as necessidades vai ser aquele ambiente calmo, tranquilo e sem estresse para o momento. Ou seja: qualquer lugar está ótimo, desde que esteja tudo calmo.
                        </p>
                        <p>Aqui no site, temos alguns artigos ensinando como treinar o cão para ele acertar o banheiro. Veja: Xixi e cocô no lugar certo para seu cão: 3 dicas para ensinar.
                        </p>
                        <p>Só que além de aprender como fazer, é preciso aprender, também, o que não fazer. Nesse caso, separamos 9 situações que talvez você faça e não sabe. Veja abaixo:</p>
                        <ol>			
                            <li>Falta de paciência com o cão.</li>
                            <li>Achar que o cão vai aprender da noite para o dia.</li>
                            <li>Pouca higiene no banheiro do cãozinho.</li>
                            <li>Falta de restrição do espaço.</li>
                            <li>Pouca ou nenhuma rotina (cães gostam de rotina).</li>
                            <li>Tapete higiênico perto da comida e caminha.</li>
                            <li>Nunca substituir os famosos jornais.</li>
                            <li>Brigar com o cachorro ou usar algum tipo de violência.</li>
                            <li>Não reforçar positivamente a situação.</li>
                        </ol>
                        <p>E aí, você comete ou já cometeu algum desses erros ao ensinar o xixi e cocô no lugar certo para o cachorro? Pois bem, a partir de agora, vamos entender mais sobre cada situação da lista acima.
                        </p>
                        <p>Veja o que fazer, como evitar, problemas que podem surgir a partir disso e mais. Acompanhe!
                        </p>
                        <h2><b>Como ensinar xixi e cocô no lugar certo ? Falta de paciência com o cão</b></h2>
                        <p>Antes de mais nada, não podemos deixar de mencionar algo fundamental e que pode facilmente ?acabar? com a sua estratégia para ensinar xixi e cocô no lugar certo para o cão: paciência.
                        </p>
                        <p>Sim, sem paciência, nada vai dar certo. E inclusive, a falta de paciência pode facilmente fazer com que seu cão fique estressado, ansioso e nunca aprenda onde é o banheiro dele.										
                        </p>							
                        <p>Para evitar situações de falta de paciência, você precisa entender que, ao criar grandes expectativas, a paciência pode se esgotar rapidinho.
                        </p>
                        <p>Por isso, lembre-se sempre que o seu cão é um cão e ele precisa de condicionamento para aprender alguma coisa. Não é só mostrar onde é o banheiro ou comprar produtos que ajudam o cão a se sentir confortável no banheiro, ok?
                        </p>
                        <p>Leia mais: Educadores sanitários funcionam para adestrar o cachorro?
                        </p>
                        <h2><b>Achar que o cão vai aprender da noite para o dia</b></h2>
                        <p>Esse erro está muito ligado com o tópico anterior, sobre a falta de paciência. Ou seja, sempre que você coloca uma expectativa muito grande em um adestramento ou ensinamento para seu cão, as coisas podem não acontecer da forma que deveriam.
                        </p>
                        <p>Por isso, lembre-se: seu cãozinho não vai aprender onde é o banheiro dele da noite para o dia.
                        </p>
                        <p>A falta de paciência pode fazer com que você pense que poucas sessões de adestramento serão o suficiente. No entanto, não são.
                        </p>
                        <p>Ensinar o banheiro para o cachorro é um desafio muito grande. Você precisa acompanhar o desenvolvimento dele e entender que pode levar algumas semanas ou até meses até que o cão, enfim, acerte o lugar do xixi e cocô.
                        </p>
                        <p>Até lá, você precisa de muito reforço positivo, carinho, paciência e amor. Nunca coloque cargas de estresse no seu cãozinho. Isso vai fazê-lo não aprender onde ele deve fazer xixi e cocô.
                        </p>
                        <h2><b>Como ensinar xixi e cocô no lugar certo ? Pouca higiene no banheiro do cãozinho</b></h2>
                        <p>Um dos erros ao ensinar xixi e cocô no lugar certo para o cachorro, é a falta de higiene e limpeza no ambiente em que o cãozinho deveria fazer suas necessidades.
                        </p>
                        <p>E aqui, não tem muito segredo. Afinal, basta pensarmos por nós: um banheiro sujo e com cheiro ruim, é bem desagradável, não é mesmo?
                        </p>
                        <p>Pois bem, para os cães, vale a mesma afirmação. Eles não gostam de ambientes sujos. Muito menos quando esse ambiente é o banheiro deles.
                        </p>
                        <p>Portanto, se o seu cão desaprendeu onde é o banheiro ou se ele nunca aprendeu, pense que, talvez, ele esteja incomodado com alguma coisa. Pode ser a falta de higiene que está deixando-o desconfortável.
                        </p>
                        <p>Mantenha uma limpeza rotineira. Preferencialmente, logo após o cãozinho usar o banheiro. Não deixe sujeira acumular de forma alguma. Isso vai ajudar, inclusive, a não dar cheiro ruim na sua casa.
                        </p>
                        <p>Veja também este artigo: Como limpar o xixi / urina do seu cachorro.
                        </p>
                        <h2><b>Como ensinar xixi e cocô no lugar certo ? Falta de restrição do espaço</b></h2>
                        <p>Uma das coisas mais importantes que você deve fazer ao adotar um cachorro, é restringir o espaço dele nos primeiros dias em casa. Preferencialmente, quando o cão está sozinho no ambiente.</p>

                        <p>Neste caso, a restrição é fundamental para que o cão não suje a casa inteira e ?se perca? no aprendizado de onde é o banheiro certo.
                        </p>
                        <p>Esse é um dos erros ao ensinar xixi e cocô no lugar certo para o cachorro cometido por muitos tutores de primeira viagem.
                        </p>
                        <p>Afinal, nem sempre podemos ficar em casa o dia inteiro com o cão. E se ele for um filhote recém chegado no recinto, ele ainda não conhece o espaço e poderá usar o espaço inteiro como banheiro.
                        </p>
                        <p>Portanto, restrinja o recinto dele quando ele estiver sozinho.</p>

                        <h2><b>Pouca ou nenhuma rotina (cães gostam de rotina)</b></h2>
                        <p>Cães gostam de rotina. É um erro por si só, não estabelecer uma rotina saudável para seu cão. E quando o assunto é erros ao ensinar xixi e cocô no lugar certo para o cachorro, a rotina é um dos pontos mais importantes de todos. Afinal, a rotina ajuda o cão a fixar os processos e adestramentos.</p>

                        <p>Se hoje o banheiro é em um lugar, amanhã é em outro e depois de amanhã em mais outro, isso não vai dar certo. Só vai gerar muita confusão na cabeça do cãozinho e ele poderá, desta forma, adotar qualquer lugar como sendo o banheiro dele.</p>

                        <p>Ofereça uma rotina adequada, repetitiva e sem muitas ?novas emoções? ao cão. Eles gostam das coisas previsíveis e, inclusive, a rotina ajuda-os a ter um organismo mais controlado para as necessidades em momentos específicos.</p>

                        <h2><b>Tapete higiênico perto da comida e caminha</b></h2>
                        <p>Esse é um dos erros ao ensinar xixi e cocô no lugar certo que mais podem prejudicar o aprendizado do cão.</p>

                        <p>Afinal, aqui, você estará lidando com o instinto de sobrevivência do animal. A comida é ?sagrada? para os cães e é algo que eles vão lutar para conquistar. Logo, manter o banheiro do dog perto da comida dele, é algo que vai deixar o cão bem desconfortável.</p>

                        <p>Portanto, busque um lugar adequado para que o cãozinho possa fazer suas necessidades, que não seja perto do pote de ração e água.</p>

                        <h2><b>Nunca substituir os famosos jornais</b></h2>
                        <p>Tudo bem, os jornais são boas opções para quem acabou de receber um novo membro da família em casa. Porém, eles não podem se perpetuar no recinto por diversos motivos.</p>

                        <p>Os jornais soltam tinta e isso pode trazer alergia para as regiões íntimas dos cães. Além disso, os jornais podem deixar o ambiente escorregadio e, portanto, desconfortável para o seu dog.</p>

                        <p>A higiene do ambiente também não fica das melhores quando o local é forrado com jornais. O cheiro é propagado e o cão se sente desconfortável por isso. Além de deixar a casa igualmente mal-cheirosa.</p>

                        <p>Quando puder, evolua para os tapetes higiênicos.</p>

                        <h2><b>Brigar com o cachorro ou usar algum tipo de violência</b></h2>
                        <p>Talvez, esse seja um dos erros ao ensinar xixi e cocô no lugar certo que mais são prejudiciais ao cão. Afinal, ao brigar com o cão ou usar qualquer tipo de violência, o cão pode ficar muito desconfortável não só para o banheiro. Mas também, para várias outras situações do dia a dia.</p>

                        <p>Adestramentos, ensinamento de truques e comandos básicos devem sempre seguir padrões de reforço positivo. Nunca use a punição como forma de ensinar alguma coisa ao cão. Afinal, ele não vai aprender e pode facilmente ficar estressado, ansioso e com vários outros problemas.</p>

                        <p>Por isso, esqueça aquele truque de ?colocar o focinho do cão no xixi fora do lugar?, ok? Isso não vai ajudar seu cão a entender onde é o banheiro dele.</p>

                        <h2><b>Não reforçar positivamente a situação</b></h2>
                        <p>E por fim, outro erro ao querer ensinar o banheiro ao cão, é deixar de usar o reforço positivo como estratégia de ensinamento. O reforço positivo é fantástico para vários tipos de ensinamentos e ajuda o cão a não ficar estressado e ansioso com a pressão de aprender alguma coisa.</p>

                        <p>Sempre que o seu cãozinho acertar o lugar do xixi e cocô, ofereça um benefício: pode ser um biscoito, um elogio ou um carinho. Assim, sempre que ele errar, não faça nada ? apenas não dê o benefício.</p>

                        <p>Então, com o tempo, o cão tenderá a repetir comportamentos pelo benefício. E quando você menos esperar, ele saberá exatamente onde é o banheiro dele.</p>

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
                                <p>Psicóloga (CRP12/17354), apaixonada pelo universo pet. Especialista em marketing de conteúdo e redação web. É redatora há mais de três anos e atua como ghostwriter, copywriter e psicoeducadora. Atualmente está fazendo a sua formação em Letras/Português.</p>
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
                            <h2><b>Como é a visão de um gato?</b></h2>
                            <small>por Hyago Bandeira ? publicado em 02 dez 2021 - 15:53</small>
                        </div>
                        <br>
                        <h2><b>Sabe por que os olhos do gato brilham no escuro?</b></h2>
                        <p>Vamos esclarecer essas e outras curiosidades sobre a visão felina</p>			

                        <p>Os olhos são os traços mais marcantes de um felino, mas além do formato imponente e as pupilas que dilatam e se retraem dependendo da situação, a visão dos gatos é outro fator que desperta curiosidade. Mesmo depois de domesticados, os gatos ainda carregam muitos instintos da vida selvagem, como a habilidade de enxergarem no escuro. E você sabia que os olhos do gato servem até para expressar o que ele está sentindo? A visão felina é mais complexa e interessante do que se imagina. Por isso, o Patas da Casa reuniu informações importantes sobre a visão de gato para você desvendar tudo sobre esse mistério. Dá só uma olhada!
                        </p>
                        <h2><b>Como é a visão dos gatos: eles podem ver cores?</b></h2>
                        <p>Afinal, gato enxerga em preto e branco ou esse é apenas um mito? A resposta para essa pergunta é não. Os gatos enxergam mais do que branco e preto, mas não são todas as cores que eles veem. Isso acontece por causa de uma célula chamada cone, que possui a função de auxiliar a visão diurna e perceber as cores. Em comparação com os humanos, os felinos possuem uma célula fotorreceptora a menos, o que impede de enxergar tons de verde. Ou seja, a visão de gato permite que ele enxergue colorido, mas sem as combinações da cor verde.
                        </p>

                        <h2><b>Visão do gato: eles possuem uma ótima visão periférica e noturna</b></h2>
                        <p>Apesar de enxergar um mundo sem as tonalidades esverdeadas, a visão dos gatos é muito boa no quesito angular e periférico. Em comparação com os humanos, os bichanos possuem um campo de visão mais amplo, que permite que eles enxerguem ângulos de aproximadamente 200º. A visão dos humanos é de apenas 180º.
                        </p>
                        <p>Outra dúvida constante sobre a visão do gato é se ele possui visão noturna. Os felinos se locomovem extremamente bem à noite, isso porque eles conseguem enxergar muito bem quando todas as luzes estão apagadas. A explicação está no alto nível de bastonetes, que são as células responsáveis pela visão noturna. Além disso, os gatos possuem uma estrutura chamada tapetum lucidum atrás da retina, que reflete a luz e permite que ela passe mais de uma vez pela retina, fazendo com que a visão de gato aproveite mais a pouca luz disponível no escuro. Essa característica é a responsável por fazer os olhos dos felinos brilharem no escuro.
                        </p>
                        <h2><b>Como é a visão de um gato: espécie pode ser considerada míope</b></h2>
                        <p>Com tantas vantagens da visão do gato em comparação com a dos humanos, existe uma coisa que nos deixa um pouco mais à frente deles. Por conta da forma do globo ocular, os bichanos não enxergam muito bem à distância. Para os padrões humanos, eles podem ser considerados míopes. A partir dos 6 metros, a visão do gato começa a ficar um embaçada. No entanto, em relação a outras espécies de animais, a visão em profundidade dos felinos é considerada muito boa. O que é bom para que o animal capture uma presa, por exemplo, seja um bichinho ou um ratinho de corda. 
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
                                <p>Repórter do Patas desde o final de 2020 e jornalista em formação pela UFRJ. Me apaixonei ainda mais pelo universo dos cachorros e gatos a partir do meu trabalho no site. Apesar de não ser um pai de pet atualmente, sinto imensa gratidão por ser um colaborador dessa rede de apoio para os tutores.</p>
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
                            <small>Alimentação</small>
                            <h2><b>Gato pode comer fruta? Descubra a forma correta de inserir os alimentos na dieta do felino</b></h2>
                            <small>por Hyago Bandeira ? publicado em 30 nov 2021 - 20:16</small>
                        </div>
                        <br>
                        <h2><b>Felinos podem comer melão sem problemas, mas você sabe outras frutas que gatos podem comer?</b></h2>
                        <p>Saber se o gato pode comer fruta é uma das principais dúvidas dos gateiros que querem incrementar a alimentação do pet. Oferecer outros tipos de alimentos, além da ração e sachê para gato, é uma opção que pode ser adotada na dieta do gato. No entanto, tudo deve ser feito com muito cuidado quando se trata da alimentação felina. Mas será que os gatos podem comer frutas? Nem tudo que é benéfico para o organismo humano será bom para eles e é importante saber disso. Dá só uma olhada no que descobrimos sobre esse assunto!
                        </p>
                        <h2><b>Os gatos podem comer frutas ou não?</b></h2>
                        <p>Antes de descobrir quais frutas gatos podem comer é preciso entender como esse alimento contribui para a dieta dos felinos. Afinal de contas, eles realmente podem comer frutas? A princípio é necessário entender sobre a cadeia alimentar do gato e como ocorre a sua dieta na natureza. Os felinos são animais carnívoros e por, conta disso, sua dieta nunca pode ser baseada só em vegetais. Ou seja, os gatos podem comer frutas, mas elas nunca poderão ser o principal alimento dos felinos pois não fornecem aquilo que o organismo deles precisa. Os bichanos são carnívoros, mas é possível inserir algumas variedades entre as refeições. Porém, vale a pena pesquisar que frutas gatos podem comer, pois muitas delas podem ser prejudiciais para os bichanos.
                        </p>
                        <h2><b>Quais são as frutas que gatos podem comer?</b></h2>
                        <p>As frutas são alimentos que possuem uma grande quantidade de açúcares e muitas vezes podem ser prejudiciais para o organismo dos gatos. Para te ajudar na missão preparamos duas listas, uma com as frutas que gato pode comer e outra com os alimentos proibidos. Veja a seguir!
                        </p>
                        <p><b>Frutas que gatos podem comer:</b></p>
                        <ul>
                            <li>Maçã</li>
                            <li>Morango</li>
                            <li>Melão</li>
                            <li>Melancia</li>
                            <li>Banana</li>
                            <li>Pera</li>
                        </ul>
                        <p><b>Frutas que gatos não podem comer:</b></p>
                        <ul>
                            <li>Limão</li>
                            <li>Laranja</li>
                            <li>Uva</li>
                            <li>Caqui</li>
                        </ul>
                        <p>De modo geral, as frutas cítricas devem ser sempre evitadas para os felinos, pois o organismo dos pets não suportam a acidez desses alimentos, podendo prejudicar até mesmo a parede do estômago.
                        </p>
                        <h2><b>Frutas que gato pode comer: como variar a dieta dos bichanos?</b></h2>
                        <p>A busca por frutas que gatos podem comer muitas vezes é para variar a alimentação do gato. Para isso, é mais interessante procurar pelos petiscos próprios para gatos. Muitos deles possuem frutas na composição e são estudados e preparados especialmente para os felinos. As opções são diversas e são mais seguras do que arriscar oferecendo alimentos que não são específicos como petisco.
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
                                <p>Repórter do Patas desde o final de 2020 e jornalista em formação pela UFRJ. Me apaixonei ainda mais pelo universo dos cachorros e gatos a partir do meu trabalho no site. Apesar de não ser um pai de pet atualmente, sinto imensa gratidão por ser um colaborador dessa rede de apoio para os tutores.</p>
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
                            <small>Convivência</small>
                            <h2><b>Tela de proteção para gatos: qual a diferença entre os modelos 3x3 e 5x5 e como escolher?</b></h2>
                            <small>por Karoline Miranda ? publicado em 19 nov 2021 - 16:30</small>
                        </div>
                        <br>
                        <p>A tela de proteção para gatos em todas as janelas da casa é a primeira coisa que você deve providenciar ao decidir adotar um gato. Os felinos são animais exploradores e curiosos: eles amam observar a rua e conhecer todos os cantos da casa. A falta de uma tela para gatos pode fazer com que as aventuras em ambientes não adaptados resultem em acidentes graves e até fugas. Existem dois tipos de tela de proteção para gatos que normalmente são usados: 3x3 e 5x5 determinam o tamanho dos ?buracos? na tela para janela - gatos ficam bem mais seguros com uma delas. Quer entender os modelos de rede de proteção para gatos, a diferença entre os tamanhos e qual modelo é mais indicado para sua casa com patinhas? Confira aqui!</p>
                        </p>
                        <h2><b>A tela de proteção para gatos impede fugas e acidentes</b></h2>
                        <p>A importância da tela para gatos é ignorada por muita gente, mas é essencial para se ter uma casa segura para felinos. Gatinhos, mesmo que castrados, podem fugir e a tela de janela para gatos impede que isso ocorra. A criação indoor (ou seja, sem acesso às ruas) aumenta a expectativa de vida do seu animal. Os gatos são animais que têm seus instintos selvagens bem presentes. Apesar de serem domesticados, ainda possuem uma conexão muito grande com o comportamento explorador de seus ancestrais. Isso significa que eles amam desbravar o mundo, com sua curiosidade única. Isso pode acabar levando às famosas fugidinhas.
                        </p>
                        <p>Os felinos que moram em casas seguras com tela para gatos não fugir vivem, em média, 16 anos. Já os gatos ?livres? costumam viver cerca de oito anos. Isso porque, ao impedir as voltinhas com a tela de proteção, gatos têm menos chance de contrair doenças graves, se envolver em briga de gato ou serem atropelados, situações infelizmente comuns ao sair para a rua. Colocar uma tela de proteção para gatos na sua casa para acolher seu gatinho é, antes de tudo, um ato de amor.
                        </p>
                        <h2><b>Tipos de tela de proteção: qual a diferença entre os tamanhos 3x3 e 5x5?</b></h2>
                        <p>A principal diferença entre os tipos de telas de proteção para janelas 3x3 e 5x5 é o tamanho dos buracos. Na tela de gato de 3x3, o tamanho é menor (3 cm). Já no modelo 5x5, os furos medem 5 cm. Essa tela de gatos é mais comum de encontrar e geralmente é utilizada em casas e apartamentos onde há crianças e cachorros maiores. Em todos os casos, o ideal é instalar rede de proteção para gatos feita com um material firme e resistente. Os tipos de tela nylon ou polietileno resistem às garras e dentinhos ferozes dos pequenos felinos. Mas afinal, como colocar tela na janela para gatos? Primeiro, saiba que a tela proteção para gatos deve sempre ser instalada de dentro para fora, nunca de forma contrária.
                        </p>
                        <p>A tela para gatos precisa ser bem fixada nas laterais para que o animal não consiga passar (lembre-se de que eles podem ser bem flexíveis!). Para isso, é preciso fazer furos na parede com uma furadeira, onde serão colocados os ganhos. Eles devem ser bem fixados na parede e ter uma distância entre si de, em média, 30 cm. A tela proteção para gatos será colocada nesses ganchos e deve ficar bem esticada. Como a tela para gatos pode ficar um pouco maior, a sobra deve ser cortada. Para aumentar a sustentação da rede de proteção para gatos, pode-se usar também um cordão naval, entrelaçado entre os ganchos.
                        </p>
                        <h2><b>Qual modelo de rede de proteção para gatos é indicado?</b></h2>
                        <p>Na hora de escolher a rede de proteção para gatos ideal para o seu bichano você precisa considerar duas coisas: a idade de gato e o comportamento geral dele (ou seja, se ele tem o costume de arranhar ou roer superfícies). Vamos te explicar melhor! No caso de filhotinhos, por exemplo, a tela para gatos 3x3 (que tem o buraco bem menor) impossibilita que o gato passe por ela, evitando acidentes e fugas. Esse modelo de tela de gato também pode ser considerado para os adultos, principalmente se ele costuma roer as coisas. Isso porque o modelo 5x5 permite que o felino coloque todo o focinho dentro do furo da tela de proteção, permitindo que ele consiga morder as cordinhas com mais facilidade. Com o buraco menor do tipo 3x3, o gato não consegue fazer isso. Já a tela de proteção para gatos 5x5 é suficiente para adultos mais tranquilos e que não costumam ficar mordendo e roendo. Nesses casos, vale investir na tela de gato 5x5, que é mais fácil de ser encontrada.
                        </p>
                        <p>A tela de proteção para gatos em todas as janelas da casa é a primeira coisa que você deve providenciar ao decidir adotar um gato. Os felinos são animais exploradores e curiosos: eles amam observar a rua e conhecer todos os cantos da casa. A falta de uma tela para gatos pode fazer com que as aventuras em ambientes não adaptados resultem em acidentes graves e até fugas. Existem dois tipos de tela de proteção para gatos que normalmente são usados: 3x3 e 5x5 determinam o tamanho dos ?buracos? na tela para janela - gatos ficam bem mais seguros com uma delas. Quer entender os modelos de rede de proteção para gatos, a diferença entre os tamanhos e qual modelo é mais indicado para sua casa com patinhas? Confira aqui!
                        </p>
                        <h2><b>A tela de proteção para gatos impede fugas e acidentes</b></h2>
                        <p>A importância da tela para gatos é ignorada por muita gente, mas é essencial para se ter uma casa segura para felinos. Gatinhos, mesmo que castrados, podem fugir e a tela de janela para gatos impede que isso ocorra. A criação indoor (ou seja, sem acesso às ruas) aumenta a expectativa de vida do seu animal. Os gatos são animais que têm seus instintos selvagens bem presentes. Apesar de serem domesticados, ainda possuem uma conexão muito grande com o comportamento explorador de seus ancestrais. Isso significa que eles amam desbravar o mundo, com sua curiosidade única. Isso pode acabar levando às famosas fugidinhas.
                        </p>
                        <p>Os felinos que moram em casas seguras com tela para gatos não fugir vivem, em média, 16 anos. Já os gatos ?livres? costumam viver cerca de oito anos. Isso porque, ao impedir as voltinhas com a tela de proteção, gatos têm menos chance de contrair doenças graves, se envolver em briga de gato ou serem atropelados, situações infelizmente comuns ao sair para a rua. Colocar uma tela de proteção para gatos na sua casa para acolher seu gatinho é, antes de tudo, um ato de amor.
                        </p>
                        <h2><b>Tipos de tela de proteção: qual a diferença entre os tamanhos 3x3 e 5x5?</b></h2>
                        <p>A principal diferença entre os tipos de telas de proteção para janelas 3x3 e 5x5 é o tamanho dos buracos. Na tela de gato de 3x3, o tamanho é menor (3 cm). Já no modelo 5x5, os furos medem 5 cm. Essa tela de gatos é mais comum de encontrar e geralmente é utilizada em casas e apartamentos onde há crianças e cachorros maiores. Em todos os casos, o ideal é instalar rede de proteção para gatos feita com um material firme e resistente. Os tipos de tela nylon ou polietileno resistem às garras e dentinhos ferozes dos pequenos felinos. Mas afinal, como colocar tela na janela para gatos? Primeiro, saiba que a tela proteção para gatos deve sempre ser instalada de dentro para fora, nunca de forma contrária.
                        </p>
                        <p>A tela para gatos precisa ser bem fixada nas laterais para que o animal não consiga passar (lembre-se de que eles podem ser bem flexíveis!). Para isso, é preciso fazer furos na parede com uma furadeira, onde serão colocados os ganhos. Eles devem ser bem fixados na parede e ter uma distância entre si de, em média, 30 cm. A tela proteção para gatos será colocada nesses ganchos e deve ficar bem esticada. Como a tela para gatos pode ficar um pouco maior, a sobra deve ser cortada. Para aumentar a sustentação da rede de proteção para gatos, pode-se usar também um cordão naval, entrelaçado entre os ganchos.
                        </p>
                        <h2><b>Qual modelo de rede de proteção para gatos é indicado?</b></h2>
                        <p>Na hora de escolher a rede de proteção para gatos ideal para o seu bichano você precisa considerar duas coisas: a idade de gato e o comportamento geral dele (ou seja, se ele tem o costume de arranhar ou roer superfícies). Vamos te explicar melhor! No caso de filhotinhos, por exemplo, a tela para gatos 3x3 (que tem o buraco bem menor) impossibilita que o gato passe por ela, evitando acidentes e fugas. Esse modelo de tela de gato também pode ser considerado para os adultos, principalmente se ele costuma roer as coisas. Isso porque o modelo 5x5 permite que o felino coloque todo o focinho dentro do furo da tela de proteção, permitindo que ele consiga morder as cordinhas com mais facilidade. Com o buraco menor do tipo 3x3, o gato não consegue fazer isso. Já a tela de proteção para gatos 5x5 é suficiente para adultos mais tranquilos e que não costumam ficar mordendo e roendo. Nesses casos, vale investir na tela de gato 5x5, que é mais fácil de ser encontrada.
                        </p>

                        <h2><b>Ao instalar tela para gatos, é preciso ter alguns cuidados e manter o pet afastado</b></h2>
                        <p>Na hora de instalar ou trocar a tela de proteção para gatos, alguns cuidados devem ser tomados. Deixar o gato em um local sem proteção é muito perigoso, por conta dos riscos de fuga e acidentes. Por isso, se você ainda não tem rede de proteção para gatos ou está se mudando para uma casa nova que não tenha tela, não deixe seu bichano entrar no local. Pode parecer exagero, mas não é. Apenas deixe-o entrar em um cômodo com janelas ou varandas quando estiver telado. Enquanto estiver colocando a tela para gatos, não permita que o animal fique no mesmo ambiente. Prenda-o em outro cômodo durante a instalação para evitar problemas. Depois que  a tela de gato já tiver sido instalada, tenha cuidado para não desgastar. Limpe apenas com água e sabão neutro, pois produtos mais abrasivos podem acabar enfraquecendo o material. Além disso, nunca remova os ganchos, nem para limpar. 
                        </p>
                        <h2><b>Prefira um profissional na hora de instalar a tela de janela para gatos</b></h2>
                        <p>Você pode até colocar a rede de proteção para gatos sozinho, mas o risco de uma instalação errada que leve a acidentes no futuro é grande. Mesmo que você saiba o passo a passo de como instalar tela de proteção, isso pode não ser o suficiente, pois existem equipamentos adequados para isso e é muito mais complicado na prática do que na teoria. Existem profissionais especializados na instalação de tela de proteção para gatos, que realizam todo o serviço e garantem a segurança. Muitas pessoas optam por instalar sozinhas para não gastar mais dinheiro com a instalação profissional. Para comprar uma tela de proteção para gatos, o valor é medido de acordo com o metro quadrado. Normalmente, para 1 m² de tela para gatos, preço é de R$ 40 a R$ 50. Um exemplo: se sua janela tiver 4 m² e o valor de tela de proteção for de R$ 50, você gastará 4 X 50 = 200. Ou seja, nessa rede de proteção para gatos, preço será de R$200. 
                        </p>
                        <p>Para o serviço de instalação da tela de proteção para gatos, o preço também muda de acordo com o tamanho. Normalmente, o metro quadrado para instalação custa entre R$ 15 e R$40. Usando o exemplo de rede de proteção para gatos de 4 m² e supondo que o valor de instalação seja de R$20 por metro quadrado, você gastará 4 X 20 = R$80. Como só de comprar a tela de proteção para gatos o preço é elevado, muitos abrem mão da instalação. Mas a realidade é que vale bem mais a pena gastar um pouco mais para instalar do que economizar e ter um resultado ruim. Lembrando que colocar a tela de proteção para gatos parece muito simples, mas um pequeno erro pode comprometer toda a estrutura, fazendo seu gato achar qualquer brecha para fugir e até mesmo sofrer algum acidente grave ao encostar na tela mal colocada. 
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
                                <p>Repórter auxiliar do Patas em 2019, uma verdadeira senhora no corpo de jovem, apaixonada por literatura, um bom café e muitos gatos! Sou tutora da Kali, minha princesa felina de 1 ano e 7 meses, além do Leo e da Leona, meus gêmeos de 8 meses. Kali é a prova de que gatos podem ser carinhosos, leais, carentes e nem um pouco traiçoeiros. Quanto ao Leo e a Leona, garanto: fazem tanta bagunça quanto qualquer labrador!</p>
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
                            <small>Saúde</small>
                            <h2><b>Gato vomitando: saiba as causas, como identificar, problemas de saúde relacionados e o que fazer</b></h2>
                            <small>por Hyago Bandeira ? publicado em 16 nov 2021 - 17:36</small>
                        </div>
                        <br>
                        <p>O gato vomitando não é uma situação muito incomum. Apesar de muitas vezes estar relacionado à eliminação bolas de pelo, é importante ficar atento à frequência e aspecto dos vômitos de gato, já que é um sintoma comum a alguns problemas de saúde. Se você tem um gato vomitando amarelo, espuma branca ou ração, é provável que ele esteja com algum desequilíbrio no organismo que precisa ser investigado. Se o vômito incluir sangue ou fezes, o atendimento precisa ser imediato. Doenças como linfoma, insuficiência renal e diabetes são algumas das complicações de saúde que podem ser apontadas com o vômito de gato. O Patas da Casa preparou um guia com tudo que você precisa saber sobre o gato vomitando!</p>						
                        <h2><b>?Meu gato está vomitando?: observar aspecto do vômito é fundamental</b></h2>
                        <p>Para identificar o que o vômito de gato significa é necessário olhar de perto o aspecto do conteúdo que saiu pela boca do pet. Se for uma eliminação de bola de pelos, não será difícil identificar os pelos emaranhados junto com um líquido amarelo. Mas outros aspectos e colorações podem  estar associadas a uma causa diferente. Além disso, é importante prestar atenção no momento em que o gato vomita, para saber se o vômito está ocorrendo após uma refeição ou ter tomado algum remédio, por exemplo. As características mais comuns do vômito de gato são:
                        </p>
                        <ul>
                            <li><b>Vômito amarelo:</b> geralmente o gato vomitando amarelo indica que o estômago do animal está vazio e a única substância que restou para ser expelida é o líquido biliar. Problemas de gastrite também podem estar associados ao vômito de gato amarelo, que costuma ocorrer após episódios frequentes de vômitos de cor marrom.
                            </li>
                            <li><b>Espuma branca:</b> o gato vomitando espuma branca pode indicar alguma irritação no sistema digestivo. A frequência dos vômitos desse tipo deve ser observada pelo tutor. Caso esteja ocorrendo de forma recorrente, o ideal é procurar a ajuda de um profissional para verificar o caso do seu pet, já que existem várias possibilidades associadas com esse tipo de vômito de gato.
                            </li>
                            <li><b>Vômito marrom:</b> em casos graves, a coloração marrom pode indicar parasitas, linfomas alimentares, gastrite e complicações no sistema gastrointestinal. Entretanto, esse tipo de vômito também pode estar associado a algo menos grave, como os casos de gato vomitando ração. Nesse caso, é possível identificar os grãos que foram mal digeridos. 
                            </li>
                            <li><b>Vômito vermelho:</b> a cor vermelha está associada a problemas de coagulação, tumores, lombrigas, tênias e outras questões. O gato vomitando sangue precisa ser examinado por um médico veterinário com urgência, pois pode se tratar de um caso mais grave. 
                            </li>
                            <li><b>Vômito com fezes:</b> esse é um dos quadros que mais indica a necessidade de urgência no atendimento veterinário. O vômito de gato com fezes pode ser causado por algum tipo de obstrução no estômago.
                            </li>
                        </ul>	
                        <h2><b>Gato vomitando: o que pode ser?</b></h2>
                        <p>Por mais que o aspecto do vômito indique qual a gravidade do problema, existem várias doenças que podem ser associada a mesma característica do vômito de gato. O gato vomitando ração, por exemplo, na maioria das vezes não apresenta grandes ameaças à saúde animal. Entretanto, a regurgitação também pode indicar má formação do canal esofágico, alergia a ração ou a ingestão de algum objeto estranho. As doenças e condições mais comuns associadas ao vômito de gato são:
                        </p>
                        <ul>

                            <li>insuficiência renal</li>
                            <li>envenenamento</li>
                            <li>pancreatite</li>
                            <li>diabetes</li>
                            <li>lipidose hepática felina</li>
                            <li>doença inflamatória intestinal felina</li>
                            <li>alergia alimentar</li>
                            <li>tumores</li>

                        </ul>
                        <h2><b>Gato vomitando: o que fazer?</b></h2>
                        <p>É necessário que os tutores mantenham a calma quando o gato vomita. Depois de analisar o aspecto do vômito, é importante observar o comportamento do gato depois de passar mal. É normal e esperado que o felino fique mais quietinho e demonstrando cansaço após o ocorrido. Mesmo assim, o mais indicado é tirar a água e a ração do pet para que ele não volte a vomitar. A ingestão de água ou comida deve ser feita aos poucos para evitar isso. O felino também não pode ficar desidratado, até porque o vômito faz com que ele perca certos nutrientes e alimentos.
                        </p>
                        <p>Se o gato não apresentar nenhuma mudança de comportamento, pode ser que tenha sido apenas um vômito isolado. De qualquer forma, manter o check-up do seu gatinho sempre em dia é a melhor forma de prevenir doenças e fazer diagnósticos precoces. 
                        </p>
                        <h2><b>Como lidar com o gato vomitando bolas de pelo?</b></h2>
                        <p>Os gatos são extremamente higiênicos. Eles mesmos fazem a própria limpeza com a língua, o que pode resultar na eliminação de bolas de pelo. Também chamada tricobezoar, a bola de pelo vai se formando no estômago conforme a língua áspera do felino remove a poeira e pelos soltos. No caso do gato de pelo longo, é comum que a eliminação via oral ocorra pelo menos uma vez por semana, principalmente na primavera e no outono. O único problema é quando essas bolas não conseguem ser eliminadas e acabam ficando presas no intestino do animal, podendo causar dor abdominal, diarreia ou fezes ressecadas, falta de apetite, apatia e vômitos. A melhor forma de evitar as bolas de pelo é escovando o bichano frequentemente para remover pelos mortos. A alimentação do gato também pode ajudar: uma ração rica em fibras ajuda a facilitar o trânsito dos pelos no sistema digestivo do pet. 
                        </p>
                        <h2><b>Vômito de gato frequente: tratamento depende da causa do problema</b></h2>
                        <p>	Se o felino está vomitando frequentemente é necessário que o tutor busque um profissional. Isso é essencial para descobrir a origem do problema e fazer o tratamento adequado. As soluções caseiras muitas vezes acabam atrasando a melhora. Nos casos graves, antibióticos e outros medicamentos podem ser indicados, dependendo da causa. O diagnóstico preciso só poderá ser feito pelo médico veterinário. De modo geral, evitar comidas gordurosas e açucaradas na dieta do felino é algo que pode ser adotado para evitar o caso de gato vomitando. Se além do vômito o felino apresenta outros sintomas, o tutor deve se preocupar um pouco mais. Diarreia, inchaço, febre, sinais de depressão felina, gengivas pálidas ou amareladas são alguns dos sinais que devem deixar o tutor alerta para quadros mais graves.
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
                                <p>Repórter do Patas desde o final de 2020 e jornalista em formação pela UFRJ. Me apaixonei ainda mais pelo universo dos cachorros e gatos a partir do meu trabalho no site. Apesar de não ser um pai de pet atualmente, sinto imensa gratidão por ser um colaborador dessa rede de apoio para os tutores.</p>
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
                            <h2><b>Hamster:5 cuidados básicos para manter seu pet saudável</b></h2>
                            <small>por Ingrid Marques ? publicado em 9 de ago de 2019</small>
                        </div>
                        <br>
                        <p>Hamsters exigem menos cuidados, se comparados aos outros animais domésticos. No entanto, isso não quer dizer que eles não necessitam de atenção: os hábitos desses bichanos são bem diferentes em relação aos gatos e cachorros, que, se não forem respeitados, podem fazê-lo correr risco de vida.
                        </p>
                        <p>Se você considera investir em um hamster, confira cuidados e dicas para que eles tenham uma vida saudável e feliz! 
                        </p>
                        <h2><b>Dê alimentação adequada</b></h2>
                        <p>Um hamster feliz é um hamster bem alimentado! Eles são bichinhos onívoros, o que significa que podem comer praticamente tudo. O mais indicado é comprar rações específicas para cada tipo de roedor. Como são apaixonados por petiscos, complemente a alimentação com frutas, legumes, grãos e sementes. 
                        </p>
                        <p>Não esqueça de fatiar em partes pequenas para que o hamster não engula tudo e sofra com má digestão Outra dica é não deixar comida velha na gaiola, já que ele pode passar mal. Sempre disponibilize água limpa e fresca. 
                        </p>
                        <h2><b>Higienize a gaiola para Hamster</b></h2>
                        <p>A gaiola deve ser higienizada de uma a duas vezes por semana, já que a higiene do bichano se baseia na limpeza do seu habitat natural. Lave com sabão neutro e água e deixe secar. Troque o forro da gaiola e utilize serragem para deixar mais confortável. 
                        </p>
                        <p>Roedores são tão higiênicos quanto os gatos: eles passam boa parte do dia se lambendo. Essa atitude faz com que eles sejam bem limpinhos, mas caso queira limpá-lo ainda mais, não é indicado dar banho com água, isso pode fazer com que o hamster corra risco de vida. Procure alternativas, como banho à seco.  
                        </p>
                        <h2><b>Forneça espaço na gaiola</b></h2>
                        <p>Apesar de serem pequenos, os hamsters necessitam de espaço em seu habitat natural, por isso, na hora de comprar a gaiola, não leve em consideração somente o preço, lembre-se que os hamsters gostam de correr e brincar, e um espaço pequeno pode deixá-lo entediado e triste. 

                        <h2><b>Respeite os horários dele</b></h2>
                        <p>Roedores são animais noturnos e mais ativos após as seis horas da tarde, portanto, ele pode ficar estressado caso queira acordá-lo de manhã. Respeite os horários fisiológicos do animal e, assim, ele será mais feliz. 

                        <h2><b>Invista em brinquedos para hamster</b></h2>
                        <p>Roedores são agitados e espertos.  Quando não estão descansando, adoram brincar e necessitam movimentar-se para não sentirem tédio. Por isso, a gaiola do pet deve ser equipada com brinquedos, como roda giratória, escadas e tubos que permitam que ele corra para todos os lados.
                        </p>
                        <p>A bola de exercícios é uma opção perfeita para que o hamster brinque fora da gaiola sem correr perigos externos, como entrar embaixo de um eletrodoméstico, roer fios elétricos ou entrar em ralos e canos e nunca mais ser encontrado. Para que o bichano não fique estressado, a brincadeira na bola não deve passar de vinte minutos. 
                        </p>
                        <p>Hamsters são animais dóceis, brincalhões, amigáveis e excelentes bichos de estimação para crianças e adultos. Dar brinquedos, oferecer petiscos e deixar a gaiola em um quarto separado do restante da casa durante o dia, para que ele durma bem, são alguns cuidados básicos para que ele seja um animal feliz e saudável. 
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
                                <p>Jornalista, falante, que adora cultura, comida, filmes e signos! Temperamental, é apaixonada por animais e não resiste a um ?catiorineo?. Ama levar informação para todas as pessoas, acredita que conteúdo sério e de qualidade melhora a vida de todos, inclusive dos bichinhos!</p>
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
                            <h2><b>Aves domésticas ? Cuidados especiais para o bem-estar</b></h2>
                            <small>por PETZ ? publicado em 27 de jun de 2017</small>
                        </div>
                        <br>
                        <p>Não há dúvidas de que os cães e os gatos são os animais domésticos mais populares, no entanto, as aves domésticas têm ganhado mais espaço nas casas dos amantes de animais ao longo dos últimos anos.
                        </p>
                        <p>Quer fazer parte dos tutores das aves domésticas? Aqui vão algumas dicas que te ajudarão a dominar o mundo dos pássaros e ser um ótimo tutor para esses pets.
                        </p>
                        <h2><b>Gaiola para aves domésticas</b></h2>

                        <p>A gaiola é essencial para a felicidade de uma ave (lembre-se que essa será a casa do seu pet). Para escolher o melhor habitat, é necessário mais do que gosto pessoal, e você deve estar atento ao tamanho do seu pássaro, espécie e necessidades particulares. Lembre-se: cada pássaro possui necessidades únicas.
                        </p>
                        <p>Como regra geral, você deve ofertar a maior gaiola que você puder adquirir. Como o pássaro vai passar a maior parte da vida dentro dela, é importante que haja espaço para que ele se movimente e se exercite o mais livremente possível.
                        </p>
                        <p>Espécies como canários gostam de espaço para voar, enquanto as cacatuas gostam de barras para escalar. O essencial é que o pet possa abrir as asas completamente e erguer a cabeça sem tocar a gaiola.
                        </p>
                        <h2><b>Onde colocar a gaiola?</b></h2>
                        <p>A gaiola deve ficar em um lugar da casa que seja, de maneira geral, ?estável?. Ou seja, que seja livre de mudanças de temperatura e umidade, além de ser livre de barulhos altos e odores fortes. Evite ao máximo locais que exponham sua ave a situações estressantes. Um bom ambiente é aquele onde a ave possa curtir a família e as atividades dos humanos.
                        </p>
                        <p>Evite deixar a ave na cozinha, pois algumas panelas, como a teflon, liberam gazes que podem ser tóxicos para as aves.
                        </p>
                        <h2><b>Itens de primeira ordem para aves domésticas</b></h2>
                        <p>Providencie itens básicos e apropriados para o tamanho e espécie do passarinho: bebedor, comedouro e forros para gaiola, por exemplo. Certifique-se de que a comida e a água estejam sempre acessíveis para o seu pet. Tenha também kit de primeiro-socorros, produtos para limpeza da gaiola, e outros itens que auxiliam no cuidado do seu passarinho.
                        </p>
                        <p>Oferte aos seus pássaros brinquedos que sejam apropriados a sua espécie. Aves gostam de itens que lhe mantenham ocupadas e estimuladas, como escadas, cordas, bolas de cores e tamanhos variados e balanços, entre outros.
                        </p>
                        <p>Providencie uma variedade grande de brinquedos e faça uma espécie de ?rodízio? entre eles, permitindo que seu pássaro não fique entediado e tenha uma vida mais feliz. No entanto, não se esqueça de que brinquedos não substituem uma relação próxima entre você e o pet, e passar um tempo com sua ave é a melhor maneira de construir esse vínculo.
                        </p>
                        <p>Dê tempo e espaço para sua ave doméstica: quando ela chegar ao novo lar, não fique a rodeando demais. Deixe que ela se adapte ao local e ao novo estilo de vida. Controlar o barulho nos locais mais próximos do pássaro ajuda a reduzir o estresse e dá a ideia de um ambiente calmo.
                        </p>
                        <p>Aos poucos, passe a envolver seu pet na rotina diária e o introduza a vida da família. Um bom passo inicial é ofertar alguma atividade calma para sua ave e, aos poucos, você pode introduzir sons que sejam agradáveis no local em que o pet mais passa tempo. Com o tempo a ave se acostumará ao seu novo lar.
                        </p>
                        <p><b>Aves domésticas</b> são encantadoras e ótimas companhias! Você pode encontrar todos os itens necessários para seu pássaro na unidade Petz mais próxima a você!
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
                                <p>A Petz, anteriormente chamada de Pet Center Marginal, é uma rede brasileira de pet shops. É a maior rede de pet shop do Brasil e é especializada em serviços e venda de produtos para animais de estimação e animais domésticáveis exóticos.</p>									</div>
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
                            <h2><b>Cuidados que todo pai ou mãe de coelho deve ter com o pet</b></h2>
                            <small>por Gabriel Arruda ? publicado em 13 de abr de 2020</small>
                        </div>
                        <br>
                        <p>Antes de adotar um pet, é preciso analisar diversos fatores, desde questões financeiras até os cuidados mais específicos que cada um necessita em seu dia a dia. E para quem está querendo fugir do convencional, ou seja, de cães e gatos, e pretende adotar um coelho, deve-se estar atento especialmente sobre a rotina da espécie.
                        </p>
                        <h2><b>Cuidados com o coelho: alimentação</b></h2>
                        <p>Bem, a primeira coisa que os pais devem ter ciência sobre a alimentação de um coelho é que ela não deve ser à base de ração, melhor dizendo, esses orelhudos não podem se alimentar apenas com rações industrializadas. Mesmo com altos níveis nutricionais de algumas, esses peludinhos precisam de um sustento um pouco mais ?natural?.
                        </p>
                        <p>É preciso ter em mente que as rações devem servir apenas como um acréscimo ao invés de ser o pilar principal na alimentação de um coelho, que necessita consumir muita fibra para que tenha uma boa vida.
                        </p>
                        <p>Oferecer uma dieta à base de fibras vai manter o trato gastrointestinal do pet saudável, por conseguinte prevenindo algumas doenças como a diarreia, por exemplo, que é bem recorrente nesses peludos. Além da diarreia, muitos coelhos podem apresentar timpanismo, que é um problema estomacal causado pelo excesso de ração. (Confira nossa outra matéria sobre os principais cuidados na alimentação dos coelhos)
                        </p>
                        <p>Se engana, também, quem acha que eles só devem viver de legumes, como cenoura, ou verduras. Pois é, os coelhos são mais complexos do que a maioria de nós imagina quando o assunto é alimentação! 
                        </p>
                        <h2><b>Cuidados com o coelho: ambiente</b></h2>
                        <p>É bem comum ver pessoas mantendo coelhos em gaiolas 24 horas por dia, mas a real é que esses animais precisam de uma boa dose de liberdade em sua rotina. O coelho é um animal bastante enérgico e necessita de um ambiente amplo para sobreviver. Além de mantê-lo saudável, caminhadas diárias farão com que o intestino do peludo funcione perfeitamente, livrando-o de possíveis complicações referentes ao ?sedentarismo forçado?.
                        </p>
                        <p>Além disso, os coelhos são animais muito sensíveis e podem até mesmo falecer caso se assuste com algo. Por isso, é necessário analisar o ambiente que serão expostos, principalmente se houver algum outro pet dentro de casa.
                        </p>
                        <h2><b>Cuidados com o coelho: higiene</b></h2>
                        <p>Preservar uma boa higiene no ambiente onde o peludo vive é fundamental para a saúde dele. Alguns cuidados devem ser feitos regularmente, como a limpeza da gaiola e dos lugares onde ele fica, assim como o bebedouro e o comedouro.
                        </p>
                        <p>Sobre banhos, dificilmente um coelho precisará tomar um, pois, assim como os gatos, eles cuidam da própria limpeza. Portanto, quem tem um orelhudo em casa raramente irá se preocupar em lavá-lo.
                        </p>
                        <h2><b>Atividades físicas</b></h2>
                        <p>Sim, os coelhos precisam de uma rotina regular de exercícios, pois são mamíferos muito ativos. Além de deixá-los livres durante algumas partes do dia, isto é, fora da gaiola, é preciso realizar alguns estímulos, entre eles as brincadeiras. Além disso, lembre-se que esses são animais muito inteligentes e podem assimilar alguns ensinamentos, basta dedicar um pouco de tempo e paciência.
                        </p>
                        <h2><b>Como pegá-lo corretamente</b></h2>
                        <p>Para quem não sabe, os coelhos não curtem muito a ideia de serem carregados no colo, pois se sentem desprotegidos e inseguros. Caso precise segurar o seu pet, passe a mão pelo peito e pelas patas traseiras em vez de agarrá-lo, isso fará com que ele entenda que isso não é uma ameaça. Lembre-se de que esses orelhudos são presas na vida selvagem e instintivamente sentem medo de movimentos rápidos.
                        </p>
                        <p>Vale destacar que pegar coelhos pela orelha é extremamente errado e pode trazer problemas gravíssimos ao pet, além de ser agressivo e doloroso. Pegá-lo pelas pernas, rabo ou pescoço também não é recomendado, pois são lugares sensíveis e o pet pode criar uma associação negativa entre interação humana e dor.
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
                                <p>É Jornalista, apaixonado por pets e esportes. Está sempre em busca de novos desafios, justamente pela curiosidade que o toma conta. Pai de um Beagle chamado Johnny, mais conhecido como "o Destruidor".</p>									
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
                            <h2><b>Animais de estimação pequenos: como escolher o pet ideal?</b></h2>
                            <small>por Petz ? publicado em 16 Abr de 2018</small>
                        </div>
                        <br>
                        <p>Escolher um pet não é fácil, principalmente para pessoas que moram em apartamentos ou pequenas casa e não podem oferecer espaço suficiente aos novos membros da família. Nesses casos, é necessário analisar quais animais de estimação pequenos combinam mais com o cotidiano de cada um.
                        </p>
                        <p>Muitos tutores deixam de ter um bichinho de estimação, pois acham que morar em locais pouco espaçosos é um empecilho, já que muitos dos pets precisam de espaço para brincar ou até mesmo descansar.
                        </p>
                        <p>Contudo, existem diversas variedades de animaizinhos pequenos que podem ser perfeitos para pessoas com pouco espaço, dinheiro e tempo!
                        </p>
                        <h2><b>Como escolher o animal de estimação certo para mim?</b></h2>

                        <p>Muitas pessoas acham que os cães são os únicos bichinhos de estimação, porém outros animais também podem estar incluídos nesse grupo. Por isso, escolher o pet ideal tem a ver não só com raças de cachorro, mas sim diversas espécies de animais.
                        </p>
                        <p>Sendo asssim, como escolher o animal de estimação certo? Antes de tudo, é importante pensar nos gastos ? alimentação, higiene, consultas veterinárias e outros ? que cada pet trará para o novo cotidiano e então analisar se é possível incluí-lo as outras despesas.
                        </p>
                        <p>Caso o pet escolhido seja um animal exótico ou silvestre, é necessário obter todos os documentos necessários, nos quais permitem a estadia dele em uma propriedade, para que não seja considerado um ato ilegal.
                        </p>
                        <p>Alguns tipos de bichinhos não são permitidos em determinados condomínios, por isso é importante pesquisar as leis sobre cada moradia antes de decidir qual será o animalzinho ideal.
                        </p>
                        <h2><b>Alguns dos melhores animais de estimação pequenos</b></h2>

                        <p>A indecisão na hora de decidir um novo amigo de estimação pode ser grande, por isso nós separamos alguns animais de estimação pequenos e diferentes perfeitos para pessoas que buscam praticidade e muito amor.
                        </p>

                        <h2><b>Furão</b></h2>
                        <p>Os furões são pets muito carinhosos, brincalhões e adoram se sentir livres, mas podem morar em casas pequenas sem nenhum problema!
                        </p>
                        <p>Na maioria das vezes, os furões costumam morar em gaiolas, ainda mais porque adoram se esconder. Contudo, para brincar, os pequenos preferem sair da casinha e explorar os diversos locais da casa.
                        </p>
                        <p>Esse bichinho pode ser perfeito para aqueles que não possuem muito tempo, já que não exigem do tutor muitas atividades; mas precisam sair de suas gaiolas pelo menos uma vez por dia. Outra grande vantagem é que dificilmente fazem barulhos altos.
                        </p>
                        <p>Assim como os outros pets, os furões precisam tomar vacina anualmente, visto que possuem predisposição a ter doenças crônicas e custosas.
                        </p>

                        <h2><b>Chinchila</b></h2>
                        <p>Para pessoas mais calmas, que adoram ter dias tranquilos, as chinchilas são ótimos animais de estimação. Basicamente, são extremamente dóceis, não exigem muito esforços para realizar suas atividades físicas e podem viver tranquilamente em uma gaiola.
                        </p>
                        <p>Outra vantagem é o silêncio que proporcionam para o ambiente, já que são bichinhos extremamente silenciosos, até quando estão se divertindo. Mas além de serem silenciosos, eles mesmo preferem morar em ambientes mais calmos e sem barulho.
                        </p>
                        <p>Por isso, pessoas que adoram barulho, sons altos e bagunça, talvez as chinchilas não sejam as melhores opções.
                        </p>
                        <h2><b>Peixe</b></h2>
                        <p>Os peixinhos são animais perfeitos, principalmente para pais que querem dar um bichinho de estimação para seus filhos.
                        </p>
                        <p>Isso porque muitos peixes não precisam de um grande espaço para viver, nem exigem cuidados rigorosos e difíceis de serem atendidos. Contudo, existem espécies de peixes que exigem uma atenção e até mesmo um espaço maior para poderem viver saudáveis.
                        </p>
                        <p>Para aqueles que não possuem muito tempo em sua rotina, os peixes podem ser a melhor opção, ainda mais porque não exigem do proprietário nenhum tipo de atividade física.
                        </p>
                        <h2><b>Pássaro</b></h2>
                        <p>Já os pássaros podem ser perfeitos para diversas pessoas, já que cada espécie possui diferentes características, desde as mais interativas até as mais reservadas. O tamanho dos pássaros também varia, por isso só depende da pessoa responsável pela escolha saber qual o melhor pet para ela.
                        </p>
                        <p>Segundo a veterinária Mariana Pestelli, algumas das espécies, principalmente aquelas de bico torto, tendem a fazer mais barulho, por isso verifique se no local onde você mora é permitido ou não ter animais de estimação que emitem sons altos.
                        </p>
                        <p>Contudo, para quem busca um pet de estimação divertido, bonito e ainda por cima prático, um pássaro pode ser a escolha perfeita!
                        </p>
                        <h2><b>Cachorro</b></h2>
                        <p>Um dos pets mais desejados é o cachorro. Assim como os pássaros, cada raça de cães possui uma determinada característica, por essa razão é capaz de agradar a muitas pessoas, sejam elas mais calmas ou agitadas.
                        </p>
                        <p>Para pessoas que moram em apartamentos, as melhores raças de cães são: Poodle, Yorkshire, Maltês, Shih Tzu, Lhasa Apso, Pug, Buldogue Frances e outras. Mas vale lembrar que quando cachorros não possuem muito espaço para se exercitar e brincar, é necessário que saiam para passear.
                        </p>
                        <p>Alguns cães são muito ligados aos seus tutores e ficam muito tristes quando passam muito tempo longe deles. Por isso, pessoas que costumam ficar fora de casa o dia todo, o mais indicado é escolher raças mais independentes.
                        </p>
                        <h2><b>Gato</b></h2>
                        <p>Assim como os cães, os gatos são animais muito desejados e admirados. Muitas vezes, pessoas que buscam um animal independente, amável, prático e tranquilo, acabam escolhendo um gatinho, afinal, eles oferecem tudo isso e muito mais!
                        </p>
                        <p>Os gatos são muito calmos e não exigem dos tutores grandes esforços para praticar exercícios. Além disso, suas exigências podem ser atendidas de maneira prática e fácil, já que apenas precisam de uma caixa de areia, um comedouro, um bebedouro, uma caminha, brinquedinhos e muito amor para poderem viver felizes e satisfeitos.
                        </p>
                        <h2><b>Qual animal de estimação combina comigo?</b></h2>

                        <p>Além desses, é possível encontrar muitos outros animais de estimação pequenos para morar com quem deseja um amigo.
                        </p>
                        <p>Por isso, se você ainda não sabe qual animal de estimação combina com você, não se preocupe, continue ligado aqui em nosso site e confira outros posts sobre animais de estimação.			
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
                                <p>A Petz, anteriormente chamada de Pet Center Marginal, é uma rede brasileira de pet shops. É a maior rede de pet shop do Brasil e é especializada em serviços e venda de produtos para animais de estimação e animais domésticáveis exóticos.</p>									
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
                Conteúdo não encontrado <a href="cuidados.jsp" class="alert-link">voltar para Cuidados</a>
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
