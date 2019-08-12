package com.etc.controller;

import com.etc.pojo.MoviesWithBLOBs;
import com.etc.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ComicsController {

    @Autowired
    private MovieService movieService;

    @RequestMapping("/comics")
    public ModelAndView comics(ModelAndView model){
        List<MoviesWithBLOBs> recentComics = movieService.selectRecentComics();
        model.addObject("recentComics",recentComics);
        model.setViewName("movies");
        return model;
    }
}
