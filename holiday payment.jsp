<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Instant voyage|payment</title>
<%
if((session.getAttribute("user"))==null){
	response.sendRedirect("holidays.jsp?msg=nlogin");
}
%>
</head>


<body>


<jsp:include page="hd.jsp" ></jsp:include>





<form action="Holiday"   method="post">



<table>
<tr><tdPackage Name:</tdPackage><td<input type="text" name="pname"   value="<%= request.getParameter("name") %>"/></td></tr>
<tr><td>Start date:</td><td><input type="text" name="startdate"    value="<%=request.getParameter("startdate") %>"  /></td></tr>
<tr><td>EndDate:</td><td><input type="text" name="enddate"     value="<%=request.getParameter("enddate") %>"/></td></tr>
<tr><td>Rate:</td><td><input type="text" name="rate"  value="<%=request.getParameter("rate")%>"/></td></tr>
<tr><td>Account No:</td><td><input type="text" name="rate" /></td></tr>
<tr>
<td>
3 PIN:</td><td><input type="password"></input></td></tr>
<tr><td>5 PIN:</td><td><input type="password"></input></td></tr>
<tr><td></td><td><input type="submit" value="Submit" /></td></tr>
</table>
</form>
<br/>
<br/>
<br/>
<br/>
<br/>



<jsp:include page="footer.jsp" ></jsp:include>

</body>
</html>
