package com.michaelcompany.controllers;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.michaelcompany.models.User;
import com.michaelcompany.models.UserInterface;

@Controller
public class ProfileController {
	
	@Autowired
	UserInterface UserOperation;
	
	   @RequestMapping(value = "/profile", method = RequestMethod.GET)
	   public String profile(Principal principal) {
		   
		   if(principal!=null){
			  User identification = new User();
			  identification=UserOperation.findByLogin(principal.getName());
			  if(identification.getRola().equals("admin")){
				  return "profileAdmin";
			  } else if(identification.getRola().equals("client")){
				  return "profileLogged";
			  }
		   }
	       return "redirect:/";
	   }
}
