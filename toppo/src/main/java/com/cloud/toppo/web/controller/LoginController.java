package com.cloud.toppo.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@SessionAttributes("product")
public class LoginController {

	private final Logger logger = LoggerFactory.getLogger(getClass());

	/**
	 * 初期表示
	 * @return ログイン画面
	 */
	@RequestMapping(path = "/Login")
	public String loginView() {

		logger.info("ログイン画面にアクセス");

		return "site/Login";
	}

	@RequestMapping(path = "/Logout")
	public String logoutView(SessionStatus sessionStatus) {
		// セッションの中身を削除
		sessionStatus.setComplete();

		return "site/Login";
	}

	/**
	   * ログイン成功
	   * @return TOPへリダイレクト
	   */
	@RequestMapping(path = "/loginSuccess")
	public String login() {

		return "site/Home";
	}
	
	@RequestMapping(path = "/Home")
	public String view() {

		//top.jspにフォワード
		return "site/Home";
	}


	/**
	 * 権限なし
	 * @return 403画面
	 */
	@RequestMapping(path = "/403")
	public String permission() {
		return "error/Error1";
	}

}
