<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- prefix c = shortcut -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Todo's</title>
</head>
<body>
	<header>
		<div>
			<p>Welcome, ${name} !</p>
		</div>
	</header>
	<article>
		<div>
			<p>Your Todo's:</p>
			<ol>
				<c:forEach items="${todos}" var="todo">
					<li>${todo.name}&bnsp; &bnsp; <a href="delete-todo.do?todo=${todo.name}">Delete</a></li>
				</c:forEach>
			</ol>
			<form action="/todo.do" method="post">
			<input type="text" name="todo" placeholder="Some todo" required="required" /> <input type="submit" value="Add" />
			</form>
		</div>
	</article>
</body>
</html>