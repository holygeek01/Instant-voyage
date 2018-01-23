<%@page import="com.db.DbConnect"%>
<%@page import="DAOB.DBConnect"%>
<%@ page import="java.sql.ResultSet"%>
<%

DbConnect db=new DbConnect();
db.getConnect();

String sql="insert  into 'users'  values('"+request.getParameter("username")+"','"+request.getParameter("firstname")+"','"+request.getParameter("lastname")+"','"+request.getParameter("phonenumber")+"','"+request.getParameter("emailid")+"','"+request.getParameter("password")+"'"; 
ResultSet rs=db.execute(sql);
if(rs.next())
{
out.println("registration success");


}
else
{
out.println("error");

}
%>