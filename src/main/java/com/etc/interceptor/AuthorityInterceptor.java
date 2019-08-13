package com.etc.interceptor;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthorityInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        String pageFrom = request.getRequestURI();
        if (!pageFrom.contains("/login")){
            pageFrom = pageFrom.substring(7);
            session.setAttribute("pageFrom",pageFrom);
        }

        if (session.getAttribute("userId") == null){
            response.sendRedirect("/cinema/user/login");
            return false;
        }
        return true;
    }
}
