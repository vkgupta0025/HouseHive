<jsp:useBean id="obj" class="p1.RegistrationBean">
<jsp:setProperty property="*" name="obj"/>
</jsp:useBean>

<%
  int i=0;
  i=obj.registration();
  if(i!=0)
 {
%>
<script type="text/javascript">
alert("Your password has been sent to your mail successfully");
window.location='login.jsp';
</script>
 <%
 }
 else
 {
 %>
<script type="text/javascript">
alert("Registration Failed!");
window.location='login.jsp';
</script>
<%
}
%>
