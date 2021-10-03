<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<article>
		<form action="login.do" method="post">
			Enter your name:<input type="text" name="name" /> Enter your
			password:<input type="password" name="password" />
			<p>
				<font color="red">${errorMessage}</font>
			</p>
			<input type="submit" value="Login" />
		</form>
	</article>
</body>
</html>