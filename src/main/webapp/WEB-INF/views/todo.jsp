<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- prefix c = shortcut -->
<!DOCTYPE html>
<html>
<head>
<title>Todos</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../public/css/style.css" type="text/css" rel="stylesheet">
</head>
<body>
	<header>
		<nav class="navbar navbar-default">
			<a href="/" class="navbar-brand">Brand</a>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="/list-todo.do">Todos</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/logout.do">Logout</a></li>
			</ul>
		</nav>
	</header>
	<article>
		<div class="container">
			<H1>Welcome, ${name}</H1>
			<h3>Your todo's list</h3>
			<ol>
				<c:forEach items="${todos}" var="todo">
					<li>${todo.name}&nbsp;&nbsp;<a href="delete-todo.do?todo=${todo.name}">Delete</a></li>
				</c:forEach>
			</ol>
			<p>
				<font color="red">${errorMessage}</font>
			</p>
			<form action="add-todo.do" method="post">
				New Todo: <input type="text" name="todo" placeholder="Some todo"
					required="required" /> <input type="submit" value="Submit Query" />
			</form>
		</div>
	</article>
	<footer class="footer">
		<p>footer content</p>
	</footer>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>