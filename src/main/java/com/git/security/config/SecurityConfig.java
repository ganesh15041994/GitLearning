/*
 * package com.git.security.config;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.context.annotation.Bean; import
 * org.springframework.context.annotation.Configuration; import
 * org.springframework.security.authentication.dao.DaoAuthenticationProvider;
 * import
 * org.springframework.security.config.annotation.web.builders.HttpSecurity;
 * import org.springframework.security.config.annotation.web.configuration.
 * EnableWebSecurity; import
 * org.springframework.security.core.userdetails.UserDetailsService; import
 * org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder; import
 * org.springframework.security.web.SecurityFilterChain;
 * 
 * @Configuration
 * 
 * @EnableWebSecurity public class SecurityConfig {
 * 
 * @Autowired CustomSuccessHandler handler;
 * 
 * @Bean BCryptPasswordEncoder passwordEncoder() { return new
 * BCryptPasswordEncoder(); }
 * 
 * @Bean UserDetailsService userDetailService() { return new
 * CustomUserDetailService(); }
 * 
 * @Bean DaoAuthenticationProvider authenticationProvider() {
 * DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
 * provider.setPasswordEncoder(passwordEncoder());
 * provider.setUserDetailsService(userDetailService()); return provider; }
 * 
 * @Bean SecurityFilterChain securityFilterChain(HttpSecurity http) throws
 * Exception {
 * 
 * http. authorizeHttpRequests((auth) -> auth.mvcMatchers("/admin/**")
 * .hasRole("ADMIN") .mvcMatchers("/user/**") .hasRole("USER") .anyRequest()
 * .permitAll())
 * 
 * .formLogin((login) -> login.loginPage("/cmnLogin")
 * .loginProcessingUrl("/userLogin") .successHandler(handler) .permitAll())
 * 
 * .logout(log -> log.logoutSuccessUrl("/userLogout") .permitAll())
 * 
 * .csrf(csrf -> csrf.disable());
 * 
 * return http.build(); }
 * 
 * }
 */

package com.git.security.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

	@Autowired
	CustomSuccessHandler successHandler;

	@Bean
	BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	UserDetailsService userDetailService() {
		return new CustomUserDetailService();
	}

	@Bean
	DaoAuthenticationProvider authenticationProvider() {
		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
		provider.setPasswordEncoder(passwordEncoder());
		provider.setUserDetailsService(userDetailService());
		return provider;
	}

	@Bean
	SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		http.authorizeHttpRequests((auth) -> auth.mvcMatchers("/admin/**").hasRole("ADMIN").mvcMatchers("/user/**")
				.hasRole("USER").anyRequest().permitAll())
				.formLogin((login) -> login.loginPage("/cmnLogin").loginProcessingUrl("/userLogin")
						.successHandler(successHandler).permitAll())
				.logout(logout -> logout.logoutSuccessUrl("/userLogout").permitAll()).csrf(csrf -> csrf.disable());

		return http.build();
	}
}
