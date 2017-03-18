

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





import p1.DBInfo;

/**
 * Servlet implementation class DeleteProp
 */
public class DeleteProp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int flag=0;
		String city=request.getParameter("id1");
		String address=request.getParameter("id2");
	    Connection con=DBInfo.getConnection();
	    String query="delete from "+city+" where address =?";
	    try 
	    {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,address);
			flag=ps.executeUpdate();
		} 
	    catch (SQLException e) 
	    {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    if(flag==1)
	    {
	    	int image=1;
	    	File f;
	    	while((f=new File("../webapps/apnahome1/"+city+"/"+address+image+".jpg")).exists())
            {
	    	       f.delete();   //to delete the images of prop from folder
	    	       System.out.println(image);
	    	       image++;
            }
	    	
	       response.sendRedirect("../myproperties.jsp");
	       
	    }    
	}

}
