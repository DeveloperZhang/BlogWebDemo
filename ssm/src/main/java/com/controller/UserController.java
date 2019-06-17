package com.controller;

import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value="findUserByName")
    public String findUserByName(Model model, User user, HttpSession session, HttpServletResponse response) {
        User user1 = userService.queryByUserName(user);
        if (user1 == null || user1.getUid() == 0)
            return "fail";
        model.addAttribute("user", user1);
        //将用户对象添加到Session中
        session.setAttribute("USER_SESSION",user1);

        // 新建Cookie
        Cookie username_cookie = new Cookie("username", user1.getUsername());
        Cookie uid_cookie = new Cookie("uid", user1.getUid().toString());
        uid_cookie.setMaxAge(60*60);
        uid_cookie.setPath("/ssm");
        // 输出到客户端
        response.addCookie(uid_cookie);

        return "result";
    }

    @RequestMapping(value="info")
    public String userInfo(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
        Cookie[] cookies = null;
        // 获取cookies的数据,是一个数组
        cookies = request.getCookies();
        User user1 = null;
        for (Cookie ck :
                cookies) {
            if (ck.getName().equals("uid") && ck.getValue()!=null) {
                user1 = userService.queryByUserId(Integer.parseInt(ck.getValue()));
            }
        }
        if (user1 == null || user1.getUid() == 0)
            return "fail";
        model.addAttribute("user", user1);
        return "result";
    }

    @RequestMapping(value="logout")
    public String logout(Model model, User user, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
        //将用户对象添加到Session中
        session.removeAttribute("USER_SESSION");
        Cookie[] cookies = null;
        // 获取cookies的数据,是一个数组
        cookies = request.getCookies();
        for (Cookie ck :
                cookies) {
            if (ck.getName().equals("uid") && ck.getValue()!=null) {
                ck.setPath("/ssm");
                ck.setMaxAge(0);
                ck.setValue(null);
                response.addCookie(ck);
            }
        }

        return "redirect:/index.html";
    }
}