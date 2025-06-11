<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome - Cat App</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>
<h1>Welcome to Cat App</h1>
<p>
    <a href="<%= request.getContextPath() %>/cats">View Cat List</a>
</p>
<p>
    <a href="<%= request.getContextPath() %>/addCat">Add a New Cat</a>
</p>
</body>
</html>
