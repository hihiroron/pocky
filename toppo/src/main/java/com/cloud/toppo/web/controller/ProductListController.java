package com.cloud.toppo.web.controller;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
//@RequestMapping(path = "/")
@SessionAttributes("product")
public class ProductListController {

	

	// リクエストが来たときに、各入力値が空の時に
	// 空文字ではなく、nullを設定
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(String.class,
				new StringTrimmerEditor(true));
	}


	// リダイレクト用メソッド
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String redirectSearchForm(Model model,
			SessionStatus sessionStatus) {

		// セッションの中身を削除
		sessionStatus.setComplete();

		// showSearchFormメソッドにリダイレクト
		return "redirect:ProductList";
	}

	// "/ProductList"にGETリクエストを送信した際に実行されるメソッド
	// 商品一覧画面を表示する（ProductList.jspの呼び出し）
	@RequestMapping(path = "/ProductList")
	public String showSearchForm() {

		

		return "site/ProductList";
	}
}