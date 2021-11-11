package com.webjava.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/add-todo.do")
public class AddTodoServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private TodoManager todoManager = new TodoManager();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		request.getRequestDispatcher("/WEB-INF/views/new-todo.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String todo = request.getParameter("todo");
		String category = request.getParameter("category");
		todoManager.addTodo(new Todo(todo, category));
		response.sendRedirect("/list-todo.do");
	}
}