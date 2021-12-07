package AceitarAdocao;

import conexao.conexao;
import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.*;
public class AceitarAdocao extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
            try {
                    HttpSession session = request.getSession();
                    int aceitoP = 1;
                    int id_user = Integer.parseInt(request.getParameter("idParaUsuario"));
                    int id_userDo = Integer.parseInt(request.getParameter("idDoUsuario"));
                    int cod_pet = Integer.parseInt(request.getParameter("codigo_pet"));
                    String imgPet = request.getParameter("imgPet"); 
                
                    String sqlUpdate = "UPDATE acordo SET aceitoP = '"+ aceitoP +"' WHERE id_ParaUsuario = '"+ id_user +"' AND id_DoUsuario = '"+ id_userDo +"' AND cod_pet = '"+ cod_pet +"' ";
                    Connection con = conexao.Conectar();
                    Statement stUpdate = con.prepareStatement(sqlUpdate);
                    stUpdate.execute(sqlUpdate);
                    
                    String sqlUpdate2 = "UPDATE pet SET status_pet =  'Adotado' WHERE cod_pet = '"+ cod_pet +"' AND status_pet =  'Disponivel'";
                    Connection con2 = conexao.Conectar();
                    Statement stUpdate2 = con.prepareStatement(sqlUpdate2);
                    stUpdate.execute(sqlUpdate2);
                    response.sendRedirect("GerarDocumentacao?imgPet="+ imgPet +"&codigo_pet="+ cod_pet +"&idDoUsuario=" + id_userDo + "&idParaUsuario=" + id_user);

            }
            catch (SQLException ex) {
            Logger.getLogger(AceitarAdocao.class.getName()).log(Level.SEVERE, null, ex);
            response.sendRedirect("Erro.jsp");
        }

    }
    
    
}
