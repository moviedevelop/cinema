package com.etc.controller;

import com.etc.pojo.Collections;
import com.etc.service.CollectionService;
import com.etc.vo.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/collection")
public class CollectionController {
    @Autowired
    CollectionService collectionService;

    @RequestMapping("/add")
    @ResponseBody
    public Message addCollection(@RequestBody Collections collections, HttpSession session){
        collections.setUserId((Integer) session.getAttribute("userId"));
        System.out.println(collections.toString());
        collectionService.insertSelective(collections);
        Message message = new Message();
        message.setMessage("添加收藏成功！");
        return message;
    }
}
