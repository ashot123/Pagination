
package test.paging;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

class ConnectionFactory {
    //static reference to itself
    private static ConnectionFactory instance = new ConnectionFactory();
    private String url = "jdbc:mysql://localhost:3306/common_schema?autoReconnect=true&useSSL=false";
    private String user = "root";
    private String password = "r00t";
    String driverClass = "com.mysql.cj.jdbc.Driver";

    //private constructor
    private ConnectionFactory() {
        try {
            Class.forName(driverClass);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static ConnectionFactory getInstance() {
        return instance;
    }

    public Connection getConnection() throws SQLException, ClassNotFoundException {
        Connection connection = DriverManager.getConnection(url, user, password);
        return connection;
    }
}
