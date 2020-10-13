
package com.tech.blog.helper;

import java.sql.*;
public class ConnectionProvider {
    
    
    private static Connection con;
    public static Connection getConnection()
    {
        try {
            
            if(con == null){
                Class.forName("org.postgresql.Driver");
            
            con = DriverManager.getConnection("jdbc:postgresql://localhost/techblog","postgres", "19oct&87");
            }
            
            
        } catch (Exception e) {
            e.printStackTrace(); 
        }
        return con;
    }
}
