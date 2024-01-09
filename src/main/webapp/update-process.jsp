<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/signup";%>
<%!String user = "root";%>
<%!String psw = "Passwd@123";%>
<%

RequestDispatcher dispatcher = null;
String nid = request.getParameter("nid");
String name=request.getParameter("name");
String id=request.getParameter("id");
String mobile=request.getParameter("mobile");
String dateOf=request.getParameter("dateOf");
String outTime=request.getParameter("outTime");
String inTime=request.getParameter("inTime");
String reason=request.getParameter("reason");
String permission=request.getParameter("permission");
if(nid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(nid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update applicationusers set nid=?,name=?,id=?,mobile=?,dateOf=?,outTime=?, inTime=?, reason=?, permission=? where nid="+nid;
ps = con.prepareStatement(sql);
ps.setString(1,nid);
ps.setString(2,name);
ps.setString(3, id);
ps.setString(4, mobile);
ps.setString(5, dateOf);
ps.setString(6, outTime);
ps.setString(7, inTime);
ps.setString(8, reason);
ps.setString(9, permission);
int i = ps.executeUpdate();
if(i > 0)
{
	
out.print("Record Updated Successfully");
dispatcher = request.getRequestDispatcher("Teacher.jsp");

}
else
{
out.print("Updated.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);

}
}
%>
<html>
<head>
<title></title>
<body>
<a href="Teacher.jsp">List</a>
</body>
</head>
</html>