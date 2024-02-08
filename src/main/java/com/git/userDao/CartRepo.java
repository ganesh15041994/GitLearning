package com.git.userDao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.git.userModel.Cart;

public interface CartRepo extends JpaRepository<Cart, Integer> {

}
