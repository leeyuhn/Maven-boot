package com.baizhi.controller;


import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String login(HttpSession session, Map map, String kaptcha , User user){

        String sessionKaptcha = (String) session.getAttribute("kaptcha");
        User user1=userService.login(user.getName(), user.getPassword());
        if(sessionKaptcha.equalsIgnoreCase(kaptcha)&&user1!=null){
            session.setAttribute("user", user1);
            return "redirect:/auction/getAll";
        }else{
            map.put("errorMessage", "验证码或账号密码不正确，请确认");
            return "redirect:/login.jsp";
        }
    }

    @RequestMapping("/register")
    public String register(User user, String kaptcha, HttpSession session, Map map){
        String sessionKaptcha = (String) session.getAttribute("kaptcha");
        if(sessionKaptcha.equalsIgnoreCase(kaptcha)){
            userService.regiser(user);
            return "redirect:/login.jsp";
        }else{
            map.put("errorMessage", "验证码不正确，请确认");
            return "/register";
        }
    }

}
