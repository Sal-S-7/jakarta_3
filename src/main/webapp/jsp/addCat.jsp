<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="container mt-5">

<h1>Add a New Cat</h1>

<form action="<%= request.getContextPath() %>/addCat" method="post" class="row g-3">

  <div class="col-md-6">
    <label for="name" class="form-label">Name</label>
    <input type="text" id="name" name="name" required class="form-control" />
  </div>

  <div class="col-md-6">
    <label for="breed" class="form-label">Breed</label>
    <input type="text" id="breed" name="breed" required class="form-control" />
  </div>

  <div class="col-md-6">
    <label for="favoriteMeal" class="form-label">Favorite Meal</label>
    <input type="text" id="favoriteMeal" name="favoriteMeal" required class="form-control" />
  </div>

  <div class="col-md-6">
    <label for="birthDate" class="form-label">Birth Date</label>
    <input type="date" id="birthDate" name="birthDate" required class="form-control" />
  </div>

  <div class="col-12">
    <button type="submit" class="btn btn-success">Save</button>
    <a href="<%= request.getContextPath() %>/cats" class="btn btn-secondary">Cancel</a>
  </div>

</form>

</body>
</html>
