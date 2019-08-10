package com.etc.test;

import com.etc.dao.MoviesMapper;
import com.etc.pojo.MoviesWithBLOBs;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class MovieTest {
    private ApplicationContext context;
    private MoviesMapper mapper;

    @Before
    public void setUp(){
        context = new ClassPathXmlApplicationContext(new String[]{"spring-dao.xml","spring-service.xml"});
        mapper = context.getBean("moviesMapper", MoviesMapper.class);
    }

    @Test
    public void testSelectByPrimaryKey(){
       MoviesWithBLOBs movies =  mapper.selectByPrimaryKey(1);
        System.out.println(movies.toString());
    }

    @Test
    public void selectRecentMovie(){
        List<MoviesWithBLOBs> movies = mapper.selectRecentMovie();
        for (MoviesWithBLOBs movie : movies){
            System.out.println(movie.toString());
        }
    }

    @Test
    public void selectMovieOrderByMark(){
        List<MoviesWithBLOBs> movies = mapper.selectMovieOrderByMark();
        for (MoviesWithBLOBs movie : movies){
            System.out.println(movie.toString());
        }
    }

    @Test
    public void selectComics(){
        List<MoviesWithBLOBs> movies = mapper.selectComics();
        for (MoviesWithBLOBs movie : movies){
            System.out.println(movie.toString());
        }
    }

    @Test
    public void selectTelePlay(){
        List<MoviesWithBLOBs> movies = mapper.selectTelePlays();
        for (MoviesWithBLOBs movie : movies){
            System.out.println(movie.toString());
        }
    }
}
