/**
 * @(#)LoginController.java 2021/09/09.
 * 
 * Copyright(C) 2021 by PHOENIX TEAM.
 * 
 * Last_Update 2021/09/09.
 * Version 1.00.
 */
package haui.store.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import haui.store.common.Constants;
import haui.store.model.UserLogin;
import haui.store.service.UserService;
import haui.store.service.impl.UserServiceImpl;
import haui.store.validator.user.LoginFormValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Class su ly cac hoat dong dang nhap cua nguoi dung
 * 
 * @author khoa-ph
 * @version 1.00
 */
@Controller
public class LoginController {

	// Trinh bat loi form
	@Autowired
    LoginFormValidator loginFormValidator;

	// Cung cap cac dich vu cho lop user
	@Autowired
    UserService userService;

	/**
	 * Rang buoc form voi trinh bat loi
	 * 
	 * @param binder
	 */
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		Object target = binder.getTarget();
		if (target == null) {
			return;
		}
		if (target.getClass() == UserLogin.class) {
			binder.setValidator(loginFormValidator);
		}
	}

	/**
	 * Hien thi trang login
	 * 
	 * @return trang login.html
	 */
	@GetMapping("/login")
	public String login(Model model) {
		// Rang buoc form ten userLogin voi model UserLogin.java
		UserLogin userLogin = new UserLogin();
		model.addAttribute("userLogin", userLogin);

		// Hien thi trang login.html
		return Constants.USER_DISPLAY_LOGIN;
	}
	
	/**
	 * Xu ly qua trinh login
	 * 
	 * @param model
	 * @param userLogin
	 * @param result
	 * @return Man hinh login neu co loi. Nguoc lai quay lai trang chu
	 */
	@PostMapping("/login")
	public String handlerLoginForm(Model model, @ModelAttribute("userLogin") @Validated UserLogin userLogin,
			BindingResult result) {
		// Neu co loi se quay tro lai trang login
		if (result.hasErrors()) {
			return Constants.USER_DISPLAY_LOGIN;
		}
		//new UserServiceImpl().getUserName()
		model.addAttribute("username", 3);

		// Hien thi trang chu nguoi dung
		//return Constants.USER_DISPLAY_INDEX;
		return Constants.USER_DISPLAY_LOGIN;
	}
	
	/**
	 * Xu ly khi nguoi dung dang nhap thanh cong
	 * 
	 * @param model
	 * @param
	 * @return man hinh trang chu
	 */
	@GetMapping("/login/success")
	public String loginSuccess(HttpServletRequest request, HttpSession session) {
		// Hien thi trang chu nguoi dung
		String[] names = userService.getUserName().split(" ");
		session.setAttribute("username", names[names.length - 1]);
		return "redirect:/index";
		//return Constants.USER_DISPLAY_INDEX;
	}

//	@GetMapping("/getname")
//	public String getName(Model model) {
//
//		return userService.getUserName();
//	}
}
