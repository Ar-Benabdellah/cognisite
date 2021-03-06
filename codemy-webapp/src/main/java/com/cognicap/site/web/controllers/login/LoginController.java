package com.cognicap.site.web.controllers.login;

import static org.springframework.security.web.WebAttributes.AUTHENTICATION_EXCEPTION;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * The login controller checks if any login error is present in the Spring
 * Security context.
 * <p>
 * When an error is present, the LoginController rejects the value using the
 * BindingResult facility. This way, the error message is available from the
 * view as any other error message. Bear in mind that this controller is invoked
 * only to display the login page and in case of authentication failure.
 * <p>
 * The login phase itself is done by SpringSecurity.
 * <p>
 * Note: This controller name is forced only to minimize the risks of name
 * collisions. It is not used since controllers sit on top of everything else.
 */
@Controller("loginController")
@RequestMapping("/login")
public class LoginController {
	@RequestMapping({ "/index", "/*"})
	public String index(@ModelAttribute LoginForm loginForm,
			BindingResult result, HttpServletRequest request) {
		AuthenticationException ae = (AuthenticationException) request
				.getSession().getAttribute(AUTHENTICATION_EXCEPTION);
		if (ae != null) {
			result.reject("login.unsuccessful");
		}
		return "/login/index";
	}
}