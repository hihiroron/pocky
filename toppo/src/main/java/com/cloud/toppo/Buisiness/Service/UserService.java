package com.cloud.toppo.Buisiness.Service;

import java.time.LocalDate;

import jp.co.sysevo.shopping.Buisiness.Domain.UserModel;

public interface UserService {
	
	//登録処理
	public UserModel insertUser(UserModel userModel);
	
	//検索処理
	public UserModel selectUser(UserModel userModel);
	
	//パスワードの●表示
	public String pass(UserModel userModel);
	
	//ユーザー情報の取得
	public UserModel findUser(UserModel userModel);
	
	//日付が未来日かチェック
	public boolean dateCheck(LocalDate birth);

}
