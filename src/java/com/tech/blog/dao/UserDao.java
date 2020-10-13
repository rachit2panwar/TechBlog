
package com.tech.blog.dao;


import com.tech.blog.entities.User;
import java.sql.*;

public class UserDao {
    
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    
    public boolean saveUser(User user){
        
        boolean f = false;
        try {
            
            String query = "insert into users(name,email,password,gender,about) values(?,?,?,?,?)";
            
            PreparedStatement preparedStatement = this.con.prepareStatement(query);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setString(4, user.getGender());
            preparedStatement.setString(5, user.getAbout());
            
            preparedStatement.executeUpdate();
            f = true;   
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
    
    public User getUserByEmailAndPassword(String email, String password){
        
        User user = null;
        
        try {
            
            String query = "select * from users where email = ? and password = ?";
            
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            
            ResultSet set = preparedStatement.executeQuery();
            
            if(set.next()){
                
                user = new User();
                String name = set.getString("name");
                user.setName(name);
                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setDateTime(set.getTimestamp("rdate"));
                user.setProfile(set.getString("profile"));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return user;
    }
    
    public boolean updateUser(User user){
        
        boolean f = false;
        
        try {
            
            String query = "update users set name = ? , email = ? , password = ? , about = ? , profile = ? where id = ?";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setString(4, user.getAbout());
            preparedStatement.setString(5, user.getProfile());
            preparedStatement.setInt(6, user.getId());
            
            preparedStatement.executeUpdate();
            f = true;
            
            
        } catch (Exception e) {
            e.printStackTrace();
            
        }
        
        return f;
        
    }
    
    public User getUserByUserId(int userId) {
        User user = null;
        try {
            String q = "select * from users where id=?";
            PreparedStatement ps = this.con.prepareStatement(q);
            ps.setInt(1, userId);
            ResultSet set = ps.executeQuery();
            if (set.next()) {
                user = new User();

//             data from db
                String name = set.getString("name");
//             set to user object
                user.setName(name);

                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setDateTime(set.getTimestamp("rdate"));
                user.setProfile(set.getString("profile"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
}
