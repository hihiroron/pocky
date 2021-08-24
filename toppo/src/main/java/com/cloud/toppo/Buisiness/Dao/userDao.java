package com.cloud.toppo.Buisiness.Dao;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

import com.cloud.toppo.Buisiness.Domain.UserModel;

@Repository
public interface userDao {

	//ユーザー登録処理
	@Insert("INSERT INTO USER (USER_ID,FRONTBACK_ID,USER_NAME,PASSWORD,MAIL,INTRODUCE,IMAGE) VALUES (#{userId},#{frontBackId},#{userName},#{password},#{mail},#{introduce},#{image});")
	public int insertUser(UserModel UserModel);
	
}
