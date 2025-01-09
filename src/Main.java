import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Main {
    public static void main(String[] args) throws SQLException {
        String url = "jdbc:mysql://localhost:3306/Operadores";
        String user = "root";
        String password = "1234";

        String query = "SELECT * FROM Clientes";
        try (Connection conexion = DriverManager.getConnection(url, user, password)){
            PreparedStatement statement = conexion.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();

            System.out.println("Conexion establecida correctamente");
            while (resultSet.next()){
                System.out.println("ID: " + resultSet.getInt("id") + ", " + "Nombre: " + resultSet.getString("nombre") + ", " + "Apellido: " + resultSet.getString("apellido") + ", " + "Correo: " + resultSet.getString("correo"));
            }


        } catch (Exception e) {
            System.out.println("No se pudo conectar a la base de datos");
        }
    }
}