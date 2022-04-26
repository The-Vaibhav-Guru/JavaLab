/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

import java.sql.*;
/**
 *
 * @author thedarkalchemist
 */
public class dbConnect {
        private static Connection con = null;
     
    public Connection getConnect(){       
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MobileData","root","vaibhav1");            
        }catch(Exception x){
            
        }
        return con;
    }
}
