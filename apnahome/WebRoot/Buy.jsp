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
    <td><%@include file="header.html"%></td>
  </tr>
  
  <tr>
    <td  height="30"><%@include file="filter.jsp" %>;</td>
  </tr>
  
  <tr>
     <td>
   <%
    
     int flag=0;
     int first_time=1;
     
     if((ResultSet)session.getAttribute("resultset")!=null)
     {
        
        first_time=0;
          
     %>
   <html>  
  <head>
	  <!-- Your styles -->
	  <link href="css1/bootstrap.css" rel="stylesheet" media="screen">
	  <link href="css1/styles.css" rel="stylesheet" media="screen">
  </head>
  
  <body>  
<!-- BEGIN CONTENT  -->
<div class="main-content">
  <div class="properties">
    <div class="container">
      <!-- Grid full width 3 column -->
      <div class="grid_full_width" id="3column">
        <div class="row">
          <ul class="products" id="able-list">
      
      
      <%
            
       ResultSet res=(ResultSet)(session.getAttribute("resultset"));
          while(res.next())
           {
               
               flag=1;       
               %>
               <li class="span4 product last house offices Residential">
              <div class="product-item">
                <div class="imagewrapper">
                  <img alt="" width="300" height="180" src=<%="'"+res.getMetaData().getTableName(1)+"/"+res.getString(1).replaceAll("[?*\\/\"|]", "")+"1.jpg'"%>>
                  <span class="price">Rs. <%=res.getString(5)%></span>
                </div>
                <h3><img src="assets/img/markers/marker-blue.png"><a href="property_detail.jsp?id1=<%=res.getString(1)%>&id2=<%=res.getMetaData().getTableName(1) %>" title=""><%=res.getString(1)%></a></h3>
                <ul class="title-info">
                  <li>Bedrooms&nbsp;&nbsp;<img src="assets/img/icons/bedrooms@2x.png"> <span><%=res.getString(3)%></span> </li>
                  <li>Bathrooms&nbsp;&nbsp;<img src="assets/img/icons/bathrooms@2x.png"> <span> <%=res.getString(4)%></span></li>
                  <li>Square Footage <span><%=res.getString(6)%>sqft</span></li>
                  <li>Type: <span><%=res.getString(8)%></span></li>
                </ul>
              </div>
            </li>	
               <% 
   
          }
          %>
        
          
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END CONTENT  -->


<div id='bttop'>BACK TO TOP</div>



</body>
</html>
          
          
          
    <% 
     }
     
    %>
   </td></tr>
   <%
     if(flag==0 && first_time!=1)
     {
      
    %>
    
       <tr><td><img src="img/no_result.png" alt="NO RESULT FOUND!"></td></tr>
    <%
       session.removeAttribute("resultset");
      }
     %>
  
   <tr><td><%@include file="pagefiller.html" %></td></tr>
  <tr>
    <td><%@include file="footer.html"%></td>
  </tr>
</table>
