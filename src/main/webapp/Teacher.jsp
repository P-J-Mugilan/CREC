


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

<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>Name of the Student</td>
<td>Email ID</td>
<td>Mobile</td>
<td>Reason for Gate Pass</td>
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
<td class="bg" id="ch" name="name"><%=resultSet.getString("name") %></td>
<td class="bg" id="ch" name="email"><%=resultSet.getString("email") %></td>
<td class="bg" id="ch" name="mobile"><%=resultSet.getString("mobile") %></td>
<td class="bg" id="ch" name="permission"><%=resultSet.getString("reason") %></td>
<td ><select type="button"  class="delete" onclick="myFunction()" name="select">
	<option>Grant the Permission</option>
	<option>NOT Allowed to OUT</option>
</select></td>

</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<form action="Security.jsp" id="form-id">
<label for="name">Student Name :</label>
<input type="text" name="name" id="name">
<label for="ID">Student ID :</label>
<input type="text" name="sid" id="ID">
<label for="mobile">Mobile No :</label>
<input type="text" name="mobile" id="mobile">
<label for="date">Date of Permission :</label>
<input type="date" name="mobile" id="date">
<button type="submit" id="grant">GRANT</button>
</form>

<script>
	function changeColor(){
		document.getElementById("ch").style.backgroundColor="green";
	}
</script>

<style>
	#form-id{
		width:200px;
		height:auto;
		line-height:30px;
		margin-left:50%;
	}
	label{
		font-weight: bold;
	}
	#date{
		width:175px;
	}
</style>
</body>
</html>



