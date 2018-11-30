<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search result</title>
</head>
<body>
<%String link=session.getAttribute("link").toString(); %>

<iframe width="1080" height="630" src="<%=link %>" frameborder="10" border-radius="5" allow="autoplay; encrypted-media" allowfullscreen></iframe> &nbsp &nbsp


</body>
</html>