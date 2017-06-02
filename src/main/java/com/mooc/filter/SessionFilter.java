
package com.mooc.filter;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.filter.OncePerRequestFilter;

public class SessionFilter extends OncePerRequestFilter {
	
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		String[] notFilters = { "course.html","course_detail.html","search.html","index.html","login.do","active.do","register.do","register.html","/js","/css","/html","images","video","/code/","verify.html","verifyx.html"};
		String uri = request.getRequestURI();

		boolean doFilter = true;
		for (String s : notFilters) {
			if (uri.indexOf(s) == -1)
				continue;
			doFilter = false;
			break;
		}

		if (doFilter) {
			Object obj = request.getSession().getAttribute("user_name");
			if (obj == null) {
				request.setCharacterEncoding("UTF-8");
				response.setCharacterEncoding("UTF-8");
				response.sendRedirect(request.getContextPath() + "/index.html");
			} else {
				filterChain.doFilter(request, response);
			}
		} else {
			filterChain.doFilter(request, response);
		}
	}
}