package p1;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddCity extends HttpServlet {

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
       String city=request.getParameter("city").toLowerCase();
       int flag=0;
       int flag1=0;
       
       //to check whether city is not already present
       Connection con=DBInfo.getConnection();
       String query="select * from cities where cityname=?";
       try
       {
		 PreparedStatement ps=con.prepareStatement(query);
		 ps.setString(1, city);
		 ResultSet rs=ps.executeQuery();
		 while(rs.next())
		 {
			 flag=1;
		 }
		
	   } 
       catch (SQLException e) 
       {
		// TODO Auto-generated catch block
		e.printStackTrace();
	   }
       if(flag!=1)
       {
    	   String query1="insert into cities values(?)";
    	   try 
    	    {
			  PreparedStatement ps1=con.prepareStatement(query1);
			  ps1.setString(1, city);
			  flag1=ps1.executeUpdate();	    } 
    	   catch (SQLException e) 
    	   {
			// TODO Auto-generated catch block
			e.printStackTrace();
		   }
    	   
       }
      
       
       if(flag==0)
       {
    	      //create folder to keep images of properties
    	      File f=new File("../webapps/apnahome1/"+city);
    		  f.mkdir();
    		  
    		  //create table of city name in database
    		  String query2="create table "+city+" (address VARCHAR(300) NOT NULL,contact VARCHAR(15),bedroom VARCHAR(5),bathroom VARCHAR(5),amount VARCHAR(10),area VARCHAR(20),buyrent VARCHAR(10),proptype VARCHAR(30),username VARCHAR(100),email VARCHAR(100),PRIMARY KEY(`address`))";
              try
              {
				
            	  PreparedStatement ps2=con.prepareStatement(query2);
            	  ps2.executeUpdate();
			  } 
              catch (SQLException e) 
              {
				// TODO Auto-generated catch block
				e.printStackTrace();
			  }
       }
       response.sendRedirect("../Sell.jsp");
       
	}

}
