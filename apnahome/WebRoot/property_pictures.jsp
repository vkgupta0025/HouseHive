<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="p1.DBInfo"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%
 String address=request.getParameter("id1");
 String city=request.getParameter("id2");
 
 Connection con=DBInfo.getConnection();
 String query="select * from "+city+" where address=?";
 PreparedStatement ps=con.prepareStatement(query);
 ps.setString(1, address);
 ResultSet rs=ps.executeQuery();
 rs.next();
 int image=1;
 %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Your styles -->
  <link href="css1/bootstrap.css" rel="stylesheet" media="screen">
  <link href="css1/flexslider/flexslider.css" rel="stylesheet" media="screen">
  <link href="css1/styles.css" rel="stylesheet" media="screen">
  </head>
  <body>
    
<!-- BEGIN CONTENT -->
<div class="main-content">
  <div class="properties">
    <div class="container">
      <div class="grid_full_width gird_sidebar">
        <div class="row">
         
         <!-- Main content -->
         <div class="span9">
           <!-- Property detail -->
           <div class="property_detail">
            <section class="slider-detail">
              <div id="pic-detail" class="flexslider">
                <ul class="slides">
               <%
                   
                  while((new File("../webapps/apnahome1/"+city+"/"+address+image+".jpg")).exists())
                  {
                  
                %> 
                  <li>
                    <a class="detailbox" href="<%=city+"/"+address+image+".jpg" %>"><img alt=""  width="620" height="388" src=<%="'"+city+"/"+address+image+".jpg'" %>/></a>
                  </li>
				  
				  <%
				      image++;
				     }
				   %>                  
                  
                </ul>
              </div>
              <%
                image=1; 
              %>
              <div id="pic-control" class="flexslider">
                <ul class="slides">
               <%
                  while(new File("../webapps/apnahome1/"+city+"/"+address+image+".jpg").exists())
                  {                   
                %> 
				  <li>
                    <img alt="" src=<%="'"+city+"/"+address+image+".jpg'" %> />
                  </li>
                   <%
				      image++;
				     }
				   %>  
                </ul>
              </div>
			  
			  
            </section>
			
            <div class="infotext-detail">
              <h3><%=rs.getString(1)+","+city.toUpperCase() %></h3>
              <span class="price">Rs.<%=rs.getString(5) %></span>
              <div class="row">
                <div class="span260px">
                  <ul class="title-info">
                    <li>Bedrooms&nbsp;&nbsp;<img src="assets/img/icons/bedrooms@2x.png"> <span> <%=rs.getString(3) %></span> </li>
                    <li>Bathrooms&nbsp;&nbsp;<img src="assets/img/icons/bathrooms@2x.png"> <span> <%=rs.getString(4) %></span></li>
                    <li>Square Footage <span><%=rs.getString(6) %> sqft</span></li>
                    <li>Type: <span><%=rs.getString(8)%></span></li>
                  </ul>
                </div>
                <div class="span260px pull-right">
                  <ul class="title-info">
                    <li>&nbsp;&nbsp;<img src="assets/img/icons/mail-gray@2x.png"><span><%=rs.getString(10) %></span> </li>
                    <li>&nbsp;&nbsp;&nbsp;<img src="assets/img/icons/cell-phone-gray@2x.png"><span> <%=rs.getString(2) %></span></li>
                  </ul>
                </div>
              </div> 
            </div>
          </div>
          <!-- End Property -->
        </div>
        <!-- End Main content -->  
        
      </div>
    </div>
  </div>
</div>
</div>
<!-- END CONTENT -->



<!-- Always latest version of jQuery-->
<script src="js1/jquery-1.8.3.min.js"></script>

<!-- Some scripts that are used in almost every page -->
<script src="js1/tinynav/tinynav.js" type="text/javascript"></script>

<!-- ================ Property-detail page only scripts ============ -->
<script src="js1/flexflider/jquery.flexslider-min.js"></script>

<script type="text/javascript">
/* <![CDATA[ */
jQuery(function($){
  $('#pic-control').flexslider({
    animation: "slide",
    controlNav: false,

    animationLoop: false,
    slideshow: false,
    itemWidth: 55,
    itemMargin: 10,
    maxItems: 7,
    asNavFor: '#pic-detail'
  });

  $('#pic-detail').flexslider({
    controlNav: false,
    directionNav: false,
    animationLoop: false,
    slideshow: false,
    sync: "#pic-control",
    start: function(slider){
      $('body').removeClass('loading');
    }
  });

  $(".detailbox").colorbox({rel:'detailbox'});
});
/* ]]> */
</script>
</body>
</html>

