package DocumentoBanco;

import conexao.conexao;
import java.io.*;
import conexao.conexao;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import conexao.conexao;
import java.io.*;

import java.sql.*;
import java.time.LocalDateTime;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

@MultipartConfig
public class DocumentoBanco extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            HttpSession session = request.getSession();

            String id_userDoador = request.getParameter("idParaUsuario");
            String id_userAcolhedor = request.getParameter("idDoUsuario");
            String cod_pet = request.getParameter("codigo_pet"); 
            String nome_doc = "documentoDeAdocao" + id_userDoador + "" + id_userAcolhedor + "" + cod_pet + ".pdf";
            LocalDateTime dataTempo = LocalDateTime.now();
            
            String BuscarDoc = "SELECT * from acordo WHERE id_DoUsuario=" + id_userAcolhedor + " AND id_ParaUsuario=" + id_userDoador + "  AND cod_pet=" + cod_pet + "";
            Connection conn = conexao.Conectar();
            Statement stDoc = conn.createStatement();
            ResultSet rsDoc = stDoc.executeQuery(BuscarDoc);
            
            if(rsDoc.next()){
            
                String cod_acordo = rsDoc.getString("cod_acordo");
                String queryDocumento = "INSERT INTO documento(data_emissao, cod_pet, cod_acordo, nome_doc, id_Acolhedor, id_Doador) VALUES('" + dataTempo + "' ,'" + cod_pet + "' , '" + cod_acordo + "', '" + nome_doc + "', '" + id_userAcolhedor + "', '" + id_userDoador + "')";

                Connection conDoc = conexao.Conectar();
                Statement stDocumento = conDoc.prepareStatement(queryDocumento);
                stDocumento.execute(queryDocumento);

            } 
            response.sendRedirect("documentacao.jsp");
            
        } catch (Exception e) {
            System.err.println(e);

        }
    }

}
