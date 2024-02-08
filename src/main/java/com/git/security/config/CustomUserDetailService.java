package com.git.security.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.git.security.model.User;
import com.git.security.repo.UserDao;


@Component
public class CustomUserDetailService implements UserDetailsService {

	@Autowired
	UserDao userDao;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User u = userDao.findByEmail(username);

		if (u == null) {
			throw new UsernameNotFoundException("User Not Present .....!");
		} else {
			return new CustomUser(u);
		}

	}

}
