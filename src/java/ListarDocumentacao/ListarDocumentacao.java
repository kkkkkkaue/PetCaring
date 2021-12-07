package ListarDocumentacao;


import conexao.conexao;
import Model.Dados;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.*;

public class ListarDocumentacao extends HttpServlet {

    public ArrayList<Dados> listarDoc(Integer id) {

        ArrayList<Dados> Conteudo = new ArrayList<Dados>();

        try {
            
            String sqlBuscar = "SELECT * FROM documento WHERE id_Doador = '" + id +"' OR id_Acolhedor = '" + id + "'";

            Connection con = conexao.Conectar();
            Statement stBusca = con.createStatement();
            ResultSet rsBusca = stBusca.executeQuery(sqlBuscar);

            while(rsBusca.next()) {
                Dados dados = new Dados();
                dados.setId_Usuario(rsBusca.getInt("id_Acolhedor"));
                dados.setId(rsBusca.getInt("cod_pet"));    
                dados.setNomeDoc(rsBusca.getString("nome_doc"));
                dados.setDesc(rsBusca.getString("data_emissao"));
              
                String sqlBuscarApelido = "SELECT * FROM usuario WHERE id_usuario = '" + rsBusca.getInt("id_Acolhedor") + "'";
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