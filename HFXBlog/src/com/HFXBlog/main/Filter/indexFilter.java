package com.HFXBlog.main.Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;

public class indexFilter implements Filter{

	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		((HttpServletRequest)request).getSession();
		((HttpServletResponse)response).sendRedirect("reader/indexAction.action");
		chain.doFilter(request, response);
	}

	public void init(FilterConfig config) throws ServletException {
		
	}
	
}
