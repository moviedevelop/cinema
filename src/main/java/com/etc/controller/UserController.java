package com.etc.controller;

import com.etc.Message;
import com.etc.pojo.Users;
import com.etc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/doreg")
    public ModelAndView doRegister(ModelAndView modelAndView, Users users){
        userService.insertSelective(users);
        //转发
        modelAndView.setViewName("redirect:../index");
        return modelAndView;
    }

    //ajax验证
    @RequestMapping("/check")
    @ResponseBody
    public Message checkTel(String tel){
        System.out.println(tel);
        Message message = new Message();
        if (userService.checkTelExist(tel)){
            message.setMessage("");
            return message;
        }
        message.setMessage("手机号已被注册");
        return message;
    }

    @RequestMapping("/login")
    public  String login(Users users, HttpSession session, Model model) {
        Users loginUser = userService.selectUserByUsernameAndPass(users);
        if (loginUser == null) {
            String str = "用户名或密码错误！";
            model.addAttribute("str", str);
            return "redirect:../index";
        } else {
            session.setAttribute("userId", loginUser.getUserId());
            return "redirect:../index";
        }
    }
}
