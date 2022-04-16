package com.jian.config;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**拦截器
 * @autHor jzj
 * @create 2022 01 01 22:48
 */
public class MyInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session=request.getSession();
        if (request.getRequestURI().contains("login")){
            return true;
        }
        if (request.getRequestURI().contains("/admin/goLogin")){
            return true;
        }
        if (request.getRequestURI().contains("/admin/userGoLogin")){
            return true;
        }
        if (request.getRequestURI().contains("userLogin")){
            return true;
        }

        if (request.getRequestURI().contains("/User/toEnroll")){
            return true;
        }
        if (request.getRequestURI().contains("Enroll")){
            return true;
        }
       //第一次登录没session
        if (session.getAttribute("user")!=null){
            return true;
        }
        request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request,response);
        return HandlerInterceptor.super.preHandle(request, response, handler);
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
    }
}
