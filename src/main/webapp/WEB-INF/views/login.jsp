<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- prefix c = shortcut -->
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
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
				<li><a href="list-todo.do">Todos</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/login.do">Logout</a></li>
			</ul>
		</nav>
	</header>
	<article>
		<div class="container">
			<form action="login.do" method="post">
				Enter your name:<input type="email" name="name" placeholder="email"
					required="required" /> Enter your
				password:<input type="password" name="password" placeholder="password"
					required="required" />
				<p>
					<font color="red">${errorMessage}</font>
				</p>
				<input type="submit" value="Login" />
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