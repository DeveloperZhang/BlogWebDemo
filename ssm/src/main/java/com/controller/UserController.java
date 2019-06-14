package com.controller;

import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("findUserByName")
    public String findUserByName(Model model, User user) {
        User user1 = userService.queryByUserName(user);
        model.addAttribute("user", user1);
        return "result";
    }
}