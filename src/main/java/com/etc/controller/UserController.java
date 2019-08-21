package com.etc.controller;

import com.etc.vo.Message;
import com.etc.pojo.Users;
import com.etc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
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
    public ModelAndView login(ModelAndView modelAndView, HttpServletRequest request,HttpSession session){
        modelAndView.setViewName("login");
        return modelAndView;
    }

    @RequestMapping("/dologin")
    public  ModelAndView doLogin(Users users, HttpSession session, ModelAndView model) {
        Users loginUser = userService.selectUserByUsernameAndPass(users);
        if (loginUser == null) {
            String str = "用户名或密码错误！";
            model.addObject("errorMessage",str);
            model.setViewName("login");
            return model;
        } else {
            String pageFrom = (String) session.getAttribute("pageFrom");
            session.setAttribute("userId", loginUser.getUserId());
            session.setAttribute("userName",loginUser.getUserName());
            if (pageFrom != null){
                model.setViewName("redirect:" + pageFrom);
            }else{
                model.setViewName("redirect:../index");
            }

            return model;
        }
    }

    @RequestMapping("/showdata")
    public ModelAndView selectByPrimaryKey(ModelAndView model, HttpSession session) {
        int userId = (int) session.getAttribute("userId");
        Users users = userService.selectByPrimaryKey(userId);
        model.addObject("users", users);
        if (users == null) {
            model.setViewName("redirect:login");
        }
        model.setViewName("userdata");
        return model;
    }

    @RequestMapping("/update")
    public ModelAndView updateByPrimaryKeySelective(ModelAndView model, Users users) {
        userService.updateByPrimaryKeySelective(users);
        model.setViewName("redirect:showdata");
        return model;
    }
}
