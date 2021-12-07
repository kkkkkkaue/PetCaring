package RegistrarInformacao;
import conexao.conexao;
import java.lang.NumberFormatException;
import java.io.*;

import java.sql.*;


import javax.servlet.ServletException; 
import javax.servlet.http.*;

public class RegistrarInformacao extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
                     PrintWriter out = response.getWriter();
	            try { 
	                
	                    HttpSession session = request.getSession();
	                
	                    String tipo = request.getParameter("tipoInformacao");
	                    String autor = request.getParameter("autorInformacao");
	                    String desc = request.getParameter("descricao");
                            String id  = request.getParameter("id_adm");
                            try{
                            int id_user = Integer.parseInt(id);
	                    
                            String sqlInsert = "INSERT INTO informacao (tipo_informacao,autor,descricao,id_usuario) VALUES ('" + tipo + "','" + autor + "','" + desc + "','" + id + "')";
	
	                    Connection con = conexao.Conectar();
	                    Statement stInsert = con.prepareStatement(sqlInsert);
	                    stInsert.execute(sqlInsert);
                            
                            session.setAttribute("erroCadastro",0);
	                    session.setAttribute("id_administrador",id);
                            if(tipo.equals("DenunciaPets"))
                            {
                                response.sendRedirect("Denuncia.jsp");
                            }
                            else{
                                response.sendRedirect("cuidados.jsp");
                            
                            }
                            }
                            catch(NumberFormatException e)
                            { 
                                System.out.print("numero invélido");
                                System.out.print(id);
                            }
	            }
	            catch (SQLException ex) {
	                    HttpSession session = request.getSession();
	                    session.setAttribute("erroL", ""+ ex +"");
	                    response.sendRedirect("registrarInformacao.jsp");
                } 
    }

}
