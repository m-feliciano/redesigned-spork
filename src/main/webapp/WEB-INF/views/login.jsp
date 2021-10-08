<%@ include file="../common/header.jspf"%>
<%@ include file="../common/nav.jspf"%>
<article>
	<div class="container">
		<form action="login.do" method="post">
			Enter your name:<input type="email" name="name" placeholder="email"
				required="required" /> Enter your password:<input type="password"
				name="password" placeholder="password" required="required" />
			<p>
				<font color="red">${errorMessage}</font>
			</p>
			<input type="submit" value="Login" />
		</form>
	</div>
</article>
<%@ include file="../common/footer.jspf"%>