package com.etc.controller;

import com.etc.pojo.Cinemas;
import com.etc.service.CMListService;
import com.etc.service.CinemaService;
import com.etc.vo.ArgumentVo;
import com.etc.vo.MovieCinemaInfo;
import com.etc.vo.MovieSeatVo;
import com.etc.vo.MovieTimeListVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/theatre")
public class CinemaController {
    @Autowired
    private CMListService cmListService;

    @Autowired
    private CinemaService cinemaService;

    @RequestMapping("/buy/{cinemaId}")
    public ModelAndView selectMovieCinemaInfo(ModelAndView modelAndView, @PathVariable Integer cinemaId, ArgumentVo args){
        args.setCinemaId(cinemaId);
        List<MovieCinemaInfo> movieCinemaInfos = cmListService.selectCinemaDisplayInfo(args);
        modelAndView.addObject("movieCinemaInfos",movieCinemaInfos);
        Cinemas cinemaInfo = cinemaService.selectByPrimaryKey(args.getCinemaId());
        modelAndView.addObject("cinemaInfo",cinemaInfo);
        List<MovieTimeListVo> movieTimes = cmListService.selectUseTime(args.getMovieId());
        modelAndView.addObject("movieTimes",movieTimes);
        modelAndView.setViewName("buytickets");
        return modelAndView;
    }

    @RequestMapping("/change")
    @ResponseBody
    public List<MovieCinemaInfo> changeChosenDay(@RequestBody ArgumentVo args){
        return cmListService.selectCinemaDisplayInfo(args);
    }

    @RequestMapping("/seat/{listId}")
    public ModelAndView chooseSeat(ModelAndView modelAndView,@PathVariable Integer listId){
        MovieSeatVo movieSeatInfo = cmListService.forChooseSeat(listId);
        modelAndView.addObject("movieSeatInfo",movieSeatInfo);
        modelAndView.setViewName("choose");
        return modelAndView;
    }
}
