package DangNhap;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@SuppressWarnings("unchecked")
public class DBConnection {
            public static Connection getConnection(){
        
        Connection connection=null;
        try {
            String dbUrl = "jdbc:jtds:sqlserver://NHITRAN:1433/QuanLyHocVien";
            connection = DriverManager.getConnection(dbUrl, "sa","sa");
        } catch (SQLException ex) {
        }
       return connection;
        
    }
    public static void closeConnection(Connection con){
        if(con !=null){
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }
    public static void main(String[] args) {
        Connection conn = getConnection();
        System.out.println(conn);
    } 
}
