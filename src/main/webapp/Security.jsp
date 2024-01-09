


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>
<header>
	
</header>

<h1>Student Pass</h1>
<table border="1">
<tr>
<td>Name of the Student</td>
<td>ID</td>
<td>Mobile</td>
<td>DATE</td>
<td>OUT TIME</td>
<td>IN TIME</td>
<td>Permission</td>


</tr>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup?useSSL=false","root","Passwd@123");
statement=connection.createStatement();
String sql ="select * from applicationusers";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>

<td class="bg" id="ch" name="name"><%=resultSet.getString("name") %></td>
<td class="bg" id="ch" name="id"><%=resultSet.getString("id") %></td>
<td class="bg" id="ch" name="mobile"><%=resultSet.getString("mobile") %></td>
<td class="bg" id="ch" name="dateOf"><%=resultSet.getString("dateOf") %></td>
<td class="bg" id="ch" name="outTime"><%=resultSet.getString("outTime") %></td>
<td class="bg" id="ch" name="inTime"><%=resultSet.getString("inTime") %></td>
<td class="bg" id="ch" name="permission"><%=resultSet.getString("permission") %></td>


</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>


<!-- Update code  -->




</body>
</html>



