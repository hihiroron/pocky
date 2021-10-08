package com.cloud.toppo.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.cloud.toppo.Buisiness.Domain.UserModel;
import com.cloud.toppo.Buisiness.Service.UserService;

@Controller
@RequestMapping(path = "/Entry")
@SessionAttributes("userform")
public class EntryController {

	@Autowired
	UserService userService;
	
	// リクエストが来たときに、各入力値が空の時に
	// 空文字ではなく、nullを設定
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
	}
	
	//インスタンス生成
	@ModelAttribute("userform")
	public UserModel setUpUserModel() {
		return new UserModel();
	}

	// リダイレクト用メソッド
	@RequestMapping(path = "/add", method = RequestMethod.GET)
	public String redirectSearchForm(Model model, SessionStatus sessionStatus) {

		// セッションの中身を削除
		sessionStatus.setComplete();

		// showSearchFormメソッドにリダイレクト
		return "redirect:Entry";
	}

	// "/Entry"にGETリクエストを送信した際に実行されるメソッド
	// ユーザー登録画面を表示する（Entry.jspの呼び出し）
	@RequestMapping(path = "/Entry")
	public String showEntryForm(Model model) {
		
		List<String> frontBackList = new ArrayList<>();
		frontBackList.add("表");
		frontBackList.add("裏");
		model.addAttribute("frontBackList", frontBackList);
		
		return "site/Entry";
	}
	
	//ユーザー登録画面で「登録」が押下された時の処理
	@RequestMapping(path = "/Entry", method = RequestMethod.POST, params = "regist")
	public String verify(@ModelAttribute("userform") @Valid UserModel form, Errors errors, Model model) {
		//エラーあった時の処理とか
		return "site/Entry";
	}
	
	//登録確認画面を表示
	@RequestMapping(path = "EntryCheck", method = RequestMethod.GET)
	public String showEntryCheck(@ModelAttribute("userform") UserModel form, Model model) {
		
		//EntryCheck.jspにリダイレクト
		return "redirect:EntryCheck";
	}
	
	//登録確認画面で「確定」が押下された時の処理
	@RequestMapping(path = "/Entry", method = RequestMethod.POST, params = "ok")
	public String edit() {
		return "redirect:EntryResult";
	}
	
	//登録完了画面の表示
	@RequestMapping(path = "/EntryResult", method = RequestMethod.GET)
	public String showEntryComplete(@ModelAttribute("userform") UserModel form, Model model,SessionStatus sessionStatus) {
		
		//データベースへの登録処理を行う」
		userService.inserttUser(form);
		
		//セッション内の登録用オブジェクトを破棄
		sessionStatus.setComplete();
		
		//EntryResult.jspにフォワード
		return "site/EntryResult";
	}
	
	

}
