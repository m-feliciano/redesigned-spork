package com.webjava.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/list-todo.do")
public class ListTodoServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private TodoManager todoManager = new TodoManager();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setAttribute("todos", todoManager.getTodos());
		request.getRequestDispatcher("/WEB-INF/views/list-todo.jsp").forward(request, response);
	}
	
	
}