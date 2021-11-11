<%@ include file="../common/header.jspf"%>
<%@ include file="../common/nav.jspf"%>
<article>
	<!-- <div class="container login-page" ">
		<form action="login.do" method="post">
			Enter your name: <input type="email" name="name" placeholder="email"
				required="required" /><br> Enter your password: <input type="password"
				name="password" placeholder="password" required="required" />
			<p>
				<font color="red">${errorMessage}</font>
			</p>
			<input type="submit" value="Login" />
		</form>
	</div> -->
	<form action="login.do" method="post">
		<div class="imgcontainer">
			<img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avatar" class="avatar">
		</div>

		<div class="clogin">
			<label for="name"><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="name" required> <label
				for="password"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="password" required>

			<button type="submit">Login</button>
			<label> <input type="checkbox" checked="checked"
				name="remember"> Remember me
			</label>
		</div>

		<div class="clogin" style="background-color: #f1f1f1">
			<button type="button" class="cancelbtn">Cancel</button>
			<span class="psw">Forgot <a href="#">password?</a></span>
		</div>
	</form>
</article>
<%@ include file="../common/footer.jspf"%>