package com.etc.controller;

import com.etc.consts.ProjectConsts;
import com.etc.pojo.MoviesWithBLOBs;
import com.etc.service.MovieService;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private MovieService movieService;

    @RequestMapping("/index")
    public ModelAndView toIndex(ModelAndView modelAndView){
        List<MoviesWithBLOBs> recentMovies = movieService.selectRecentMovie();
        List<MoviesWithBLOBs> highMarkMovies = movieService.selectMovieOrderByMark();
        modelAndView.addObject("recentMovies",recentMovies);
        modelAndView.addObject("highMarkMovies",highMarkMovies);
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @RequestMapping("/images")
    public void getImage(String movieImg, HttpServletResponse response) throws IOException {
        String path = ProjectConsts.IMAGE_PATH + "\\" + movieImg;
        File file = new File(path);
        InputStream in = new FileInputStream(file);
        IOUtils.copy(in,response.getOutputStream());

    }
}
