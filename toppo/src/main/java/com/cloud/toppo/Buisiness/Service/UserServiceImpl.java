package com.cloud.toppo.Buisiness.Service;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import jp.co.sysevo.shopping.Buisiness.Dao.UserDao;
import jp.co.sysevo.shopping.Buisiness.Domain.UserModel;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;

	//ユーザー登録処理
	@Override
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED, timeout = 10, readOnly = false, rollbackFor = Exception.class)
	public UserModel insertUser(UserModel userModel) {
		userDao.insertUser(userModel);
		return userModel;
	}

	//ユーザー検索処理
	@Override
	public UserModel selectUser(UserModel userModel) {
		UserModel user = userDao.selectUser(userModel);
		return user;
	}

	//パスワードの●表示
	@Override
	public String pass(UserModel userModel) {
		String pass = "";

		int num = userModel.getPassword().length();

		for (int i = 0; i < num; i++) {
			pass += "●";
		}

		return pass;
	}

	//日付が未来日かチェック
	@Override
	public boolean dateCheck(LocalDate birth) {

		boolean check = true;
		LocalDate now = LocalDate.now();
		if (birth.isBefore(now)) {
			check = false;
		}
		return check;
	}

	//ユーザー情報の取得
	@Override
	public UserModel findUser(UserModel userModel) {
		UserModel user = userDao.findUser(userModel);
		return user;
	}

}
