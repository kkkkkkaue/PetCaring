package notificacaochat;

import Model.Dados;
import conexao.conexao;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class notificacaochat extends HttpServlet {

    public ArrayList<Dados> listar1(Integer id) {

        ArrayList<Dados> Conteudo = new ArrayList<Dados>();

        try {

            String sqlBuscar = "SELECT * FROM conversa WHERE id_ParaUsuario =" + id + " AND visualizacao = 0";

            Connection con = conexao.Conectar();
            Statement stBusca = con.createStatement();
            ResultSet rsBusca = stBusca.executeQuery(sqlBuscar);
                       
            while(rsBusca.next()){
                Dados dados = new Dados();
                dados.setvisualizacao(rsBusca.getInt("visualizacao")); 
                Conteudo.add(dados);
            }
            
        } catch (SQLException e) {
            System.out.print("Erro ao buscar os dados no banco" + e);
        }
        return Conteudo;
    }
}
