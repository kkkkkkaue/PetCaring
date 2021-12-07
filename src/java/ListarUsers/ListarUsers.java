package ListarUsers;

import Model.Dados;
import conexao.conexao;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class ListarUsers extends HttpServlet {

    public ArrayList<Dados> listar(Integer id) {

        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        
        try {
             
            String nome_img = "";

            String sqlBuscar = "SELECT * FROM usuario WHERE id_usuario =" + id;

            Connection con = conexao.Conectar();
            Statement stBusca = con.createStatement();
            ResultSet rsBusca = stBusca.executeQuery(sqlBuscar);

            while (rsBusca.next()) {
                Dados dados = new Dados();
                dados.setId(rsBusca.getInt("id_usuario"));
                dados.setNome(rsBusca.getString("nome"));
                dados.setApelido_u(rsBusca.getString("apelido"));

                String sqlBuscarImg = "SELECT * FROM imagensusuario WHERE id_imgUsuario = '" + rsBusca.getInt("id_imgUsuario") + "'";
                Connection con1 = conexao.Conectar();
                Statement stBuscarImg = con.createStatement();
                ResultSet rsBuscarImg = stBuscarImg.executeQuery(sqlBuscarImg);
                

                if (rsBuscarImg.next()) {
                    dados.setDiretorioIMG(rsBuscarImg.getString("nome_imgUsuario"));
                    nome_img = rsBuscarImg.getString("nome_imgUsuario");
                    
                }else{
                dados.setDiretorioIMG("perfilImg.png");
                }                
                Conteudo.add(dados);
             
            }
            
        } catch (SQLException e) {
            System.out.print("Erro ao buscar os dados no banco" + e);
        }
        return Conteudo;
    }
}
