package lk.trackr.util;

import lk.trackr.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserUtil {
    public static int addInfo(String u1, String u2, String sql){
        int i = 0;
        Connection con = DB.getCon();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
    		
            ps.setString(1, null);
            ps.setString(2, u1);
            ps.setString(3, u2);
            ps.setString(4, null);
            
           i= ps.executeUpdate();
                        
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return i;
    }
    
    public static ResultSet loginUser(User user,String sql) {
    
    	Connection con = DB.getCon();
    
    	ResultSet rs = null;
        	try {
        		PreparedStatement ps = con.prepareStatement(sql);
            
        		ps.setString(1, user.getPid());
        		ps.setString(2, user.getPasswd());
        		rs = ps.executeQuery();
        	} catch (SQLException ex) {
        		ex.printStackTrace();
        	}
 
        	return rs;
    }

}     