/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

/**
 *
 * @author Pham_Thai_Ha <>
 */
public class UserDAO {
    public static User getUserByUserName(String username){
        User user = null;
        try (Connection conn = DBcontext.getConnection()) {
            PreparedStatement prepstatement = conn.prepareStatement("select * from [User] where UserName=?");
            prepstatement.setString(1, username);
            ResultSet rs = prepstatement.executeQuery();
            while(rs.next()){
                user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return user;
    }
}
