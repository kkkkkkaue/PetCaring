package ListarConteudoPerfil;

import conexao.conexao;
import Model.Dados;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.http.*;

public class ListarConteudoPerfil extends HttpServlet {

    public ArrayList<Dados> listar(Integer id){

        ArrayList<Dados> Conteudo = new ArrayList<Dados>();

        try{
            String sqllistaConteudo = "SELECT * FROM usuario WHERE id_usuario =" + id;
            Connection conn = conexao.Conectar();
            Statement stlistaConteudo = conn.createStatement();
            ResultSet rslistaConteudo = stlistaConteudo.executeQuery(sqllistaConteudo);

            if(rslistaConteudo.next()){
                Dados dados = new Dados();
                dados.setId_Usuario(rslistaConteudo.getInt("id_usuario"));
                dados.setNome_Usuario(rslistaConteudo.getString("nome"));
                dados.setApelido_u(rslistaConteudo.getString("apelido"));
                dados.setTelCelular(rslistaConteudo.getString("telefone_celular"));
                dados.setCepUser(rslistaConteudo.getString("cep"));
                dados.setEstado(rslistaConteudo.getString("estado"));
                dados.setCidade(rslistaConteudo.getString("cidade"));
                dados.setIdIMGUsuario(rslistaConteudo.getInt("id_imgUsuario"));
                
                String sqlBuscarImg = "SELECT * FROM imagensusuario WHERE id_imgUsuario = '"+ rslistaConteudo.getInt("id_imgUsuario") +"'";
                Connection con = conexao.Conectar();
                Statement stBuscarImg = con.createStatement();
                ResultSet rsBuscarImg = stBuscarImg.executeQuery(sqlBuscarImg);
                
                if(rsBuscarImg.next())
                {
                    dados.setDiretorioIMGUsuario(rsBuscarImg.getString("nome_imgUsuario"));
                }
                else
                {
                    dados.setDiretorioIMGUsuario("perfilImg.png");
                }
                Conteudo.add(dados);
            }
            rslistaConteudo.close();
            conn.close();

            return Conteudo;
        }
        catch(Exception e){
            System.out.print("Erro ao editar dados do Useuário: ");
            System.out.print(e.getMessage());
        }
        return null;
    }

}