<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.DBInfo"%>
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
  
<tr><td><pre><font color="#808080" size="+4" face="Segoe Print">    <u>Press<img src="img/delete.png"/> to remove your property.</u></font></pre></td></tr>  
  <tr>
    <td>
         <html lang="en">
<head>
  <link href="css1/bootstrap.css" rel="stylesheet" media="screen">
  <link href="css1/styles.css" rel="stylesheet" media="screen">
</head>

<body>
<div class="main-content">
  <div class="properties">
    <div class="container">
     <!-- Full width 2 -->
     <div class="grid_full_width" id="fullwidth2">
      <div class="row">
        <div class="grid_list_product st2">
          <ul class="products" id="able-list">
         
         <%
              int flag=0;
              Connection con=DBInfo.getConnection();
              String query="select * from cities";
              PreparedStatement ps=con.prepareStatement(query);
              ResultSet rs=ps.executeQuery();
              
              
              while(rs.next())
              {
                 String city=rs.getString(1);
                 String query1="select * from "+city+" where username=? and email=?";
                 PreparedStatement ps1=con.prepareStatement(query1);
                 ps1.setString(1,(String)session.getAttribute("username"));
                 ps1.setString(2,(String)session.getAttribute("email"));
                 ResultSet rs1=ps1.executeQuery();
                 while(rs1.next())
                 {
                   flag=1;
          %>  
             <li style="display: block;" class="span12 first house offices Residential">
              <div class="product-item">
                <div class="row">
                  <div class="span4">
                    <div class="imagewrapper">
                      <img alt="" width="300" height="180" src=<%="'"+city+"/"+rs1.getString(1)+"1.jpg'"%>>
                      <span class="price">Rs.<%=rs1.getString(5)%></span>
                    </div>
                  </div>
                  <div class="span8">
                    <div class="list-right-info">
                      <h3><%=rs1.getString(1)+","+city.toUpperCase() %> </h3>
                      <div class="row">
                        <div class="span4">
                          <ul class="title-info">
                            <li>Bathrooms <span><%=rs1.getString(4)%></span> </li>
                            <li>Square Footage <span><%=rs1.getString(6)%> sqft</span></li>
                          </ul>
                        </div>
                        <div class="span4">
                          <ul class="title-info">
                            <li>Bedrooms <span> <%=rs1.getString(3) %></span></li>
                            <li>Type: <span><%=rs1.getString(8) %></span></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
			  <div style="float:right"><a href="servlet/DeleteProp?id1=<%=city%>&id2=<%=rs1.getString(1)%>" onclick="return confirm('Do you really want to remove <%=rs1.getString(1)+","+city.toUpperCase() %> from our database.');"><img src="img/delete.png" /></a></div>
            </li>           
         <%
            }
            }
         
          %>
          </ul>
        </div>
      </div>  
    </div>
    <!-- End  Full width 1 -->
  </div>
</div>
</div>
<!-- END CONTENT -->
</body>
</html>
         
    
    </td>
  </tr>
  
  <% 
  
   if(flag==0)
     {
      
    %>
    
       <tr><td><img src="img/noprop.png" alt="NO RESULT FOUND!"></td></tr>
    <%
       
      }
     %>
  
  
  
  <tr>
    <td><%@include file="pagefiller.html" %></td>
  </tr>
  
  <tr>
    <td><%@include file="footer.html" %></td>
  </tr>
  
</table>
