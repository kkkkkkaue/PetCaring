package GerarDocumentacao;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import conexao.conexao;
import java.io.*;
import conexao.conexao;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

@MultipartConfig
public class GerarDocumentacao extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            HttpSession session = request.getSession();

            String id_userDoador = request.getParameter("idParaUsuario");
            String id_userAcolhedor = request.getParameter("idDoUsuario");
            String cod_pet = request.getParameter("codigo_pet");
            String imgPet = request.getParameter("imgPet");
            String nome_doc = "C:/Users/Me/Documents/NetBeansProjects/PetCaring/web/lib/documentosAdocao/documentoDeAdocao" + id_userDoador + "" + id_userAcolhedor + "" + cod_pet + ".pdf";

            Document documento = new Document(PageSize.A4);

            PdfWriter.getInstance(documento, new FileOutputStream(nome_doc));

            documento.open();

            String BuscarUser = "SELECT * from usuario WHERE id_usuario=" + id_userDoador + "";

            Connection conn = conexao.Conectar();
            Statement stUsuar = conn.createStatement();
            ResultSet rsUsuar = stUsuar.executeQuery(BuscarUser);

            if (rsUsuar.next()) {
                Image image = Image.getInstance("C:/Users/Me/Documents/NetBeansProjects/PetCaring/web/lib/img/teste1.png");
                image.setAlignment(Image.ALIGN_CENTER);
                image.scalePercent(30, 25);
                documento.add(image);
                Paragraph para = new Paragraph("Para fins de comprovação, este documento serve apenas para informação por parte dos usuários. Por mais segurança, é uma forma tanto de verificar o novo tutor do animal doméstico, quanto de evidenciar para o responsável pelo pet.", FontFactory.getFont(FontFactory.HELVETICA, 14));
                para.setAlignment(Element.ALIGN_JUSTIFIED);
                documento.add(para);
                documento.add(new Paragraph("\n"));

                PdfPTable table = new PdfPTable(1);
                PdfPTable table2 = new PdfPTable(2);
                PdfPTable table3 = new PdfPTable(3);
                PdfPTable table4 = new PdfPTable(2);
                table.setWidthPercentage(100);
                table.setSpacingBefore(0f);
                table.setSpacingAfter(0f);
                table2.setWidthPercentage(100);
                table2.setSpacingBefore(0f);
                table2.setSpacingAfter(0f);
                table3.setWidthPercentage(100);
                table3.setSpacingBefore(0f);
                table3.setSpacingAfter(0f);
                table4.setWidthPercentage(100);
                table4.setSpacingBefore(0f);
                table4.setSpacingAfter(0f);
                
                documento.add(new Paragraph("Dados dos Usuarios", FontFactory.getFont(FontFactory.HELVETICA, 14)));
                PdfPCell cel1 = new PdfPCell(new Paragraph("Antigo responsável pelo Pet:  " + rsUsuar.getString("nome"), FontFactory.getFont(FontFactory.HELVETICA, 14)));
                String BuscarUserAcolhedor = "SELECT * from usuario WHERE id_usuario=" + id_userAcolhedor + "";

                Connection connAcolhedor = conexao.Conectar();
                Statement stUsuarAcolhedor = connAcolhedor.createStatement();
                ResultSet rsUsuarAcolhedor = stUsuarAcolhedor.executeQuery(BuscarUserAcolhedor);

                if (rsUsuarAcolhedor.next()) {

                    PdfPCell cel2 = new PdfPCell(new Paragraph("Acolhedor(a) responsável pelo Pet:  " + rsUsuarAcolhedor.getString("nome"), FontFactory.getFont(FontFactory.HELVETICA, 14)));
                    documento.add(new Paragraph("\n"));
                    table.addCell(cel1);
                    table.addCell(cel2);
                    documento.add(table);
                }

                String BuscarUserPet = "SELECT * FROM pet WHERE cod_pet=" + cod_pet + " AND id_usuario=" + id_userDoador + "";

                Connection connPet = conexao.Conectar();
                Statement stUsuarPet = connPet.createStatement();
                ResultSet rsUsuarPet = stUsuarPet.executeQuery(BuscarUserPet);

                if (rsUsuarPet.next()) {
                    documento.add(new Paragraph("\n", FontFactory.getFont(FontFactory.HELVETICA, 5)));
                    documento.add(new Paragraph("Dados do Pet", FontFactory.getFont(FontFactory.HELVETICA, 14)));
                    Image image3 = Image.getInstance("C:/Users/Me/Documents/NetBeansProjects/PetCaring/web/lib/img/petCadastrados/" + imgPet);
                    image3.setAlignment(Image.ALIGN_RIGHT);
                    image3.scalePercent(25, 25);
                    documento.add(new Paragraph("\n", FontFactory.getFont(FontFactory.HELVETICA, 5)));
                    PdfPCell cel3 = new PdfPCell(new Paragraph("Nome do animal doméstico:  " + rsUsuarPet.getString("nome"), FontFactory.getFont(FontFactory.HELVETICA, 14)));
                    PdfPCell cel4 = new PdfPCell(new Paragraph("Sexo:  " + rsUsuarPet.getString("sexo"), FontFactory.getFont(FontFactory.HELVETICA, 14)));
                    PdfPCell cel5 = new PdfPCell(new Paragraph("Especie:  " + rsUsuarPet.getString("especie"), FontFactory.getFont(FontFactory.HELVETICA, 14)));
                    PdfPCell cel6 = new PdfPCell(new Paragraph("Raça:  " + rsUsuarPet.getString("raca"), FontFactory.getFont(FontFactory.HELVETICA, 14)));
                    PdfPCell cel7 = new PdfPCell(new Paragraph("Idade:  " + rsUsuarPet.getString("idade"), FontFactory.getFont(FontFactory.HELVETICA, 14)));
                    PdfPCell cel8 = new PdfPCell(new Paragraph("Imagem do Pet:  ", FontFactory.getFont(FontFactory.HELVETICA, 14)));
                    PdfPCell cel9 = new PdfPCell(image3);

                    table2.addCell(cel3);
                    table2.addCell(cel4);
                    table3.addCell(cel5);
                    table3.addCell(cel6);
                    table3.addCell(cel7);
                    table4.addCell(cel8);
                    table4.addCell(cel9);
                    documento.add(table2);
                    documento.add(table3);
                    documento.add(table4);
                }

                documento.add(new Paragraph("\n"));
                documento.add(new Paragraph("\n"));
                Paragraph para5 = new Paragraph("__________________________________________________.");
                para5.setAlignment(Element.ALIGN_CENTER);
                documento.add(para5);
                Paragraph para6 = new Paragraph("Assinatura Doador(a)");
                para6.setAlignment(Element.ALIGN_CENTER);
                documento.add(para6);
                documento.add(new Paragraph("\n"));
                documento.add(new Paragraph("\n"));
                 Paragraph para4 = new Paragraph("__________________________________________________.");
                para4.setAlignment(Element.ALIGN_CENTER);
                documento.add(para4);
                Paragraph para3 = new Paragraph("Assinatura Acolhedor(a)");
                para3.setAlignment(Element.ALIGN_CENTER);
                documento.add(para3);         
            
                documento.add(new Paragraph("\n"));
                documento.add(new Paragraph("\n"));
                
                Image image2 = Image.getInstance("C:/Users/Me/Documents/NetBeansProjects/PetCaring/web/lib/img/Brackets.png");
                image2.setAlignment(Image.ALIGN_CENTER);
                image2.scalePercent(50, 50);
                documento.add(image2);
                
                
                Paragraph para2 = new Paragraph("A PetCaring agradece que tenham escolhido nossa plataforma.", FontFactory.getFont(FontFactory.HELVETICA_BOLD, 12));
                para2.setAlignment(Element.ALIGN_CENTER);
                documento.add(para2);
                documento.close();
            }
            
             response.sendRedirect("DocumentoBanco?idParaUsuario="+ id_userDoador +"&codigo_pet="+ cod_pet +"&idDoUsuario=" + id_userAcolhedor);
            documento.close();
        } catch (Exception e) {
            System.err.println(e);

        }
    }

}
