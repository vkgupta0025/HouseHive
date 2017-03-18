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
    <td> <font color="#3399FF" face="Segoe Print" size="+5" ><i><u>Property Details:</u></i></font></td>
  </tr>
  <tr>
    <td><%@include file="property_pictures.jsp" %></td>
  </tr>
  <tr>
    <td><%@include file="pagefiller.html" %></td>
  </tr>
  <tr>
    <td><%@include file="footer.html" %></td>
  </tr>
</table>
