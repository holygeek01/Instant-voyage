	<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.DbConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Instant voyage| Holiday packages</title>
</head>
<body>
<div style="width:100%;">
<h3>Packages Available!</h3>

<%

DbConnect db=new DbConnect();
db.getConnect();
String sql="select * from holidays";
ResultSet rs=db.execute(sql);
while(rs.next())
{

%>

<div style="width:25%; float:left;">

<img src="images/5.jpg" height="10%" width="50%">
<br/>
<h3><%=rs.getString(1) %></h3>
<p><%=rs.getString(2) %>-<%=rs.getString(3) %></p>
<p>Price: Rs <%=rs.getString(6) %></p>
<a href="holiday payment.jsp?name=<%=rs.getString(1)%>&startdate=<%= rs.getString(2)%>&enddate=<%=rs.getString(3) %>&rate=<%=rs.getString(6)%>">

Book now!



</a>
</div>
<% } %>

</div>
<br/>
<br/>

</body>
</html>