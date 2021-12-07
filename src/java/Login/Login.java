package Login;

import conexao.conexao;

import java.io.*;
import java.sql.*;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Login extends HttpServlet {
    
    private String hashMD5="";
    public String passMD5(String password) throws 
        NoSuchAlgorithmException{

        String plainText = password;
        MessageDigest mdAlgorithm = MessageDigest.getInstance("MD5");
        mdAlgorithm.update(plainText.getBytes());

        byte[] digest = mdAlgorithm.digest();
        StringBuilder hexString = new StringBuilder();

        for (int i = 0; i < digest.length; i++) {
            plainText = Integer.toHexString(0xFF & digest[i]);

            if (plainText.length() < 2) {
                plainText = "0" + plainText;
            }
            hexString.append(plainText);
        }
        hashMD5 = hexString.toString();
        
        return hashMD5;
    }

    public String passSHA512(String passwordToHash) throws NoSuchAlgorithmException{

            MessageDigest md = MessageDigest.getInstance("SHA-512"); 

            byte[] messageDigest = md.digest(passwordToHash.getBytes()); 
 
            BigInteger no = new BigInteger(1, messageDigest); 
            
            String hashSHA512 = no.toString(16); 

            while (hashSHA512.length() < 32) { 
                hashSHA512 = "0" + hashSHA512; 
            } 
            return hashSHA512;
    }
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            
                HttpSession session = request.getSession();

                String email = request.getParameter("email");
                String senha = request.getParameter("password");
                
                passMD5(senha);
                String hashSHA512 = passSHA512(hashMD5);

                String sql = "SELECT * FROM usuario WHERE email = '" + email + "' AND senha = '" + hashSHA512 + "'";

                Connection con = conexao.Conectar();
                Statement stLogin = con.createStatement();
                ResultSet rsLogin = stLogin.executeQuery(sql);
            
                if(rsLogin.next()) {
                    session.setAttribute("erro", 1);
                    session.setAttribute("logado", "TRUE");
                    session.setAttribute("nome",rsLogin.getString("nome"));
                    session.setAttribute("apelido",rsLogin.getString("apelido"));
                    session.setAttribute("id_usuario",rsLogin.getString("id_usuario"));
                    session.setAttribute("id_user",rsLogin.getString("id_usuario"));
                
                    String sqlBuscarImg = "SELECT * FROM imagensusuario WHERE id_imgUsuario = '"+ rsLogin.getString("id_imgUsuario") +"'";       
                Connection conImg = conexao.Conectar();
                Statement stBuscarImg = conImg.createStatement();
                ResultSet rsBuscarImg = stBuscarImg.executeQuery(sqlBuscarImg);
                
                if(rsBuscarImg.next())
                {
                   session.setAttribute("NomeIMG", rsBuscarImg.getString("nome_imgUsuario"));
                }else{
                    session.setAttribute("NomeIMG", "perfilImg.png");
                }
                    response.sendRedirect("index.jsp");
                }
                else{
                    String sql2 = "SELECT * FROM administrador WHERE email = '" + email + "' AND senha = '" + hashSHA512 + "'";

                    Connection conn = conexao.Conectar();
                    Statement stAdm = conn.createStatement();
                    ResultSet rsAdm = stAdm.executeQuery(sql2);
                    
                    if(rsAdm.next()) {
                        session.setAttribute("erro", 1);
                        session.setAttribute("logado", "TRUE");
                        response.sendRedirect("index.jsp");
                        session.setAttribute("id_Adm",rsAdm.getString("id_administrador"));
                    }
                    else
                    {
                        session.setAttribute("erro", 2);
                        session.setAttribute("logado", "FALSE");
                        response.sendRedirect("login.jsp");
                    }
                }
            
            } catch (SQLException ex) {
                HttpSession session = request.getSession();
                session.setAttribute("erro", ""+ ex +"");
                response.sendRedirect("Erro.jsp");
            }catch (NoSuchAlgorithmException ex) {
                        Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
}
