package ErroAdotar;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class ErroAdotar extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        int cod_pet = Integer.parseInt(request.getParameter("codigoPet"));
        session.setAttribute("erroAdotar",3);     
       response.sendRedirect("publicacao.jsp?codigoPet=" + cod_pet);
      
    }
}
