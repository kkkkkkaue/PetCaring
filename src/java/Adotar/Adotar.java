package Adotar;

import conexao.conexao;
import java.io.*;
import java.sql.*;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Adotar extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {

            HttpSession session = request.getSession();

            int cod_pet = Integer.parseInt(request.getParameter("codigoPet"));
            LocalDate data = LocalDate.now();
            int aceitoD = 1;
            int aceitoP = 0;
            int id_DoUsuario = Integer.parseInt(request.getParameter("id_DoUsuario"));
            int id_ParaUsuario = Integer.parseInt(request.getParameter("id_ParaUsuario"));
            String status = request.getParameter("status_pet");
             String dp = "Disponivel";
            if(status.equals(dp)){
            String sqlInsert = "INSERT INTO acordo (data_acordo,aceitoD,aceitoP,id_DoUsuario,id_ParaUsuario,cod_pet) VALUES ('" + data + "','" + aceitoD + "','" + aceitoP + "','" + id_DoUsuario + "','" + id_ParaUsuario + "','" + cod_pet + "' )";
            
            
            Connection con = conexao.Conectar();
            Statement stInsert = con.prepareStatement(sqlInsert);
            stInsert.execute(sqlInsert);
            session.setAttribute("erroAdotar", 0);
            response.sendRedirect("publicacao.jsp?codigoPet=" + cod_pet);
            }else{
            session.setAttribute("erroAdotar", 4);
            response.sendRedirect("publicacao.jsp?codigoPet=" + cod_pet);
            }
        } catch (SQLException ex) {
            HttpSession session = request.getSession();
            int cod_pet = Integer.parseInt(request.getParameter("codigoPet"));
            session.setAttribute("erroA", "" + ex + "");
            session.setAttribute("erroAdotar", 1);
            response.sendRedirect("publicacao.jsp?codigoPet=" + cod_pet);
        }
    }

}