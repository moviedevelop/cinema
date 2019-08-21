package com.etc.test;

import com.etc.dao.CinemasMapper;
import com.etc.vo.CinemaVo;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class CinemaTest {
    private ApplicationContext context;
    private CinemasMapper mapper;

    @Before
    public void setUp(){
        context = new ClassPathXmlApplicationContext(new String[]{"spring-dao.xml","spring-service.xml"});
        mapper = context.getBean("cinemasMapper", CinemasMapper.class);
    }

    @Test
    public void selectCinemaByCity(){
        List<CinemaVo> cinemas = mapper.selectCinemaByCity(1183);
        for(CinemaVo v : cinemas){
            System.out.println(v.toString());
        }
    }
}
