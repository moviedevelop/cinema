package com.etc.test;

import com.etc.dao.CommentsMapper;
import com.etc.pojo.Comments;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class CommentTest {
    private ApplicationContext context;
    private CommentsMapper mapper;

    @Before
    public void setUp(){
        context = new ClassPathXmlApplicationContext(new String[]{"spring-dao.xml","spring-service.xml"});
        mapper = context.getBean("commentsMapper", CommentsMapper.class);
    }

    @Test
    public void selectCount(){
        int count = mapper.selectCount(24);
        System.out.println(count);
    }


    @Test
    public void selectByUserId(){
        Comments comment = new Comments();
        //comment.setUserId(1);
        comment.setMovieId(7);
        List<Comments> comments = mapper.selectCommentLimit(comment);
        for (Comments c : comments){
            System.out.println(c.toString());
        }
    }
}
