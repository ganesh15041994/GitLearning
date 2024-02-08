package com.git.userService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.git.AdminModel.Course;
import com.git.security.model.User;
import com.git.userDao.CartRepo;
import com.git.userModel.Cart;

@Service("cartService")
public class CartService {
	
	@Autowired
	CartRepo cartRepo;
	public String addToCart(User user , Course course )
	{
		
		
		Cart cart = new Cart();
		cart.setUser(user);
		cart.setCourse(course);
		
		Cart c  = cartRepo.save(cart);
		return c==null ?  "Went Wrong ":  "Added Into Cart ";
		//return "";
		
	}

}
