<jsp:useBean id="obj" class="p1.LoginBean">
<jsp:setProperty property="*" name="obj"/>
</jsp:useBean>
<%
  String email;
  email=obj.checkLogin();
  if(!email.equals(""))
  { 
     
    session.setAttribute("username",obj.getUsername());
    session.setAttribute("password",obj.getPassword());
    session.setAttribute("email", email);
    session.setAttribute("valid", "valid");
    response.sendRedirect("index.jsp");
  }
  else
  {
%>
<script type="text/javascript">
alert("Login Failed!");
window.location='login.jsp';
</script>
<%
}
%>