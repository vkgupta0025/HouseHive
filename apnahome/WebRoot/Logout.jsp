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
<%
 session.invalidate();
 %>
<table width="100%" border="1">
  <tr>
    <td><%@include file="header.html" %></td>
  </tr>
  <tr>
    <td><img src="img/logout.png" alt="logout done!" width="1217" height="319" align="middle" /></td>
  </tr>
  <tr>
    <td><%@include file="pagefiller.html" %></td>
  </tr>
  <tr>
    <td><%@include file="footer.html" %></td>
  </tr>
</table>
