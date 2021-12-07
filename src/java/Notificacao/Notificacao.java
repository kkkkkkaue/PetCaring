package Notificacao;

import Model.Dados;
import conexao.conexao;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Notificacao extends HttpServlet {

    public ArrayList<Dados> listarNot(Integer id) {

        ArrayList<Dados> Conteudo = new ArrayList<Dados>();

        try {

            String sqlBuscar = "SELECT * FROM acordo WHERE id_ParaUsuario =" + id + " AND visualizacaoAcordo = 0";

            Connection con = conexao.Conectar();
            Statement stBusca = con.createStatement();
            ResultSet rsBusca = stBusca.executeQuery(sqlBuscar);
                       
            while(rsBusca.next()){
                Dados dados = new Dados();
                dados.setvisualizacao(rsBusca.getInt("visualizacaoAcordo")); 
                Conteudo.add(dados);
            }
            
        } catch (SQLException e) {
            System.out.print("Erro ao buscar os dados no banco" + e);
        }
        return Conteudo;
    }
}
