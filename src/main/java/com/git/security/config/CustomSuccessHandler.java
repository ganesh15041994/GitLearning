/*
 * package com.git.security.config;
 * 
 * import java.io.IOException; import java.util.Set;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import org.springframework.security.core.Authentication; import
 * org.springframework.security.core.authority.AuthorityUtils; import
 * org.springframework.security.web.authentication.AuthenticationSuccessHandler;
 * import org.springframework.stereotype.Component;
 * 
 * 
 * @Component public class CustomSuccessHandler implements
 * AuthenticationSuccessHandler {
 * 
 * @Override public void onAuthenticationSuccess(HttpServletRequest request,
 * HttpServletResponse response, Authentication authentication) throws
 * IOException, ServletException { Set<String> role =
 * AuthorityUtils.authorityListToSet(authentication.getAuthorities());
 * 
 * if (role.contains("ROLE_ADMIN")) { response.sendRedirect("/admin/dashboard");
 * } else { response.sendRedirect("/user/dashboard"); }
 * 
 * }
 * 
 * }
 */

package com.git.security.config;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@Component
public class CustomSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();

		if (authorities.stream().anyMatch(a -> a.getAuthority().equals("ROLE_ADMIN"))) {
			// Redirect admin to admin dashboard
			setDefaultTargetUrl("/admin/dashboard");
		} else if (authorities.stream().anyMatch(a -> a.getAuthority().equals("ROLE_USER"))) {
			// Redirect user to user dashboard
			setDefaultTargetUrl("/user/dashboard");
		} else {
			// Handle other roles if needed
			setDefaultTargetUrl("/");
		}

		super.onAuthenticationSuccess(request, response, authentication);
	}
}
