<%@page import="com.db.DbConnect"%>
<%@ page import="java.sql.ResultSet"%>
<%
String email=request.getParameter("email");
String number=request.getParameter("number");

//if(request.getParameter("email").equals(""))
//{
	if((request.getParameter("email"))!=null&&(request.getParameter("number"))!=null){
	String update="update users set emailid='"+email+"',phonenumber='"+number+"' where username='"+session.getAttribute("user")+"'";
DbConnect db=new DbConnect();
db.getConnect();
System.out.println(update);

		db.executeUpdates(update);%>
	<script type="text/javascript">
alert("Email and Phone number has been changed ");
	</script>	
		
<%				response.sendRedirect("settings.jsp");

}
else
{
	response.sendRedirect("settings.jsp?msg=null");
}

%>