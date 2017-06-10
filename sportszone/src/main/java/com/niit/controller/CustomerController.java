package com.niit.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Customer;
import com.niit.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	@RequestMapping("/registrationform")
	public String getRegistrationForm(Model model){
		model.addAttribute("customer", new Customer());
		return "register";
		
	}
	
	@RequestMapping("/register")
	public String registerCustomer(@Valid @ModelAttribute(name="customer") Customer customer,BindingResult result,Model model)
	{
		if(result.hasErrors())
			return"register";
		List<Customer>customers=customerService.getCustomers();
		String username=customer.getUsers().getUsername();
		String email=customer.getEmail();
		for(Customer c:customers){
			if(c.getUsers().getUsername().equals(username))
				
			{
				model.addAttribute("duplicateUsername", "Username already exists");
				return "register";
				
			}
		}
		
		for(Customer c:customers){
			if(c.getEmail().equals(email))
			{
			model.addAttribute("duplicateEmail", "Email Id already exists");
			return"register";
			
			}
		}
		customerService.saveCustomer(customer);
		model.addAttribute("registrationSuccess", "Registered Successfully... please login..");
		
		return "login";
	}	
}