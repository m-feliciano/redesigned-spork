package com.webjava.todo;

import java.util.Objects;

public class Todo {

	private String name, category;

	public Todo() {
	}

	public Todo(String name, String category) {
		this.name = name;
		this.category = category;
	}

	public Todo(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public int hashCode() {
		return Objects.hash(category, name);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Todo other = (Todo) obj;
		return Objects.equals(category, other.category) && Objects.equals(name, other.name);
	}

	@Override
	public String toString() {
		return "Todo [name=" + name + ", category=" + category + "]";
	}

}
