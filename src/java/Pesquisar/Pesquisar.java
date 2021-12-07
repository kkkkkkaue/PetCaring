package Pesquisar;

import Model.Dados;
import conexao.conexao;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Pesquisar extends HttpServlet {

    public ArrayList<Dados> listar(String conteudo) {

        ArrayList<Dados> Conteudo = new ArrayList<Dados>();

        try {
            String nome_img = "";
            String sql = "SELECT * FROM pet WHERE nome = '" + conteudo + "' OR especie = '" + conteudo + "' OR raca = '" + conteudo + "' OR idade = '" + conteudo + "' OR sexo = '" + conteudo + "'  OR status_pet = '" + conteudo + "' OR descricao = '" + conteudo + "' OR apelido_usuario = '" + conteudo + "'";

            Connection con = conexao.Conectar();
            Statement stPesquisa = con.createStatement();
            ResultSet rsPesquisa = stPesquisa.executeQuery(sql);

            while (rsPesquisa.next()) {
                Dados dados = new Dados();
                dados.setId(rsPesquisa.getInt("cod_pet"));
                dados.setNome(rsPesquisa.getString("nome"));
                dados.setEspecie(rsPesquisa.getString("especie"));
                dados.setRaca(rsPesquisa.getString("raca"));
                dados.setIdade(rsPesquisa.getString("idade"));
                dados.setSexo(rsPesquisa.getString("sexo"));
                dados.setStatus(rsPesquisa.getString("status_pet"));
                dados.setDesc(rsPesquisa.getString("descricao"));
                dados.setIdIMG(rsPesquisa.getInt("id_imgPet"));

                String sqlBuscarImg = "SELECT * FROM imagenspet WHERE id_imgPet = '" + rsPesquisa.getInt("id_imgPet") + "'";
                Connection con1 = conexao.Conectar();
                Statement stBuscarImg = con.createStatement();
                ResultSet rsBuscarImg = stBuscarImg.executeQuery(sqlBuscarImg);

                if (rsBuscarImg.next()) {
                    dados.setDiretorioIMG(rsBuscarImg.getString("nome_imgPet"));
                    nome_img = rsBuscarImg.getString("nome_imgPet");
                }

                dados.setId_Usuario(rsPesquisa.getInt("id_usuario"));
                dados.setApelido_u(rsPesquisa.getString("apelido_usuario"));
                Conteudo.add(dados);

            }
        } catch (SQLException e) {
            System.out.print("Erro ao buscar os dados no banco" + e);
        }
        return Conteudo;
    }
}
