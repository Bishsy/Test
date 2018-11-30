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
    width: 100px;
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
<title>Admin</title>
</head>
<body>
<div class="pad">
	<form action="admin" method="post">
		Enter the title: <input type="text" name="title"><br>
		Enter the link: <input type="text" name="link"><br>
		<button type="submit">Submit</button>
	</form>
</div>
</body>
</html>