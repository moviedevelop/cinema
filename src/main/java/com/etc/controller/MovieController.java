package com.etc.controller;

import com.etc.pojo.Comments;
import com.etc.pojo.MoviesWithBLOBs;
import com.etc.service.CMListService;
import com.etc.service.CinemaService;
import com.etc.service.CommentService;
import com.etc.service.MovieService;
import com.etc.vo.ArgumentVo;
import com.etc.vo.CMListVo;
import com.etc.vo.MovieTimeListVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.List;

@Controller
@RequestMapping("/movie")
public class MovieController {
    @Autowired
    private MovieService movieService;

    @Autowired
    private CommentService commentService;

    @Autowired
    private CinemaService cinemaService;

    @Autowired
    private CMListService cmListService;

    @RequestMapping("/detail/{movieId}")
    public ModelAndView movieDetail(@PathVariable Integer movieId, ModelAndView modelAndView) {
        MoviesWithBLOBs movieDetail = movieService.selectByPrimaryKey(movieId);
        Integer commentCount = commentService.selectCount(movieId);
        Comments comments = new Comments();
        comments.setMovieId(movieId);
        List<Comments> commentsList = commentService.selectCommentLimit(comments);
        modelAndView.addObject("commentCount", commentCount);
        modelAndView.addObject("movieDetail", movieDetail);
        modelAndView.addObject("commentsList", commentsList);
        modelAndView.setViewName("single");
        return modelAndView;
    }

    @RequestMapping("/tickets/{movieId}")
    public ModelAndView movieTickets(@PathVariable Integer movieId, ModelAndView modelAndView) {
        ArgumentVo args = new ArgumentVo();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        args.setChooseDay("2019-08-16");
        args.setCityId(1183);
        args.setMovieId(movieId);
        MoviesWithBLOBs movieTickets = movieService.selectByPrimaryKey(movieId);
        modelAndView.addObject("movieTickets", movieTickets);
        List<CMListVo> cmListVos = cmListService.selectCinemaInfo(args);
        modelAndView.addObject("cmListVos", cmListVos);
        List<MovieTimeListVo> movieTimes = cmListService.selectUseTime(movieId);
        modelAndView.addObject("movieTimes", movieTimes);
        modelAndView.setViewName("tickets");
        return modelAndView;
    }

    @RequestMapping("/search")
    @ResponseBody
    public List<CMListVo> searchCinema(@RequestBody ArgumentVo args){
        List<CMListVo> cmListVoList = cmListService.selectCinemaInfo(args);
        return cmListVoList;
    }
}
