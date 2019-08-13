package com.etc.controller;

import com.etc.pojo.MoviesWithBLOBs;
import com.etc.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/movie")
public class MovieController {
    @Autowired
    private MovieService movieService;

    @RequestMapping("/detail/{movieId}")
    public ModelAndView movieDetail(@PathVariable Integer movieId, ModelAndView modelAndView){
        MoviesWithBLOBs movieDetail = movieService.selectByPrimaryKey(movieId);
        modelAndView.addObject("movieDetail",movieDetail);
        modelAndView.setViewName("single");
        return modelAndView;
    }
}
