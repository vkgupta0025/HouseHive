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
          <h2>a few details to know your choice and serve you best!</h2>
          <form action="servlet/BuyResults">
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
                    <option value=''>--BUY OR RENT--</option>
                    <option value="sell">Buy</option>
                    <option value="rent">Rent</option>
                   
                  </select>
                </label>
                <label>	
                  <input class="search" type="submit" value="search your home"/>
                </label>	
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <!-- Tabber -->
  <!-- End Tabber Find -->
<script type="text/javascript" src="js1/tabber/tabber.js"></script>
</body>
</html>