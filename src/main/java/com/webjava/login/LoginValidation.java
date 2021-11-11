package com.webjava.login;

public class LoginValidation {

	public boolean isUserValid(String user, String password) {
		if (password.equals("password") && user.equals("user@user"))
			return true;
		return false;
	}

}