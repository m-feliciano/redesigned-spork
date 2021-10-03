package com.webjava.todo;

import java.util.ArrayList;
import java.util.List;

public class TodoManager {

	static List<Todo> todos = new ArrayList<Todo>();

	public List<Todo> getTodos() {
		return todos;
	}

	public void addTodo(Todo todo) {
		if (todo == null) {} 
		else
			todos.add(todo);
	}

	public void addRemove(Todo todo) {
		if (todo == null) {} 
		else
			todos.remove(todo);
	}

}
