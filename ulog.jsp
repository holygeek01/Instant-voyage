<%@page import="com.db.DbConnect"%>

<%@ page import="java.sql.ResultSet"%>
<%

DbConnect db=new DbConnect();
db.getConnect();

String sql="select * from users where username='"+request.getParameter("username")+"' and password='"+request.getParameter("password")+"'";
ResultSet rs=db.execute(sql);
if(rs.next())
{
    String username = request.getParameter("username");


    if((rs.getString(8)) .equals ("admin"))    
{
    	session.setAttribute("admin","username");	
response.sendRedirect("admin/adminhome.jsp");	
	//response.sendRedirect("http://localhost:8080/Instant_voyage/index.jsp?username");	
}
//if((rs.getString(8))!=null)
else{

session.setAttribute("user",username);
response.sendRedirect("index.jsp");
}
}
else
{
response.sendRedirect("index.jsp");
	%>
<script type="text/javascript">
alert("sorry Try again!");
</script>
<%}
%>