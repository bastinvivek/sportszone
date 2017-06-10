package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Category;
import com.niit.service.CategoryService;

@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
	 @RequestMapping("/categoryform")
	    public String getCategoryForm(Model model){
		model.addAttribute("category",new Category());
		return "categoryform";
	}
	    @RequestMapping("/categorydetails") 
	    public String getUserDetails(@ModelAttribute(value="category") Category category,Model model){
	    	categoryService.saveCategory(category);
	    model.addAttribute("category",category);
 	return "categorydetails";
 }
}
