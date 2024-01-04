package connectionPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	
public static java.sql.Connection getConnection() throws SQLException, ClassNotFoundException{
	 String url = "jdbc:mysql://127.0.0.1:3306/flight_booking";
     String username = "Jayaraman";
     String password = "jaya@987654321";
     Connection connection=null;
        // Load the JDBC driver
     try {
         // Load the JDBC driver
         Class.forName("com.mysql.cj.jdbc.Driver");

         // Establish the connection
          connection = DriverManager.getConnection(url, username, password);
          return connection;
        
     } catch (ClassNotFoundException e) {
         System.err.println("Error loading JDBC driver: " + e.getMessage());
     } catch (SQLException e) {
         System.err.println("Error connecting to the database: " + e.getMessage());
     }
        return null;
	
}

         


}
