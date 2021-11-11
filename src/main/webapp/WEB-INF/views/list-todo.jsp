<%@ include file="../common/header.jspf"%>
<%@ include file="../common/nav.jspf"%>
<article>
	<div class="container">
		<H1>Welcome, ${name}</H1>
		<h3>Your Todo's list</h3>

		<table class="table table-striped table-hover">
			 <thead class="table-dark">
				<th>Description</th>
				<th>Category</th>
				<th>Actions</th>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.name}</td>
						<td>${todo.category}</td>
						<td><a class="btn btn-danger"
							href="delete-todo.do?todo=${todo.name}&category=${todo.category}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<p>
			<font color="red">${errorMessage}</font> <a class="btn btn-success"
				href="add-todo.do">Add a new Todo</a>
		</p>

	</div>
</article>
<%@ include file="../common/footer.jspf"%>