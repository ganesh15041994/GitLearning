package com.git.AdminModel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class AdminLogin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int adminId;
	@Column(nullable = false, name = "name")
	private String name;

	@Override
	public String toString() {
		return "AdminLogin [adminId=" + adminId + ", name=" + name + ", username=" + username + ", password=" + password
				+ ", contact=" + contact + ", email=" + email + "]";
	}

	public AdminLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AdminLogin(int adminId, String name, String username, String password, String contact, String email) {
		super();
		this.adminId = adminId;
		this.name = name;
		this.username = username;
		this.password = password;
		this.contact = contact;
		this.email = email;
	}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(nullable = false)
	
	private String username;
	@Column(nullable = false)
	private String password;
	@Column(nullable = false)
	private String contact;
	@Column(nullable = false)
	private String email;

}
