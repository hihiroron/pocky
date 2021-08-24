package com.cloud.toppo.Buisiness.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cloud.toppo.Buisiness.Dao.userDao;
import com.cloud.toppo.Buisiness.Domain.UserModel;




@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	userDao userDao;
	
	//ユーザー登録処理
	@Override
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED, timeout = 10, readOnly = false, rollbackFor = Exception.class)
	public UserModel inserttUser(UserModel userModel) {
		userDao.insertUser(userModel);
		return userModel;
	}

}
