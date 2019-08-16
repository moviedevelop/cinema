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
        List<MoviesWithBLOBs> comicsOrderByMark = movieService.selectComicsOrderByMark();
        List<MoviesWithBLOBs> comicsByChina = movieService.selectComicsByChina();
        List<MoviesWithBLOBs> comicsByUnChina = movieService.selectComicsByUnChina();
        List<MoviesWithBLOBs> likeComics = movieService.selectLikeComics();
        model.addObject("recentComics",recentComics);
        model.addObject("comicsOrderByMark",comicsOrderByMark);
        model.addObject("comicsByChina",comicsByChina);
        model.addObject("comicsByUnChina",comicsByUnChina);
        model.addObject("likeComics",likeComics);
        model.setViewName("movies");
        return model;
    }
}
