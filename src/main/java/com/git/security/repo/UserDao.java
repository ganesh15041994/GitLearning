package com.git.security.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.git.security.model.User;

public interface UserDao extends JpaRepository<User, Integer> {

	public User findByEmail(String email);

}
