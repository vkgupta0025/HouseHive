<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.DBInfo"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<head>
   <!-- Your styles -->
  <link href="css1/bootstrap.css" rel="stylesheet" media="screen">
  <link href="css1/tabber/tabber.css" rel="stylesheet" media="screen">
  <link href="css1/styles.css" rel="stylesheet" media="screen">
</head>
  <body>
    
<!-- BEGIN CONTENT -->
 
<div class="main-content">
	<!-- Tabber Find -->
	<!-- Tabber -->
  <div id="findtabber" class="find">
    <div class="container">
      <div class="tabber">
        <div class="tabbertab">
          <h2>Few Details About Your Property</h2>
          <form action="uploadimage.jsp">
            <div class="row">
              
              <div class="span3">
                <label>
                  <select name="city" required>
                    <option value=''>--SELECT CITY--</option>
                   <%
                     Connection con=DBInfo.getConnection();
                     String query="select * from cities";
                     PreparedStatement ps=con.prepareStatement(query);
                     ResultSet rs=ps.executeQuery();
                     while(rs.next())
                     {
                   %>
                    <option value=<%=rs.getString(1) %>><%=rs.getString(1)%></option>
                   <%
                      }
                   %>
                  </select>
                </label>
                <label>
                  <select required name=proptype>
                    <option value=''>--Property Type--</option>
                    <option value="single room">Single Room</option>
                    <option value="separate house">Separate House</option>
                    <option value="apartment">Apartment</option>
                    <option value="bunglow">Bunglow</option>
                  </select>
                </label>
              </div>
              <div class="span3">
                <label>
                  <select required name=buyrent>
                    <option value=''>--SELL OR RENT--</option>
                    <option value="sell">Sell</option>
                    <option value="rent">Rent</option>
                   
                  </select>
                </label>
                
               
               
                    <input type="number" name="area" min="0" placeholder="Area(in sqft)" required>
               
                <label>	
                  <a href="AddCity.jsp"><input class="search" type="button" value="My City Not In List?" /></a>
                </label>
              </div>
            </div>
            
   <div id="findtabber" class="find">       
           <div class="span3">
                
          </div></div>
        </div>
      </div>
    </div>
  <!-- Tabber -->
  <!-- End Tabber Find -->
  
  <!--BEGIN CONTENT -->
  <div class="properties">
    <div class="container">
      <div class="grid_full_width gird_sidebar">
        <div class="row">
         <!-- Main content -->
         <div class="span8">
          <!-- Contact -->
          <div class="contact">
            <div class="contact-form">
             
                <div class="row">
                  <div class="span280px">
                    <label>Contact N0.</label>
                    <input type="tel" pattern="[0-9]{10}" required name="contact" placeholder="Enter 10 digit mobile no." title="invalid mobile number">
                    <label>Bedrooms</lSabel>
                    <input type="number" name="bedrooms" min="0" placeholder="Bedrooms" required>
                  </div>
                  <div class="span280px pull-right">
                    <label>Amount Excpected(INR)</label>
                    <input type="number" name="amount" min="0" placeholder="Expected Amount(INR)">
                    <label>Bathrooms</label>
                    <input type="number" name="bathrooms" min="0" placeholder="Bathrooms" required>
                  </div>
                </div>
                <label>Property Address</label>
                <textarea rows="4" required name="propaddress"></textarea>
                <button class="button-send" type="submit">Next>></button>
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
 </div>
 
<script type="text/javascript" src="js1/tabber/tabber.js"></script>
</body>
</html>