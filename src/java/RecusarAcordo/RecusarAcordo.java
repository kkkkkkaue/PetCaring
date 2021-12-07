package RecusarAcordo;

import conexao.conexao;
import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.*;
public class RecusarAcordo extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
            try {
                    HttpSession session = request.getSession();
                    int aceitoP = 2;
                    int id_user = Integer.parseInt(request.getParameter("id_ParaUsuario"));
                    int id_userDo = Integer.parseInt(request.getParameter("id_DoUsuario"));
                    int cod_pet = Integer.parseInt(request.getParameter("cod_pet"));
          
                
                    String sqlUpdate = "UPDATE acordo SET aceitoP = '"+ aceitoP +"' WHERE id_ParaUsuario = '"+ id_user +"' AND id_DoUsuario = '"+ id_userDo +"' AND cod_pet = '"+ cod_pet +"' ";
                    Connection con = conexao.Conectar();
                    Statement stUpdate = con.prepareStatement(sqlUpdate);
                    stUpdate.execute(sqlUpdate);
                    response.sendRedirect("notificacoes.jsp");

            }
            catch (SQLException ex) {
            Logger.getLogger(RecusarAcordo.class.getName()).log(Level.SEVERE, null, ex);
            response.sendRedirect("Erro.jsp");
        }

    }
    
    
}
