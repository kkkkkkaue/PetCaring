package ListarNotificacoes;


import conexao.conexao;
import Model.Dados;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.*;

public class ListarNotificacoes extends HttpServlet {

    public ArrayList<Dados> listar(Integer id) {

        ArrayList<Dados> Conteudo = new ArrayList<Dados>();

        try {
            String nome_img = "";

            String sqlBuscar = "SELECT * FROM acordo WHERE id_ParaUsuario = '" + id + "' and aceitoP = 0";

            Connection con = conexao.Conectar();
            Statement stBusca = con.createStatement();
            ResultSet rsBusca = stBusca.executeQuery(sqlBuscar);

            while(rsBusca.next()) {
                Dados dados = new Dados();
                dados.setId_Usuario(rsBusca.getInt("id_DoUsuario"));
                dados.setId(rsBusca.getInt("cod_pet"));

                String sqlBuscarImg = "SELECT * FROM imagensusuario WHERE id_usuario = '"+ rsBusca.getInt("id_DoUsuario") +"'";
                Connection con2 = conexao.Conectar();
                Statement stBuscarImg = con2.createStatement();
                ResultSet rsBuscarImg = stBuscarImg.executeQuery(sqlBuscarImg);
                
                if(rsBuscarImg.next())
                {
                    dados.setDiretorioIMGUsuario(rsBuscarImg.getString("nome_imgUsuario"));
                    nome_img = rsBuscarImg.getString("nome_imgUsuario");
                }
                else{
                     dados.setDiretorioIMG("perfilImg.png");
                }
            
                
                
                String sqlBuscarApelido = "SELECT * FROM usuario WHERE id_usuario = '" + rsBusca.getInt("id_DoUsuario") + "'";
                Connection con3 = conexao.Conectar();
                Statement stBuscarApelido = con3.createStatement();
                ResultSet rsBuscarApelido = stBuscarApelido.executeQuery(sqlBuscarApelido);
                
                if(rsBuscarApelido.next())
                {
                    dados.setApelido_u(rsBuscarApelido.getString("apelido"));
                }
                
                String sqlBuscarNomePet = "SELECT * FROM pet WHERE cod_pet = '" + rsBusca.getInt("cod_pet") + "'";
                Connection con4 = conexao.Conectar();
                Statement stBuscarNomePet = con4.createStatement();
                ResultSet rsBuscarNomePet = stBuscarNomePet.executeQuery(sqlBuscarNomePet);
                
                if(rsBuscarNomePet.next())
                {
                    dados.setStatus(rsBuscarNomePet.getString("status_pet"));
                    dados.setNome(rsBuscarNomePet.getString("nome"));
                }
                
                
                Conteudo.add(dados);

            }
        } catch (SQLException e) {
            System.out.print("Erro ao buscar os dados no banco" + e);
        }
        return Conteudo;
    }
}