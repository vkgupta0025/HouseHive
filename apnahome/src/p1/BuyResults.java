package p1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class BuyResults extends HttpServlet {

	/**
	 * 
	 */
 
	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{

		
	
		String city=request.getParameter("city");
		String buyrent=request.getParameter("buyrent");
		String proptype=request.getParameter("proptype");
		
		Connection con=DBInfo.getConnection();
	    String query="select * from "+city+" where buyrent=? and proptype=?";
	    
	    try
	    {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, buyrent);
			ps.setString(2, proptype);
			ResultSet rs=ps.executeQuery();
			HttpSession session=request.getSession();
			session.setAttribute("resultset", rs);
		    response.sendRedirect("../Buy.jsp");
		} 
	    catch (SQLException e) 
	    {
			e.printStackTrace();
		}		
	}
}