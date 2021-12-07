package AlterarSenha;

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

public class AlterarSenha extends HttpServlet {
    
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
                
                int id_user =  Integer.parseInt(request.getParameter("id_usuario"));
                String senha = request.getParameter("senhaAtual");
                String novaSenha = request.getParameter("novaSenha");
                String confirmeSenha = request.getParameter("confirmeSenha");
                
                passMD5(senha);
                String hashSHA512 = passSHA512(hashMD5);

                String sql = "SELECT * FROM usuario WHERE id_usuario = '" + id_user + "' AND senha = '" + hashSHA512 + "'";

                Connection con = conexao.Conectar();
                Statement stBuscarSenha = con.createStatement();
                ResultSet rsBuscarSenha = stBuscarSenha.executeQuery(sql);
            
                if(rsBuscarSenha.next()) {
                    if(novaSenha.equals(confirmeSenha)){
                        passMD5(confirmeSenha);
                        String hashSHA512CS = passSHA512(hashMD5);
                        
                        String sqlUpdate = "UPDATE usuario SET senha = '" + hashSHA512CS + "' WHERE id_usuario = " + id_user;
                        Connection conn = conexao.Conectar();
                        Statement stUpdate = con.prepareStatement(sqlUpdate);
                        stUpdate.execute(sqlUpdate);
                        
                        session.setAttribute("erroSenha", 1);//Senha alterada com sucesso
                        response.sendRedirect("configuracoes.jsp");
                    }
                    else{
                        session.setAttribute("erroSenha", 3);//Confirme sua senha está incorreto
                        response.sendRedirect("configuracoes.jsp");
                    }
                }
                else{
                    session.setAttribute("erroSenha", 2); //Senha Atual incorreta
                    response.sendRedirect("configuracoes.jsp");
                }
            
            } catch (SQLException ex) {
                HttpSession session = request.getSession();
                session.setAttribute("erro", ""+ ex +"");
                response.sendRedirect("Erro.jsp");
            }catch (NoSuchAlgorithmException ex) {
                        Logger.getLogger(AlterarSenha.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
}
