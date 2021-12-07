/* TESTE MODAL
var modalBtn = document.querySelector('.modal-btn');
var modalBg = document.querySelector('modal-bg');

modalBtn.addEventListener('click', function(){
    modalBg.classList.add('bg-active');
});
*/

$(window).on('load', function () {
        $('#preloader .inner').fadeOut();
        $('#preloader').delay(1000).fadeOut('slow'); 
        $('#status').delay(350).css({'overflow': 'visible'});
    });


            function mostra(id){
            if(document.getElementById(id).style.display === 'none')
                {
                document.getElementById(id).style.display = 'block';
                }
            else{
                document.getElementById(id).style.display = 'none';
                }
            };
            function mostra2(id){
			if(document.getElementById('efeitoFade'&&'modal1').style.display === 'none')
				{
				document.getElementById('efeitoFade').style.display = 'block';
				document.getElementById('modal1').style.display = 'block';
				document.documentElement.style.overflow = 'hidden';
				document.body.scroll = "no";
				}
			else{
				document.getElementById('efeitoFade').style.display = 'none';
				document.getElementById('modal1').style.display = 'none';
				}
			};

        function curtir(a) {
            var x = document.getElementById('btnLike');
            var y = document.getElementById('divLike');

            if (a === '1') {
                x.style.background = 'url(lib/img/PawLike.png) center no-repeat';
                x.style.backgroundSize = 'cover';

            } 
            else {
                if (a === '2') {
                    x.style.background = 'url(lib/img/PawLike2.png) center no-repeat';
                    x.style.backgroundSize = 'cover';
                    x.style.transitionDuration = '0.25s';

                    y.style.background = 'url(lib/img/PawLikeG2.png) center no-repeat';
                    y.style.backgroundSize = 'contain';
                    y.style.transitionDuration = '0.5s';
                    y.style.visibility = 'visible';
                    y.style.opacity = '2';
                    $("#divLike").animate({opacity: '0'},1000,"linear");
                } 
                else {
                    alert("O Gusta é fura-olho");
                }
            }
        };
        function mostra3(id){
			if(document.getElementById('modal3').style.display === 'none')
				{
				document.getElementById('efeitoFade').style.display = 'block';
				document.getElementById('modal1').style.display = 'none';
				document.getElementById('modal3').style.display = 'block';
				document.documentElement.style.overflow = 'hidden';
				document.body.scroll = "no";
	
				}
			else{
				document.getElementById('modal3').style.display = 'none';
				}
			};
function esconder(id){
                document.getElementById('efeitoFade').style.display = 'none';
                document.getElementById('modal1').style.display = 'none';
                document.getElementById('compartilharPublicacao').style.display = 'none';
                document.documentElement.style.overflow = 'auto';
                document.body.scroll = "yes";
            }

            function mostrarCompartilhar(id){
            if(document.getElementById('efeitoFade'&&'compartilharPublicacao').style.display === 'none')
                {
                document.getElementById('efeitoFade').style.display = 'block';
                document.getElementById('compartilharPublicacao').style.display = 'block';
                document.documentElement.style.overflow = 'hidden';
                document.body.scroll = "no";
                }
            else{
                document.getElementById('efeitoFade').style.display = 'none';
                document.getElementById('compartilharPublicacao').style.display = 'none';
                }
            }