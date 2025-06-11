<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.exercice_jakarta3.entity.Cat" %>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="container mt-5">

<h1>Cat List</h1>

<table class="table table-bordered">
  <thead>
  <tr>
    <th>Name</th>
    <th>Breed</th>
    <th>Favorite Meal</th>
    <th>Birth Date</th>
  </tr>
  </thead>
  <tbody>
  <%
    List<Cat> cats = (List<Cat>) request.getAttribute("cats");
    if (cats != null) {
      for (Cat cat : cats) {
  %>
  <tr>
    <td><%= cat.getName() %></td>
    <td><%= cat.getBreed() %></td>
    <td><%= cat.getFavoriteMeal() %></td>
    <td><%= cat.getBirthDate() %></td>
  </tr>
  <%
      }
    }
  %>
  </tbody>
</table>

<a href="<%= request.getContextPath() %>/addCat" class="btn btn-primary">Add New Cat</a>

</body>
</html>
