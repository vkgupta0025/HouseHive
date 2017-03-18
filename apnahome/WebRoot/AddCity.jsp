<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.DBInfo"%>
<%@page import="java.sql.Connection"%>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<table width="100%" border="1">
<%if(session.getAttribute("valid")!=null) 
{
 %>
 <tr><td><jsp:include page="breadcumb.jsp"/></td></tr>
 <%
   }
  %>
  <tr>
    <td><%@include file="header.html" %></td>
  </tr>
  <tr>
    <td>
    <!DOCTYPE html>
<html lang="en">
<head>
  
  <!-- Your styles -->
  <link href="css1/bootstrap.css" rel="stylesheet" media="screen">
  <link href="css1/styles.css" rel="stylesheet" media="screen">
  </head>
  <body>
  
   

<!--BEGIN CONTENT -->
<div class="main-content">
  <div class="properties">
    <div class="container">
      <div class="grid_full_width gird_sidebar">
        <div class="row">
         <!-- Main content -->
         <div class="span8">
          <!-- Contact -->
          <div class="contact">
            <div class="contact-form">
              <form action="servlet/AddCity">
                <div class="row">
                  <div class="span280px">
                  <font color="#3399FF" face="Segoe Script" size="+1" >We Provide Service in:</font>
                  <br/>
                  <%
                    // to print the names of cities in which service is already present
                    
                    Connection con=DBInfo.getConnection();
                    String query="select * from cities";
                    PreparedStatement ps=con.prepareStatement(query);
                    ResultSet rs=ps.executeQuery();
                    while(rs.next())
                    {
                      %>
                      
                    <%="|"+rs.getString(1).toUpperCase()+"|"%>&nbsp;&nbsp;&nbsp;&nbsp;
                      
                      <% 
                         
                    }
                   %>
                      <label>Your City Name</label>
                    <input type="text" required name="city">
                  </div>
                </div>
                <button class="button-send" type="submit">Submit</button>
              </form>
            </div>
          </div>
          <!-- End contact -->
        </div>
        <!-- End Main content -->  
     </div>
  </div>
</div>
</div>
</div>
<!-- END CONTENT -->
</body>
</html>

    
    </td>
  </tr>
  <tr>
    <td><%@include file="footer.html" %></td>
  </tr>
</table>
