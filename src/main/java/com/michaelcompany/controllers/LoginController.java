package com.michaelcompany.controllers;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.michaelcompany.models.User;
import com.michaelcompany.models.UserInterface;

@Controller
public class LoginController {

	@Autowired
	UserInterface UserOperation;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String Login() {

		return "login";
	}

	@RequestMapping(value = "/loginSuccessful", method = RequestMethod.GET)
	public String loginSuccessful(Principal principal) {
		if (principal != null) {
			User identification = new User();
			identification = UserOperation.findByLogin(principal.getName());
			if (identification.getRola().equals("admin")) {

				return "loginSuccessfulAdmin";
			} else {
				return "loginSuccessful";
			}
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/loginError", method = RequestMethod.GET)
	public String loginError() {
		return "loginError";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/";
	}
}