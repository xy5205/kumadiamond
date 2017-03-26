package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.UserDao;
import com.web.model.Login;
import com.web.model.User;
import com.web.service.UserService;
@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	
	
    public Login selectByOrder(Login login) {  
    	return userDao.selectByOrder(login);  
    } 

	/**  
     * ����  id  ɾ�� ����  
     */  
    public boolean delete(int id) {  
        return userDao.delete(id);  
    }  
    /**  
     * ��ѯUser��ȫ������  
     */  
    public List<User> findAll() {  
  
    	List<User> findAllList = userDao.findAll();  
        return findAllList;  
    }  
    /**  
     * ���� id ��ѯ ��Ӧ����  
     */  
    public User findById(int id) {  
        User user = userDao.findById(id);  
        return user;  
    }  
    /**  
     * ��������  
     */  
    public void save(User user) {  
    	userDao.save(user);  
    }  
    /**  
     * ���� id �޸Ķ�Ӧ����  
     */  
    public boolean update(User user) {  
        return userDao.update(user);  
    }  

}
