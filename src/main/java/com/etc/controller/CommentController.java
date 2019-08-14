package com.etc.controller;

import com.etc.pojo.Comments;
import com.etc.service.CommentService;
import com.etc.vo.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService commentService;

    @RequestMapping("/add")
    @ResponseBody
    public Message doComment(@RequestBody Comments comments, HttpServletRequest request){
        HttpSession session = request.getSession();
        Message message = new Message();
        Integer userId = (Integer) session.getAttribute("userId");
        if (userId != null){
            comments.setUserId(userId);
            commentService.insert(comments);
            message.setMessage("评论成功");
        }else {
            message.setMessage("亲，要先登录哦");
        }
        return message;
    }

    @RequestMapping("/limit")
    @ResponseBody
    public List<Comments> selectCommentsLimit(@RequestBody Comments comments,HttpServletRequest request){
        HttpSession session = request.getSession();
        comments.setUserId((Integer) session.getAttribute("userId"));
        List<Comments> myComment = commentService.selectCommentLimit(comments);
        return myComment;
    }

}
