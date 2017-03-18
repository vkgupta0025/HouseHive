

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import p1.DBInfo;

import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class UploadImages
 */
public class UploadImages extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession();
		
		//upload the images
		MultipartRequest ms=new MultipartRequest(request, "../webapps/apnahome1/"+((String)session.getAttribute("city")).toLowerCase()+"/");
		
		
		//
		Connection con=DBInfo.getConnection();
		String query="insert into "+(String)session.getAttribute("city")+" values(?,?,?,?,?,?,?,?,?,?)";
		
	    try 
	    {
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setString(1,(String)session.getAttribute("propaddress"));
			ps.setString(2,(String)session.getAttribute("contact"));
			ps.setString(3,(String)session.getAttribute("bedrooms"));
			ps.setString(4,(String)session.getAttribute("bathrooms"));
			ps.setString(5,(String)session.getAttribute("amount"));
			ps.setString(6,(String)session.getAttribute("area"));
			ps.setString(7,(String)session.getAttribute("buyrent"));
			ps.setString(8,(String)session.getAttribute("proptype"));			
			ps.setString(9,(String)session.getAttribute("username"));
			ps.setString(10,(String)session.getAttribute("email"));
            			
			int i=ps.executeUpdate();
			if(i==1)
				System.out.println("db done!");
			    response.sendRedirect("../done.jsp");
			
		} 
	    catch (SQLException e) 
	    {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    
	}

}
