<%@page import="com.db.DbConnect"%>
<%@ page import="java.sql.ResultSet"%>
<%

String pwd=request.getParameter("new");
String cpwd=request.getParameter("confirm");
String update="update users set password='"+request.getParameter("new")+"' where username='"+session.getAttribute("user")+"'";
try{
DbConnect db=new DbConnect();
db.getConnect();
if(pwd!=null&&cpwd!=null)
{
db.executeUpdates(update);
%>
<script type="text/javascript">
alert("Password changed!");
</script>
<%
response.sendRedirect("http://localhost:8080/Instant_voyage/settings.jsp");
}
else
	out.print("sorry");
}catch(Exception e){}




%>