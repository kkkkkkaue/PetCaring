package CadastrarUsuarioPJuridica;

import conexao.conexao;
import senha.Senha;
import java.io.*;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class CadastrarUsuarioPJuridica extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private String hashMD5 = "";

    public String passMD5(String password) throws
            NoSuchAlgorithmException {

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

    public String passSHA512(String passwordToHash) throws NoSuchAlgorithmException {

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

            String nome = request.getParameter("razaoSocialPJ");
            String apelido = request.getParameter("apelidoPJ");
            String cnpj = request.getParameter("cnpjPJ");
            String dtFund = request.getParameter("dataFundacaoPJ");
            String telCelular = request.getParameter("telefoneCelularPJ");
            String cep = request.getParameter("cepPJ");
            String estado = request.getParameter("estadoPJ");
            String cidade = request.getParameter("cidadePJ");
            String endereco = request.getParameter("enderecoPJ");
            String numero = request.getParameter("numeroPJ");
            String complemento = request.getParameter("complementoPJ");
            String email = request.getParameter("emailPJ");
            String senha = request.getParameter("senhaPJ");
            String cargo = "pj";

            String hashMD5 = Senha.passMD5(senha);
            String passSHA512 = Senha.passSHA512(hashMD5);
            //String hashSHA512 = passSHA512(hashMD5);

            String sqlInsert = "INSERT INTO usuario (apelido,nome,email,senha,estado,cidade,endereco,numero,cep,complemento,telefone_celular, cargo) VALUES ('" + apelido + "','" + nome + "','" + email + "','" + passSHA512 + "','" + estado + "','" + cidade + "','" + endereco + "','" + numero + "','" + cep + "','" + complemento + "','" + telCelular + "','" + cargo + "')";

            Connection con = conexao.Conectar();
            Statement stInsert = con.prepareStatement(sqlInsert);
            stInsert.execute(sqlInsert);
            session.setAttribute("erroCadastro", 0);

            passMD5(senha);
            String hashSHA512 = passSHA512(hashMD5);
            String sql = "SELECT * FROM usuario WHERE email = '" + email + "' AND senha = '" + hashSHA512 + "'";

            Connection con2 = conexao.Conectar();
            Statement stLogin = con2.createStatement();
            ResultSet rsLogin = stLogin.executeQuery(sql);

            if (rsLogin.next()) {

                String sqlInsertPf = "INSERT INTO pj (cnpj, dt_fundacao, id_usuario) VALUES ('" + cnpj + "','" + dtFund + "','" + rsLogin.getString("id_usuario") + "')";

                Connection conPf = conexao.Conectar();
                Statement stInsertPf = con.prepareStatement(sqlInsertPf);
                stInsert.execute(sqlInsertPf);

                session.setAttribute("erro", 1);
                session.setAttribute("logado", "TRUE");
                session.setAttribute("nome", rsLogin.getString("nome"));
                session.setAttribute("apelido", rsLogin.getString("apelido"));
                session.setAttribute("id_usuario", rsLogin.getString("id_usuario"));
                session.setAttribute("id_user", rsLogin.getString("id_usuario"));

                session.setAttribute("NomeIMG", "perfilImg.png");
            }

            response.sendRedirect("index.jsp");

        } catch (SQLException ex) {
            HttpSession session = request.getSession();
            session.setAttribute("erroL", "" + ex + "");
            response.sendRedirect("login.jsp");
        } catch (NoSuchAlgorithmException ex) {
            HttpSession session = request.getSession();
            Logger.getLogger(CadastrarUsuarioPJuridica.class.getName()).log(Level.SEVERE, null, ex);
            response.sendRedirect("cadastrarUsuario.jsp");
            session.setAttribute("erroCadastro", 4);
        }
    }

}
