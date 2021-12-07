package listarPets;

import conexao.conexao;
import Model.Dados;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.*;

public class listarPets extends HttpServlet {

    public ArrayList<Dados> listar(){
        
        ArrayList<Dados> Conteudo = new ArrayList<Dados>();
        try{
            String nome_img ="";
            String sqlListarPet = "SELECT * FROM pet WHERE status_pet != 'Adotado' ORDER BY cod_pet";
            Connection conn = conexao.Conectar();
            Statement stListarPet = conn.createStatement();
            ResultSet rsListarPet = stListarPet.executeQuery(sqlListarPet);
            
            while(rsListarPet.next()){
                Dados dados = new Dados();
                dados.setId(rsListarPet.getInt("cod_pet"));
                dados.setNome(rsListarPet.getString("nome"));
                dados.setEspecie(rsListarPet.getString("especie"));
                dados.setRaca(rsListarPet.getString("raca"));
                dados.setIdade(rsListarPet.getString("idade"));
                dados.setSexo(rsListarPet.getString("sexo"));
                dados.setStatus(rsListarPet.getString("status_pet"));
                dados.setDesc(rsListarPet.getString("descricao"));
                dados.setIdIMG(rsListarPet.getInt("id_imgPet"));
                
                String sqlBuscarImg = "SELECT * FROM imagenspet WHERE id_imgPet = '"+ rsListarPet.getInt("id_imgPet") +"'";
                Connection con = conexao.Conectar();
                Statement stBuscarImg = con.createStatement();
                ResultSet rsBuscarImg = stBuscarImg.executeQuery(sqlBuscarImg);
                
                if(rsBuscarImg.next())
                {
                    dados.setDiretorioIMG(rsBuscarImg.getString("nome_imgPet"));
                    nome_img = rsBuscarImg.getString("nome_imgPet");
                }
                
            
                dados.setId_Usuario(rsListarPet.getInt("id_usuario"));
                dados.setApelido_u(rsListarPet.getString("apelido_usuario"));
                Conteudo.add(dados);
                
                
            }
        }catch(Exception e){
            System.out.print("ListarPets::ERRO");
            System.out.print(e.getMessage());
        }
        return Conteudo;
    }
}
