/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testeImg;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.sql.*;

import conexao.conexao;
import java.sql.PreparedStatement;

/**
 *
 * @author Me
 */
@MultipartConfig
@WebServlet(name = "testeImg", urlPatterns = {"/testeImg"})
public class testeImg extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet testeImg</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet testeImg at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);

        System.out.println("Teste post teste Post adicionar img");
        Part file = request.getPart("imagen");

        String nome_imgPet = file.getSubmittedFileName();
        String id_user = request.getParameter("id_usuario");
        System.out.println("Selecione o nome da img:" + nome_imgPet);

        String caminhoUpload = "C:/Users/Me/Documents/NetBeansProjects/PetCaring/web/lib/img/petCadastrados/" + nome_imgPet;
        System.out.println("Ta aqui oh:" + caminhoUpload);

        try {
            FileOutputStream fos = new FileOutputStream(caminhoUpload);
            InputStream is = file.getInputStream();

            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);
            fos.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/petcaring?serverTimezone=GMT", "root", "");
            PreparedStatement stmt;
             String query = "INSERT INTO imagenspet(nome_imgPet, id_usuario) VALUES(?, '" + id_user + "')";
            stmt = connection.prepareStatement(query);
            stmt.setString(1, nome_imgPet);
            
            int row = stmt.executeUpdate(); //retorna a coluna afetada

            if (row > 0) {
                System.out.println("Funcional, a imagen ta na DB");
            } else {
                System.out.println("Nao funcionou, oh no cringe");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
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

}
