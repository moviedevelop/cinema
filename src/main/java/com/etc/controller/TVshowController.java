package com.etc.controller;

import com.etc.pojo.MoviesWithBLOBs;
import com.etc.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class TVshowController {

    @Autowired
    private MovieService movieService;

    @RequestMapping("/TVshow")
    public ModelAndView show(ModelAndView model){
        List<MoviesWithBLOBs> telePlays = movieService.selectTelePlays();
        List<MoviesWithBLOBs> highMarkTelePlays = movieService.selectTelePlaysOrderByMark();
        List<MoviesWithBLOBs> recentTelePlays = movieService.selectRecentTelePlays();
        List<MoviesWithBLOBs> telePlaysByChina = movieService.selectTelePlaysByChina();
        List<MoviesWithBLOBs> telePlaysByUnChina = movieService.selectTelePlaysByUnChina();
        List<MoviesWithBLOBs> varietyShows = movieService.selectVarietyShows();
        model.addObject("highMarkTelePlays",highMarkTelePlays);
        model.addObject("telePlays",telePlays);
        model.addObject("recentTelePlays",recentTelePlays);
        model.addObject("telePlaysByChina",telePlaysByChina);
        model.addObject("telePlaysByUnChina",telePlaysByUnChina);
        model.addObject("varietyShows",varietyShows);
        model.setViewName("shows");
        return model;
    }

}
