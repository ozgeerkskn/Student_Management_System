import java.sql.*;
public class MyConnection {
    public static Connection getConnection(){
    
    Connection con = null;
    
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stdmgdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
        
    }catch (Exception ex) {
        System.out.println("Error hata: "+ex.getMessage());
    }
    return con;
}
}
