<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato;">
        <div>
            <a href="<%= request.getContextPath() %>/list" class="navbar-brand">User Management App</a>
        </div>
    </nav>
</header>

<br>

<div class="container col-md-6">
    <div class="card">
        <div class="card-body">

            <!-- If user exists => Edit form -->
            <c:if test="${user != null}">
                <form action="update" method="post">
            </c:if>

            <!-- If new user => Insert form -->
            <c:if test="${user == null}">
                <form action="insert" method="post">
            </c:if>

            <h2 class="text-center">
                <c:if test="${user != null}">Edit User</c:if>
                <c:if test="${user == null}">Add New User</c:if>
            </h2>
            <hr>

            <c:if test="${user != null}">
                <input type="hidden" name="id" value="<c:out value='${user.id}'/>" />
            </c:if>

            <fieldset class="form-group">
                <label>User Name</label>
                <input type="text" class="form-control" name="name"
                       value="<c:out value='${user.name}'/>" required="required">
            </fieldset>

            <fieldset class="form-group">
                <label>User Email</label>
                <input type="text" class="form-control" name="email"
                       value="<c:out value='${user.email}'/>" required="required">
            </fieldset>

            <fieldset class="form-group">
                <label>User Country</label>
                <input type="text" class="form-control" name="country"
                       value="<c:out value='${user.country}'/>" required="required">
            </fieldset>

            <button type="submit" class="btn btn-success">Save</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
