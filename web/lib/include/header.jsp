<nav class="navbar bg" id="navbar">
    <div class="container-fluid">
        <div class="container">
            <div class="row align-items-center">
                <div class="col">
                    <a class="navbar-brand" href="index.jsp">
                        <img src="lib/img/Brasao.png" alt="" width="50" class="d-inline-block align-text-bottom">
                            <text class="tituPet" id="tituNav" >PetCaring</text>
                    </a>
                </div>
                <div class="col-md-auto">
                    <form class="d-flex" action="login.jsp">
                        <input class="form-control align-middle" type="search" placeholder="Pesquisar" aria-label="Search">
                    </form>
                </div>
                <div class="col">
                    <a href="cuidados.jsp"><button type="button" class="imgBtn" id="btnCare" onclick="capturar(this.value)" value="1"></button></a>
                </div>
                <div class="col">
                    <a href="caes.jsp"><button type="button"  class="imgBtn" id="btnBook" onclick="capturar(this.value)" value="2"></button></a>
                </div>
                <div class="col" >
                    <a href="index.jsp"><button type="button" class="imgBtn" id="btnHome2" onclick="capturar(this.value)" value="3"></button></a>
                </div> 
                
                <div class="col-3">
                    <a href="cadastrarUsuario.jsp"><button type="button" class="btn btn-outline-dark">Crie sua conta</button></a>
                    <a href="login.jsp"><button type="button" class="btn btn-outline-dark">Login</button></a>
                </div>
            </div>
        </div>
    </div>
</nav>

<script type="text/javascript">

        function capturar(a) {
            var x = document.getElementById('btnCare');
            var x1 = document.getElementById('btnBook');
            var x2 = document.getElementById('btnHome2');
            
            if (a === '1') {
                x.style.filter = 'invert(100%)';
            } 
            else if (a === '2') {
                    x1.style.filter = 'invert(100%)';
            } 
            else {
                if (a === '3') {
                    x2.style.filter = 'invert(100%)';
                } 
                else {
                    alert("O código inserido está incorreto");
                }
            }
        }
</script>