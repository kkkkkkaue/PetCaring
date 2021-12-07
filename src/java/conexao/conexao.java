package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexao{
    public static Connection Conectar() throws SQLException {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/petcaring?serverTimezone=GMT", "root", "");
        }
        catch(ClassNotFoundException e){
            System.out.print("Erro ao conectar com o Banco de dados: " + e);
        }
        return null;
    }
}
