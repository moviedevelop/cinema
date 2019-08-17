package com.etc.test;

import com.etc.dao.CMListMapper;
import com.etc.vo.ArgumentVo;
import com.etc.vo.CMListVo;
import com.etc.vo.MovieCinemaInfo;
import com.etc.vo.MovieTimeListVo;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class CMListTest {
    private ApplicationContext context;
    private CMListMapper mapper;

    @Before
    public void setUp(){
        context = new ClassPathXmlApplicationContext(new String[]{"spring-dao.xml","spring-service.xml"});
        mapper = context.getBean("CMListMapper", CMListMapper.class);
    }

    @Test
    public void selectUseMovie(){
        List<MovieTimeListVo> list =  mapper.selectUseTime(68);
        for(MovieTimeListVo m : list){
            System.out.println(m.toString());
        }
    }

    @Test
    public void selectCinemaInfo(){
        ArgumentVo args = new ArgumentVo();
        args.setCinemaId(4);
        args.setCityId(1183);
        args.setMovieId(68);
        List<CMListVo> cinemaInfo = mapper.selectCinemaInfo(args);
        for(CMListVo cm : cinemaInfo){
            System.out.println(cm.toString());
        }
    }

    @Test
    public void selectMovieCinemaInfo(){
        ArgumentVo args = new ArgumentVo();
        args.setCinemaId(4);
        args.setMovieId(68);
        args.setChooseDay("2019-08-16");
        List<MovieCinemaInfo> movieCinemaInfo = mapper.selectCinemaDisplayInfo(args);
        for (MovieCinemaInfo info : movieCinemaInfo){
            System.out.println(info.toString());
        }
    }
}
