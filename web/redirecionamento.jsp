<%
    String id = (String) request.getSession().getAttribute("id_usuario");
%>

<script type="text/javascript" src="lib/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="lib/js/script.js"></script>

<script>
    $(document).ready(function () {
        location.href="<%=request.getContextPath()%>/Perfil?id_usuario=" + <%=id%> + "";
    });
</script>