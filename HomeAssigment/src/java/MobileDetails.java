
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author thedarkalchemist
 */
public class MobileDetails {
        public ResultSet getDetails(MobileModule m){
    Statement st;
    Connection con;
    ResultSet rs = null;
    dbConnect d = new dbConnect();
    try{
    con = d.getConnect();
    st = con.createStatement();
    String str = "select * from mobile where Brand="+m.getBrand()+"";
    rs = st.executeQuery(str);
    if(rs.next())
        return rs;
    }catch(Exception e){
    }
    return rs;
    }
}
