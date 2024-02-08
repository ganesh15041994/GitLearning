package com.git.AdminService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.git.AdminDao.AdminRepository;
import com.git.AdminModel.AdminLogin;

@Service("adminService")
public class AdminService  {
	
	@Autowired
	AdminRepository adminRepository;
	
	public AdminLogin checkAdminLogin(String username,String password)
	{
		System.out.println("hello in Service");
		//return null;
		return  adminRepository.checkAdminLogin(username,password);
	}

}
