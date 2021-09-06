package com.cloud.toppo.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cloud.toppo.Buisiness.Service.UserService;

@Controller
@RequestMapping(path = "/Edit")
@SessionAttributes("EditUser")
public class EditController {

	@Autowired
	UserService userService;

	// リクエストが来たときに、各入力値が空の時に
	// 空文字ではなく、nullを設定
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
	}

	//リダイレクト用メソッド
	@RequestMapping(path = "/" , method = RequestMethod.GET , params = "userId")
	public String EditUserInfo(@RequestParam String userId) {
		
		//paramsをもとに今のユーザー情報を取得する
		String userEditId =userId;
		
		return "site/Edit";
	}

}
