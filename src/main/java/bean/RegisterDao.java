package bean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RegisterDao {

	public static int register(User u) {
		int status = 0;
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps = con.prepareStatement("insert into Usertablenew values(?,?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setInt(3, u.getAge());
			ps.setString(4, u.getDob());

			status = ps.executeUpdate();
		} catch (Exception e) {
		}

		return status;
	}

	public static List<User> getAllRecords(){  
	    List<User> list=new ArrayList<User>();  
	      
	    try{  
	        Connection con=ConnectionProvider.getCon();  
	        PreparedStatement ps=con.prepareStatement("select * from Usertablenew");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	        
	            u.setName(rs.getString("name"));  	         
	            u.setEmail(rs.getString("email"));  
	            u.setAge(rs.getInt("age"));
	            u.setDob(rs.getString("dob"));
	           
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
}