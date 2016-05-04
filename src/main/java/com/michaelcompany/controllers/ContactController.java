package com.michaelcompany.controllers;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ContactController {
	
	   @RequestMapping(value = "/kontakt", method = RequestMethod.GET)
	   public String kontakt(Principal principal) {
		   if(principal!=null)
		   {	
			   return "kontaktLogged";
		   }
		   return "kontaktDis";
	   }
}
