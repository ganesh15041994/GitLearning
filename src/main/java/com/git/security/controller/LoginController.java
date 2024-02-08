package com.git.security.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.git.helper.Msg;
import com.git.security.model.User;
import com.git.security.repo.UserDao;
import com.git.security.service.UserConfigService;

@Controller
public class LoginController {

	@Autowired
	UserConfigService userConfigService;

	@Autowired
	UserDao userDao;

	@GetMapping("/cmnLogin")
	public String loginPage() {
		return "cmnLogin";
	}

	@GetMapping("/cmnRegister")
	public String cmnRegister() {
		return "cmnRegister";
	}

	@PostMapping("/saveUser")
	public String saveUser(User user, Model model) {

		if (userConfigService.saveUser(user) != null) {
			Msg msg = new Msg("Registration Successs", "text-success");
			model.addAttribute("msg", msg);
			System.out.println("user Data " + user);
			return "cmnRegister";

		} else {
			Msg msg = new Msg("Registration Failed..", "text-danger");
			model.addAttribute("msg", msg);
			System.out.println("user Data " + user);

			return "cmnRegister";
		}

	}

	@GetMapping("/admin/profile")
	public String getAdminProfile() {
		return "admin_profile";
	}

	@ModelAttribute
	public void commanUser(Principal p, Model model) {

		if (p != null) {
			String email = p.getName();
			User user = userDao.findByEmail(email);
			model.addAttribute("user", user);
		}

	}

	@GetMapping("/admin/dashboard")
	public String dashboard(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			Model model) {
		/*
		 * String USERNAME = request.getParameter("username"); String PASSWORD =
		 * request.getParameter("password"); model.addAttribute("user", USERNAME);
		 * model.addAttribute("pass", PASSWORD); AdminLogin adminLogin =
		 * adminService.checkAdminLogin(USERNAME, PASSWORD);
		 * System.out.println(adminLogin); if (adminLogin != null) {
		 * model.addAttribute("admin", adminLogin); return "dashboard"; } else { return
		 * "AdminLogin"; }
		 */
		return "dashboard";

	}

	@GetMapping("/user/profile")
	public String getUserProfile() {
		return "user_profile";
	}

	@GetMapping("/userLogout")
	public String logout(Model model) {
		Msg msg = new Msg("Logout....!", "text-success");
		model.addAttribute("msg", msg);
		return "cmnLogin";
	}

	@GetMapping("/user/dashboard")
	public String user_dashboard(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			Model model) {
		/*
		 * String USERNAME = request.getParameter("username"); String PASSWORD =
		 * request.getParameter("password"); model.addAttribute("user", USERNAME);
		 * model.addAttribute("pass", PASSWORD); AdminLogin adminLogin =
		 * adminService.checkAdminLogin(USERNAME, PASSWORD);
		 * System.out.println(adminLogin); if (adminLogin != null) {
		 * model.addAttribute("admin", adminLogin); return "dashboard"; } else { return
		 * "AdminLogin"; }
		 */
		return "userDashboard";

	}

}
