package EditarPerfil;

import conexao.conexao;
import java.io.*;

import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

@MultipartConfig
public class EditarPerfil extends HttpServlet {

    public boolean uploadFile(InputStream is, String path) {
        boolean test = false;
        try {
            byte[] byt = new byte[is.available()];
            is.read();
            FileOutputStream fops = new FileOutputStream(path);
            fops.write(byt);
            fops.flush();
            fops.close();

            test = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return test;
    }

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_img = 0;

        System.out.println("adicionar img");
        Part file = request.getPart("fImage");

        String nome_imgUsuario = file.getSubmittedFileName();
        System.out.println("Selecione o nome da img:" + nome_imgUsuario);

        String caminhoUpload = "C:/Users/Me/Documents/NetBeansProjects/PetCaring/web/lib/img/imagensUsers/" + nome_imgUsuario;
        String caminhoUploadXampp = "C:/xampp/htdocs/ChatTextoPetCaring/img/imagensUsers/" + nome_imgUsuario;
        System.out.println("Ta aqui oh:" + caminhoUpload);
        System.out.println("Ta aqui oh:" + caminhoUploadXampp);

        try {
            FileOutputStream fos = new FileOutputStream(caminhoUpload);
            InputStream is = file.getInputStream();

            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);
            fos.close();

            FileOutputStream fos2 = new FileOutputStream(caminhoUploadXampp);
            InputStream is2 = file.getInputStream();

            byte[] data2 = new byte[is2.available()];
            is2.read(data2);
            fos2.write(data2);
            fos2.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            HttpSession session = request.getSession();
            String id = request.getParameter("id_user");
            int id_user = Integer.parseInt(id);
            PreparedStatement stmt;

            String buscaImg = "SELECT * FROM imagensusuario WHERE id_usuario = '" + id_user + "' AND nome_imgUsuario != ''";
            Connection conbuscaImg = conexao.Conectar();
            Statement stbuscaImg = conbuscaImg.createStatement();
            ResultSet rsbuscaImg = stbuscaImg.executeQuery(buscaImg);

            if (rsbuscaImg.next()) {
                String sqlUpdate = "UPDATE imagensusuario SET nome_imgUsuario = '" + nome_imgUsuario + "' WHERE id_usuario = " + id_user;
                Connection conn = conexao.Conectar();
                Statement stUpdate = conn.prepareStatement(sqlUpdate);
                stUpdate.execute(sqlUpdate);
                
                session.setAttribute("erroEditarP", 1);//Dados editados com sucesso!
                
            } 
            else {
                String query = "INSERT INTO imagensusuario(nome_imgUsuario, id_usuario) VALUES('" + nome_imgUsuario + "', '" + id_user + "')";

                Connection con = conexao.Conectar();
                stmt = con.prepareStatement(query);

                int row = stmt.executeUpdate(); //retorna a coluna afetada
                if (row > 0) {
                    String query2 = "SELECT * FROM imagensusuario WHERE id_usuario = '" + id_user + "' AND nome_imgUsuario = '" + nome_imgUsuario + "'";
                    Connection con2 = conexao.Conectar();
                    Statement stImg = con2.createStatement();
                    ResultSet rsImg = stImg.executeQuery(query2);

                    if (rsImg.next()) {
                        String id_imgPet = rsImg.getString("id_imgUsuario");
                        int id_imgU = Integer.parseInt(id_imgPet);
                        id_img = id_imgU;
                    } else {
                        System.out.println("Não foi possível buscar o id da imagem, oh no cringe");
                    }
                } else {
                    System.out.println("Não funcionou, oh no cringe");
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        PrintWriter out = response.getWriter();
        try {

            HttpSession session = request.getSession();

            String nome = request.getParameter("nome");
            String apelido = request.getParameter("username");
            String telCelular = request.getParameter("numeroTel");
            String cep = request.getParameter("cep");
            String estado = request.getParameter("estado");
            String cidade = request.getParameter("cidade");
            try {
                int id_user = Integer.parseInt(request.getParameter("id_user"));

                String sqlUpdate = "UPDATE usuario SET nome =  '" + nome + "', apelido = '" + apelido + "', telefone_celular = '" + telCelular + "', cep = '" + cep + "', estado = '" + estado + "', cidade = '" + cidade + "', id_imgUsuario = '" + id_img + "' WHERE id_usuario = '" + id_user + "' ";

                Connection con3 = conexao.Conectar();
                Statement stInsert = con3.prepareStatement(sqlUpdate);
                stInsert.execute(sqlUpdate);

                session.setAttribute("erroEditarPerfil", 0);
                response.sendRedirect("editarPerfil.jsp");
            } catch (NumberFormatException ex) {
                System.out.print("numero inválido");
            }
        } catch (SQLException ex) {
            HttpSession session = request.getSession();
            session.setAttribute("erroEditarPerfil", "" + ex + "");
            response.sendRedirect("editarPerfil.jsp");
        }
         

    }

}
