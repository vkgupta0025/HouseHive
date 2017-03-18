package p1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginBean 
{
   String username,password;

   
	public String getUsername() 
	{
		return username;
	}
	
	public void setUsername(String username) 
	{
		this.username = username;
	}
	
	public String getPassword() 
	{
		return password;
	}
	
	public void setPassword(String password) 
	{
		this.password = password;
	}
	int i=0;
	
	public String checkLogin()
	{
		String email="";
		Connection con=DBInfo.getConnection();
		String query="select * from login where username=? and password=?";
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
            	i=1;
            	email=rs.getString(1);
            }
            
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
			return email;
		
	}
}
