package com.git.AdminDao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.git.AdminModel.AdminLogin;

@Repository("adminRepository")
public interface AdminRepository extends JpaRepository<AdminLogin, Integer> {

	/* @Query("select dj from DoctorJoin dj where dj.doctor.id=:doctorId ") */
	
	  @Query("select admin from AdminLogin admin where admin.username=:username and admin.password=:password") 
	  AdminLogin checkAdminLogin(String username ,String password);
	  
	 
}
