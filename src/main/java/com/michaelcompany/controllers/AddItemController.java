package com.michaelcompany.controllers;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.michaelcompany.models.Item;
import com.michaelcompany.models.ItemInterface;
import com.michaelcompany.models.User;
import com.michaelcompany.models.UserInterface;

@Controller
public class AddItemController {

	@Autowired
	ItemInterface ItemOperation;

	@Autowired
	UserInterface UserOperation;

	@RequestMapping(value = "/additem")
	public String AddItem(Principal principal, HttpServletRequest request,
			@ModelAttribute("addItem") @Valid Item addItem, BindingResult result) {
		
		if (principal != null) {
			User identification = new User();
			identification = UserOperation.findByLogin(principal.getName());
			if (identification.getRola().equals("admin")) {
				if (request.getMethod().equalsIgnoreCase("post") && !result.hasErrors()) {
					Item verification;
					verification = ItemOperation.findByNazwa(addItem.getNazwa());
					if (verification == null) {
						ItemOperation.save(addItem);
						return "operationSuccessful";
					} else {
						return "operationError";
					}
				} else {
					return "addItem";
				}
			} else {
				return "redirect:/";
			}
		}
		return "redirect:/";
	}
}
