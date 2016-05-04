package com.michaelcompany.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.michaelcompany.models.User;
import com.michaelcompany.models.UserInterface;

@Controller
public class RegistrationController {
	
	@Autowired
	UserInterface UserOperation;
	
	@RequestMapping(value = "/registration")
	public String Registration(HttpServletRequest request, @ModelAttribute("registration") @Valid User registration, BindingResult result) {
		if (request.getMethod().equalsIgnoreCase("post") && !result.hasErrors()) {
			
			User verification;
			verification=UserOperation.findByLogin(registration.getLogin());
			
			if(verification==null){
				registration.setRola("client");
				registration.setStan(true);
				UserOperation.save(registration);
				return "registrationComplete";
			} else {
				return "userExist";
			}
		}
		return "registration";
	}
}