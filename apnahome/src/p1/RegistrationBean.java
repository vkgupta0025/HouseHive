package p1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

public class RegistrationBean
{
     String username,email;
     public static String from="pawankataria94@gmail.com";
     public static String password="";
     
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int registration()
	{
		Connection con=DBInfo.getConnection();
		String query="insert into login values(?,?,?)";
		
		
		 String password="";
		    
	     for(int i=0;i<8;i++)
	     {
	       password=password+((int)(Math.random()*9)+1);
	     }
		int i=0;
		
		try 
		{
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, username);
			ps.setString(3, password);
			
			i=ps.executeUpdate();
			 ps.close();
			
		}
		catch (SQLException e) 
		{
		
			e.printStackTrace();
		}
		
		 if(i!=0)
		 {
		    sendMail(email,password);
		 }
		
		return i;		
	}
	public void sendMail(String toadd,String userpass)
	{
		String to[]=new String[1];
		to[0]=toadd;
		String msg="Your ApnaHome account password is "+userpass+" ."; 
		String subject="ApnaHOME account password";
		
		int i = 0;
		
		Properties properties = System.getProperties();
		
		
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.auth", "true");	 
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		properties.put("mail.smtp.user",from);
		
		
  
  
		Session session = Session.getInstance(properties, new javax.mail.Authenticator()
		{
		protected PasswordAuthentication getPasswordAuthentication()
		{
		return new PasswordAuthentication(from, password);
		} 
		}
		);
		
		 try
		  {
	         final MimeMessage message = new MimeMessage(session);
	         message.setFrom(new InternetAddress(from));
	         InternetAddress[] addressTo = new InternetAddress[to.length];
	            for (int j = 0; j < to.length; j++)
	            {
	                addressTo[j] = new InternetAddress(to[j]);
	            }
	            message.setRecipients(Message.RecipientType.BCC, addressTo); 
				message.setSubject(subject);  //set subject
				
				message.setText(msg);  //set message

				
				new Thread(new Runnable()
				{
				public void run() 
				{
					try
					{
						Transport.send(message);
					}
					catch (Exception e){e.printStackTrace();}
				}
				}).start();
				session = null;
				i = 1;
	        }
			  catch (MessagingException mex) 
			  {
		         mex.printStackTrace();
				// return i;
		      }
			   //return i;


	}
     
}

