package com.controller;

import com.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/json")
public class JsonController {

    @RequestMapping("/testJavaBean")
    @ResponseBody
    public User test(@RequestParam("name") String name) {
        User user = new User();
        user.setUsername(name);
        user.setPassword("123456");
        return user;
    }

    @RequestMapping("/testMap")
    @ResponseBody
    public Map test2(@RequestParam("name") String name) {
        Map<String, Object> map = new HashMap<>();
        map.put("name", name);
        map.put("test", 123);
        map.put("array", new String[]{"a", "b", "c"});
        return map;
    }
}