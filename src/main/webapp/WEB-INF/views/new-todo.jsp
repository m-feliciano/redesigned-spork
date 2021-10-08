<%@ include file="../common/header.jspf"%>
<%@ include file="../common/nav.jspf"%>
<article>
	<div class="container">
		<h3>Your new Todo</h3>
		<p>
			<font color="red">${errorMessage}</font>
		</p>
		<form action="add-todo.do" method="post">
			<fieldset class="form-group">
				<label>Description</label> <input class="form-control" type="text"
					name="todo" placeholder="Some todo" required="required" />
			</fieldset>
			<fieldset class="form-group">
				<label>Category</label> <input class="form-control" type="text"
					name="category" placeholder="Some category" required="required" />
			</fieldset>
			<input class="btn btn-success" type="submit" value="Submit" />
		</form>
	</div>
</article>
<%@ include file="../common/footer.jspf"%>