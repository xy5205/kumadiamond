package com.web.dao;

import java.util.List;

import com.web.model.Login;
import com.web.model.User;

public interface UserDao {
	Login selectByOrder(Login login);
	void save(Login login);
	void save(User user);    
    boolean update(User user);    
    boolean delete(int id);    
    User findById(int id);   
	List<User> findAll();
}
