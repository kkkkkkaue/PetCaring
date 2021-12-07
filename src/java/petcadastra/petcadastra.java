package petcadastra;

import conexao.conexao;
import java.io.*;

import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

@MultipartConfig
public class petcadastra extends HttpServlet {

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

            String nome_imgPet = file.getSubmittedFileName();
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
            try {
                String id = request.getParameter("id");
                int id_user = Integer.parseInt(id);
                PreparedStatement stmt;

                String query = "INSERT INTO imagenspet(nome_imgPet, id_usuario) VALUES('" + nome_imgPet + "', '" + id_user + "')";

                Connection con = conexao.Conectar();
                stmt = con.prepareStatement(query);

                int row = stmt.executeUpdate(); //retorna a coluna afetada
                if (row > 0) {
                    String query2 = "SELECT * FROM imagenspet WHERE id_usuario = '" + id_user + "' AND nome_imgPet = '" + nome_imgPet + "'";
                    Connection con2 = conexao.Conectar();
                    Statement stImg = con2.createStatement();
                    ResultSet rsImg = stImg.executeQuery(query2);
                    
                    if(rsImg.next()) {
                        String id_imgPet = rsImg.getString("id_imgPet");
                        int id_imgP = Integer.parseInt(id_imgPet);
                        id_img = id_imgP;
                    }
                    else
                    {
                         System.out.println("Não foi possível buscar o id da imagem, oh no cringe");
                    }
                } else {
                    System.out.println("Não funcionou, oh no cringe");
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        PrintWriter out = response.getWriter();
        try {

            HttpSession session = request.getSession();

            String nome = request.getParameter("nomePet");
            String idade = request.getParameter("idadePet");
            String sexo = request.getParameter("sexoPet");
            String especie = request.getParameter("especiePet");
            String raca = request.getParameter("racaPet");
            String desc = request.getParameter("descricaoPet");
            String status = request.getParameter("statusPet");
            String id = request.getParameter("id");
            String apelido = request.getParameter("apelido_usuario");
            try {
                int id_user = Integer.parseInt(id);

                String sqlInsert = "INSERT INTO pet (nome,especie,raca,idade,sexo,status_pet,descricao,id_imgPet,id_usuario,apelido_usuario) VALUES ('" + nome + "','" + especie + "','" + raca + "','" + idade + "','" + sexo + "','" + status + "','" + desc + "','" + id_img + "','" + id_user + "','" + apelido + "')";

                Connection con3 = conexao.Conectar();
                Statement stInsert = con3.prepareStatement(sqlInsert);
                stInsert.execute(sqlInsert);

                session.setAttribute("erroCadastro", 0);
                session.setAttribute("id_usuario", id);
                response.sendRedirect("redirecionamento.jsp");
            } catch (NumberFormatException e) {
                System.out.print("numero invÃ©lido");
                System.out.print(id);
            }
        } catch (SQLException ex) {
            HttpSession session = request.getSession();
            session.setAttribute("erroL", "" + ex + "");
            response.sendRedirect("cadastrarPet.jsp");
        }

    }

}
