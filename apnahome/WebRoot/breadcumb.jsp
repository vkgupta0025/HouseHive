<!DOCTYPE html>
<html lang="en-US">
<head>
    <link rel="stylesheet" href="assets/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="assets/css/bootstrap-responsive.css" type="text/css">
   <link rel="stylesheet" href="assets/css/realia-blue.css" type="text/css" id="color-variant-default">
</head>
<body>
            <!-- BREADCRUMB -->
            <div class="breadcrumb-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="span12">
                            <ul class="breadcrumb pull-left">
                                <li>Hello <%=session.getAttribute("username") %></a></li>
                            </ul><!-- /.breadcrumb -->

                            <div class="account pull-right">
                                <ul class="nav nav-pills">
                                    <li><a href="myproperties.jsp">My Properties</a></li>
                                    <li><a href="Logout.jsp">Logout</a></li>
                                </ul>
                            </div>
                        </div><!-- /.span12 -->
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </div><!-- /.breadcrumb-wrapper -->
</body>
</html>