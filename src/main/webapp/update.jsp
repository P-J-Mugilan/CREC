<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String nid = request.getParameter("nid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "signup";
String userid = "root";
String password = "Passwd@123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup?useSSL=false","root","Passwd@123");
statement=connection.createStatement();
String sql ="select * from applicationusers where nid="+ nid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="update-process.jsp">
<input type="hidden" name="nid" value="<%=resultSet.getString("nid") %>">
<input type="text" name="nid" value="<%=resultSet.getString("nid") %>">
<br>

Name:<br>
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br>
ID:<br>
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
Mobile:<br>
<input type="text" name="mobile" value="<%=resultSet.getString("mobile") %>">
<br>
Date:<br>
<input type="date" name="dateOf" value="<%=resultSet.getString("dateOf") %>">
<br>
Out Time:<br>
<input type="time" name="outTime" value="<%=resultSet.getString("outTime") %>">
<br>
In Time:<br>
<input type="time" name="inTime" value="<%=resultSet.getString("inTime") %>">
<br>
Reason:<br>
<input type="text" name="reason" value="<%=resultSet.getString("reason") %>">
<br>
Permission:<br>
<input type="text" name="permission" value="<%=resultSet.getString("permission") %>">
<br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>