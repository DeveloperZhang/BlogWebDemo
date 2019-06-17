package com.controller;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        //获取请求的RUi:去除http:localhost:8080这部分剩下的
        String uri = request.getRequestURI();
        //UTL:除了login.jsp是可以公开访问的，其他的URL都进行拦截控制
        if (uri.indexOf("/index.html") >= 0 || uri.indexOf("/user/findUserByName") >= 0) {
            return true;
        }

        Cookie cookie = null;
        Cookie[] cookies = null;
        // 获取cookies的数据,是一个数组
        cookies = request.getCookies();

        for (Cookie ck :
                cookies) {
            if (ck.getName().equals("uid") && ck.getValue()!=null) {
                return true;
            }
        }
        //获取session
//        HttpSession session = request.getSession();
//        User user = (User) session.getAttribute("USER_SESSION");

        //判断session中是否有用户数据，如果有，则返回true，继续向下执行
//        if (user != null) {
//            return true;
//        }
        //不符合条件的给出提示信息，并转发到登录页面
//        response.setAttribute("msg", "您还没有登录，请先登录！");
        System.out.println("request.getContextPath()" + request.getContextPath());
        response.sendRedirect(request.getContextPath() + "/index.html?type=1");
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}