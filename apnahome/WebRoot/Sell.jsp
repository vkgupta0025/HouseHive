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
 
 <%if(session.getAttribute("valid")!=null) 
{
 %> 
  <tr>
     <td><%@include file="filter1.jsp" %></td>
  </tr>
   <%
   }
   else
   {
  %>
  <tr><td><img src="img/loginfirst.png" alt="please login first!" width="1308" height="448" /></td>
  </tr>
   <%
   }
  %>
  
   <tr><td><%@include file="pagefiller.html" %></td></tr>
  <tr>
    <td><%@include file="footer.html" %></td>
  </tr>
</table>
