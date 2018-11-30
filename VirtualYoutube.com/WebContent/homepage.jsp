<%@ page import="java.sql.*" %>
<%Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
input[type=text] {
	padding: 10px 10px;
	border-radius: 12px;
	border: 1px solid black;
    width: 80px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 80%;
}

.pad {
	padding: 20px 50px;
}

</style>

<meta charset="ISO-8859-1">
<title>Virtual Youtube</title>
</head>
<body>

<%
	if(session.getAttribute("username")==null){
		response.sendRedirect("Login.jsp");
	}
%>
<%
	Connection mycon=DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube","root","Bishal@96");
	Statement mystmt=mycon.createStatement();
	Statement mystmt2=mycon.createStatement();
	
	ResultSet rs = mystmt.executeQuery("select * from videos;");
	ResultSet rs1 = mystmt2.executeQuery("select * from videos;");
%>

<div class="pad">
<form action="Logout" method="post">
<button type="submit" name="logout" style="float: right;">Log Out</button>
</form>
<img style="padding: 0px 20px;" src="download.png" alt="Youtube" height="30" width="135"> &nbsp &nbsp
<form action="Search" method="post">
<select name="search">
	<%while(rs1.next()){ %>
  <option value="<%=rs1.getString("link") %>"><%=rs1.getString("title") %></option>
  <%} %>
</select>

<input type="submit" value="search"><br>
</form>


<%while(rs.next()){	%>
<iframe  height="200" src="<%=rs.getString("link") %>" frameborder="10" border-radius="5" allow="autoplay; encrypted-media" allowfullscreen></iframe> &nbsp &nbsp
<%} %>

</div>

</body>
</html>