package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CartDao;
import com.niit.dao.ProductDao;
import com.niit.model.Cart;
import com.niit.model.Category;
import com.niit.model.Product;

@Controller
public class CartController {
	
/*	@Autowired
	CartDao cartDao;
	
	@Autowired
	ProductDao productDao;
	
	/* @RequestMapping(value="ShowCart")
	    public String showCartPage(Model m,HttpSession session)
	    {
	        String username=(String)session.getAttribute("username");
	        List<Cart> cartitems=cartDao.getCartItems(username);
	        m.addAttribute("cartitems",cartitems);
	        return "redirect:/ProductDesc/{pId}";
	    }*/
	
	 
	/* @RequestMapping("/ProductDesc/{pId}")
		public String showProductDesc(@PathVariable("pId")int pId,Model m)
		{
			
			Product product=productDao.getProductById(pId);
			m.addAttribute("Product",product);
			return "ProductDesc"; 
		}
	
	 
	    @RequestMapping(value="/addToCart/{pId}")
	    public String addToCart(@PathVariable("id")int id,HttpSession session,Model m)
	    {
	    	System.out.println("entered the controller");
	        String username=(String)session.getAttribute("username");
	        Cart cart=new Cart();
	         
	        Product product=productDao.getProductById(id);
	        
	        double Price=product.getPrice();
	         
	        cart.setId(id); 
	        cart.setQuantity(1); 
	        cart.setStatus("NP");
	        cart.setUsername(username);
	        cart.setSubtotal(1*pPrice);
	         
	        cartDao.addtoCart(cart);
	         
	        List<Cart> cartitems=cartDao.getCartItems(username);
	        m.addAttribute("cartitems",cartitems);
	         
	        return "Cart";
	    }
	     
	    @RequestMapping(value="deleteCartItem/{cid}")
	    public String deleteCartItem(@PathVariable("cid") int cid,Model m,HttpSession session)
	    {
	        String username=(String)session.getAttribute("username");
	         
	        cartDao.deleteCartItem(cid);
	         
	        List<Cart> cartitems=cartDao.getCartItems(username);
	        m.addAttribute("cartitems",cartitems);
	        return "Cart";
	    }
	     
	    @RequestMapping(value="updateCartItem/{cid}")
	    public String updateCartItem(@PathVariable("cid")int cid,Model m,HttpSession session)
	    {
	        String username=(String)session.getAttribute("username");
	         
	        Cart cartitem=cartDao.getCartItem(cid);
	         
	        Product product=productDao.getProductById(cartitem.getId());
	        Double Price=product.getPrice();
	         
	        cartitem.setQuantity(1);
	        cartitem.setSubtotal(1*Price);
	        cartDao.updateCart(cartitem);
	         
	        List<Cart> cartitems=cartDao.getCartItems(username);
	        m.addAttribute("cartitems",cartitems);
	         
	        return "Cart";
	         
	    }
	    
	   
*/	     
	}

	
