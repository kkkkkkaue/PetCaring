package PublicacaoUnica;

import Model.Dados;
import conexao.conexao;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class PublicacaoUnica extends HttpServlet {

    public ArrayList<Dados> listar(Integer cod) {

        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        
        try {
             
            String nome_img = "";

            String sqlBuscar = "SELECT * FROM pet WHERE cod_pet =" + cod;

            Connection con = conexao.Conectar();
            Statement stBusca = con.createStatement();
            ResultSet rsBusca = stBusca.executeQuery(sqlBuscar);

            while (rsBusca.next()) {
                Dados dados = new Dados();
                dados.setId(rsBusca.getInt("cod_pet"));
                dados.setNome(rsBusca.getString("nome"));
                dados.setDesc(rsBusca.getString("descricao"));

                String sqlBuscarImg = "SELECT * FROM imagenspet WHERE id_imgPet = '" + rsBusca.getInt("id_imgPet") + "'";
                Connection con1 = conexao.Conectar();
                Statement stBuscarImg = con.createStatement();
                ResultSet rsBuscarImg = stBuscarImg.executeQuery(sqlBuscarImg);
                

                if (rsBuscarImg.next()) {
                    dados.setDiretorioIMG(rsBuscarImg.getString("nome_imgPet"));
                    nome_img = rsBuscarImg.getString("nome_imgPet");
                    
                }

                dados.setId_Usuario(rsBusca.getInt("id_usuario"));
                dados.setApelido_u(rsBusca.getString("apelido_usuario"));
                dados.setStatus(rsBusca.getString("status_pet"));
                String sqlBuscarImgUser = "SELECT * FROM imagensusuario WHERE id_usuario = '"+  dados.getId_Usuario() +"'";       
                Connection conImg = conexao.Conectar();
                Statement stBuscarImgUser = conImg.createStatement();
                ResultSet rsBuscarImgUser = stBuscarImgUser.executeQuery(sqlBuscarImgUser);
                
                if(rsBuscarImgUser.next())
                {
                   dados.setDiretorioIMGUsuarioPublic(rsBuscarImgUser.getString("nome_imgUsuario"));
                }else{
                    dados.setDiretorioIMGUsuarioPublic("perfilImg.png");
                }
                
                Conteudo.add(dados);
                
               

                
            }
            
        } catch (SQLException e) {
            System.out.print("Erro ao buscar os dados no banco" + e);
        }
        return Conteudo;
    }
}
