


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
	<nav id="nav-list">
		<ul>
			<li><a href="#" id="professor">Professor</a></li>
			<li><a href="login.jsp">Home</a></li>
			<li><a href="Teacher.jsp">Student List</a></li>
			<li><a href="Security.jsp">Security</a></li>
		</ul>
	</nav>
</header>

<style>
	nav ul li a{
	text-decoration : none;
	padding-left: 10px;
	font-size: 30px;
	}
	#professor{
		margin: 0;
	}
	nav ul li{
		display : inline-block;
		margin-left:20px;
		
	}
	nav{
		background: #98f789;
		height: 60px;
		padding-top:2px;
	}
	nav ul li a:hover{
		color: blue;
	}
	table{
		text-align:center;
		font-size:18px;
	}
	
</style>
<center>

<h1>Student Request List</h1>
<table border="1">
<tr>
<td>Number</td>
<td>Name of the Student</td>
<td>ID</td>
<td>Mobile</td>
<td>DATE</td>
<td>OUT TIME</td>
<td>IN TIME</td>
<td>REASON</td>
<td>Permission</td>
<td>Action</td>

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
<td class="bg" id="ch" name="nid"><%=resultSet.getString("nid") %></td>
<td class="bg" id="ch" name="name"><%=resultSet.getString("name") %></td>
<td class="bg" id="ch" name="id"><%=resultSet.getString("id") %></td>
<td class="bg" id="ch" name="mobile"><%=resultSet.getString("mobile") %></td>
<td class="bg" id="ch" name="dateOf"><%=resultSet.getString("dateOf") %></td>
<td class="bg" id="ch" name="outTime"><%=resultSet.getString("outTime") %></td>
<td class="bg" id="ch" name="inTime"><%=resultSet.getString("inTime") %></td>
<td class="bg" id="ch" name="reason"><%=resultSet.getString("reason") %></td>
<td class="bg" id="ch" name="permission"><%=resultSet.getString("permission") %></td>
<td ><a href="update.jsp?nid=<%=resultSet.getString("nid") %>">Update</a></td>

</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</center>

<!-- Update code  -->




</body>
</html>



