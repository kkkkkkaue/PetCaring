/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package documentacao;

import conexao.conexao;
import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;

/**
 *
 * @author Me
 */
@WebServlet(name = "documentacao", urlPatterns = {"/documentacao"})
public class documentacao extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet documentacao</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet documentacao at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
                try{
                  HttpSession session = request.getSession();

                String id = request.getParameter("id_usuario");           
        String file_name="C:/Users/Me/Documents/NetBeansProjects/PetCaring/web/lib/documentosAdocao/documentoDeAdocao"+ id +".pdf";
        Document documento = new Document();
        
        PdfWriter.getInstance(documento, new FileOutputStream(file_name));
        
        documento.open();
        
        conexao conn = new conexao();
        Connection connection = conn.Conectar();
        PreparedStatement ps=null;
        ResultSet rs=null;
        
        String query = "SELECT * from `usuario`";
        ps=connection.prepareStatement(query);
        rs=ps.executeQuery();
        rs.next();
            Paragraph para = new Paragraph("Para fins de comprovação, este documento serve apenas para informação por parte dos usuários. Por mais segurança, é uma forma tanto de verificar o novo tutor do animal doméstico, quanto de evidenciar para o responsável pelo pet.");
            documento.add(para);
            documento.add(new Paragraph("Os usuários responsáveis pelo acordo de adoção são:"));
            documento.add(new Paragraph("Responsável pelo Pet:"+rs.getString("id_usuario")));
        
 /*   Codigo pra pegar o nome do pet e users
            
            protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
                try{
                  HttpSession session = request.getSession();

        String id = request.getParameter("id_usuario");  
        String nomeComp = request.getParameter("nome");
        String id_DoUsuario = request.getParameter("id_DoUsuario");  
        String id_ParaUsuario = request.getParameter("id_ParaUsuario");
        String file_name="C:/Users/Me/Documents/NetBeansProjects/PetCaring/web/lib/documentosAdocao/documentoDeAdocao"+ id +".pdf";
        Document document = new Document();
        
        PdfWriter.getInstance(document, new FileOutputStream(file_name));
        
        documento.open();
        
        conexao conn = new conexao();
        Connection connection = conn.Conectar();
        PreparedStatement ps=null;
        ResultSet rs=null;
        
        String query = "SELECT * FROM usuario WHERE id_usuario = '"+id_ParaUsuario+"'";
        ps=connection.prepareStatement(query);
        rs=ps.executeQuery();
         if(rs.next()) {
              String nomeAdotador rs.getString("nome");
         }
             Paragraph para = new Paragraph("Para fins de comprovação, este documento serve apenas para informação por parte dos usuários. Por mais segurança, é uma forma tanto de verificar o novo tutor do animal doméstico, quanto de evidenciar para o responsável pelo pet.");
            documento.add(para);
            documento.add(new Paragraph("Os usuários responsáveis pelo acordo de adoção são:" + rs.getString("id_DoUsuario")));
            documento.add(new Paragraph("Responsável pelo Pet:"+rs.getString("id_ParaUsuario")));
        
            
        
        
        document.close();
        System.out.println("acabou");
        }catch (Exception e){
            System.err.println(e); 
        
        }
    }*/           
        
        response.sendRedirect("documentacao.jsp");
        documento.close();
        }catch (Exception e){
            System.err.println(e); 
        
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    public static void main(String[] args){
        

    }
    
}
