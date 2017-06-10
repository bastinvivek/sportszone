package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.CategoryService;
import com.niit.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/productform")
	public String getProductForm(Model model) {
		model.addAttribute("product", new Product()); 
		List<Category> categoryDetails = categoryService.getAllCategories();
		model.addAttribute("categorydetails", categoryDetails);
		return "productform";
	}

	@RequestMapping("/products") 
	public String saveProduct(@Valid @ModelAttribute(name = "product") Product product, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("HAS ERRORS");
			return "productform";
		}
		System.out.println("After validation");
		productService.saveProduct(product);

		MultipartFile image = product.getImage();
		if (image != null && !image.isEmpty()) {
			Path path = Paths
					.get("C:/Users/REGISVIVEK/Documents/my project/sportszone/src/main/webapp/resources/images/" + product.getId() + ".png");
			try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "redirect:/productlist";
	}

	@RequestMapping("/productlist")
	public String getAllProducts(Model model) {
		
		List<Product> products = productService.getAllProducts();
		for (Product p : products) {
			System.out.println(p.getName());
			System.out.println(p.getPrice());
		}
		model.addAttribute("products", products);
		return "productlist";
	}

	@RequestMapping("/viewproduct/{id}")
	public ModelAndView viewProduct(@PathVariable int id, Model model) {
		ModelAndView mv = new ModelAndView("viewproduct");
		Product product = productService.getProductById(id);
		mv.addObject("product", product);
		return mv;
	}

	@RequestMapping("/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id) {
		productService.deleteProduct(id);
		return "redirect:/adminproductlist";

	}
	
	@RequestMapping("/editproduct/{id}")
 	public String editProduct(@PathVariable int id, Model model){
	 Product product=productService.getProductById(id);
	 model.addAttribute("product", product);
	 List<Category>categoryDetails=categoryService.getAllCategories();
	 model.addAttribute("categorydetails", categoryDetails);
	 return "updateproduct";
 }
 
	  @RequestMapping("/editproduct/updateproduct")
	 	public String updateProduct(@ModelAttribute(name = "product") Product product){
		  productService.updateProduct(product);
		  MultipartFile image = product.getImage();
			if (image != null && !image.isEmpty()) {
				Path path = Paths
						.get("C:/Users/REGISVIVEK/Documents/my project/sportszone/src/main/webapp/resources/image/" + product.getId() + ".png");
				try {
					image.transferTo(new File(path.toString()));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		  return "redirect:/productlist";
		}
	  
	  @RequestMapping("/productByCategory")
	  public String getProductByCategory(@RequestParam(name="searchCondition")String searchcondition,Model model){
		  List<Product>products=productService.getAllProducts();
		  model.addAttribute("products", products);
		  model.addAttribute("searchCondition", searchcondition);
		  return "productlist";
		  
	  }
	  
	  @GetMapping("/productList")
	  public @ResponseBody List<Product> getProductList(){
		  List<Product> products = productService.getAllProducts();
			for (Product p : products) {
				System.out.println(p.getName());
				System.out.println(p.getPrice());
				System.out.println(p.getCategory());
			}
		  return products;
	  }
	  @RequestMapping("/adminproductlist")
		public String getAllAdminProducts(Model model) {
			
			List<Product> products = productService.getAllProducts();
			for (Product p : products) {
				System.out.println(p.getName());
				System.out.println(p.getPrice());
			}
			model.addAttribute("products", products);
			return "adminproductlist";
		}

}