
<%
    if(session.getAttribute("logado") != "TRUE"){
        session.setAttribute("erro", 2);
        response.sendRedirect(request.getContextPath() + "/login.jsp");
        //sendRedirect -> redirecionamento
        //request.getContextPath() -> 
    }
%>