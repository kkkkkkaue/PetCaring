package Perfil;

import conexao.conexao;
import java.io.*;
import java.sql.*;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Perfil extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            
                HttpSession session = request.getSession();

                String id = request.getParameter("id_usuario");

                String sql = "SELECT * FROM usuario WHERE id_usuario = '" + id + "'";

                Connection con = conexao.Conectar();
                Statement stBusca = con.createStatement();
                ResultSet rsBusca = stBusca.executeQuery(sql);
                
                if(rsBusca.next()) {
                    session.setAttribute("username",rsBusca.getString("apelido"));
                    session.setAttribute("nome",rsBusca.getString("nome"));
                    session.setAttribute("cidade",rsBusca.getString("cidade"));
                    session.setAttribute("telefone",rsBusca.getString("telefone_celular"));
                    session.setAttribute("cargo",rsBusca.getString("cargo"));
                    session.setAttribute("id_usuario",id);
                    response.sendRedirect("perfil.jsp");
                     
                String sqlBuscarImg = "SELECT * FROM imagensusuario WHERE id_imgUsuario = '"+ rsBusca.getString("id_imgUsuario") +"'";       
                Connection conImg = conexao.Conectar();
                Statement stBuscarImg = conImg.createStatement();
                ResultSet rsBuscarImg = stBuscarImg.executeQuery(sqlBuscarImg);
                
                if(rsBuscarImg.next())
                {
                   session.setAttribute("NomeIMG", rsBuscarImg.getString("nome_imgUsuario"));
                }else{
                    session.setAttribute("NomeIMG", "perfilImg.png");
                }
                }
                else{
                    session.setAttribute("erro", 2);
                    session.setAttribute("logado", "FALSE");
                    response.sendRedirect("login.jsp");
                }
            
            } catch (SQLException ex) {
                HttpSession session = request.getSession();
                session.setAttribute("erro", ""+ ex +"");
                response.sendRedirect("Erro.jsp");
            }
    }
}