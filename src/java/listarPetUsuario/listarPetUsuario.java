package listarPetUsuario;

import Model.Dados;
import conexao.conexao;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class listarPetUsuario extends HttpServlet {

    public ArrayList<Dados> listar(Integer id) {

        ArrayList<Dados> Conteudo = new ArrayList<Dados>();

        try {
            String nome_img = "";

            String sqlBuscar = "SELECT * FROM pet WHERE id_usuario =" + id;

            Connection con = conexao.Conectar();
            Statement stBusca = con.createStatement();
            ResultSet rsBusca = stBusca.executeQuery(sqlBuscar);

            while (rsBusca.next()) {
                Dados dados = new Dados();
                dados.setId(rsBusca.getInt("cod_pet"));
                dados.setNome(rsBusca.getString("nome"));
                dados.setIdIMG(rsBusca.getInt("id_imgPet"));

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
                Conteudo.add(dados);
            }
            
        } catch (SQLException e) {
            System.out.print("Erro ao buscar os dados no banco" + e);
        }
        return Conteudo;
    }
}
