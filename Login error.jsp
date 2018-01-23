<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
</head>
<body>
<jsp:include page="hd.jsp"></jsp:include>

<br/>
<h2><%=request.getParameter("name") %></h2>
<h3>Description:</h3>
<p>
Start Date:<%=request.getParameter("startdate") %><br/>
End Date:<%=request.getParameter("enddate") %><br/>
Price:<%=request.getParameter("rate") %><br/>
</p>
<p>
<%=request.getParameter("") %>
</p>
<a href="holiday payment.jsp>Book</a>
<br/>
<br/>
<br/>
<br/>



<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>