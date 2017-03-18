<%
  session.setAttribute("city",request.getParameter("city"));
  session.setAttribute("proptype",request.getParameter("proptype"));
  session.setAttribute("buyrent",request.getParameter("buyrent"));
  session.setAttribute("contact",request.getParameter("contact"));
  session.setAttribute("bedrooms",request.getParameter("bedrooms"));
  session.setAttribute("amount",request.getParameter("amount"));
  session.setAttribute("bathrooms",request.getParameter("bathrooms"));
  session.setAttribute("propaddress",request.getParameter("propaddress"));
  session.setAttribute("area",request.getParameter("area"));
%>
<!DOCTYPE html>
<html lang="en">
<head>
  
  <!-- Your styles -->
  <link href="css/bootstrap.css" rel="stylesheet" media="screen">
  <link href="css/styles.css" rel="stylesheet" media="screen">
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
              <form action="servlet/UploadImages" method="post" enctype="multipart/form-data">
                <div class="row">
                  <div class="span280px"> 
                    <input type="file" multiple name="fname" accept="image/*">
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

