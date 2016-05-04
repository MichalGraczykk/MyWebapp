package com.michaelcompany.controllers;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.michaelcompany.models.User;
import com.michaelcompany.models.UserInterface;
 
@Controller
public class IndexController {
    
	@Autowired
	UserInterface UserOperation;
	
	//@Secured(value="ROLE_ANONYMOUS")
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String index(ModelMap map, Principal principal) {
	   
	   if(principal!=null){
		  User identification = new User();
		  identification=UserOperation.findByLogin(principal.getName());
		  if(identification.getRola().equals("admin")){
			  map.put("msg", "administrator");
		  } else if(identification.getRola().equals("client")){
			  map.put("msg", "klient");
		  }
	   } else {
		   map.put("msg", "jestes niezalogowany");
	   }
       
       /*
       User y=new User();
       y=UserOperation.findByUserId(1);
       y.setUserId(4);
       UserOperation.save(y);
       */
       return "index";
   }
}