package com.vamshi.dao;

import com.vamshi.model.UserDetail;

public interface UserDAO 
{
	public boolean registerUser(UserDetail user);
	public boolean updateAddress(UserDetail user);
	public UserDetail getUser(String username);

}
