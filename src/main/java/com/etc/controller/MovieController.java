package com.etc.controller;

import com.etc.pojo.Comments;
import com.etc.pojo.MoviesWithBLOBs;
import com.etc.service.CommentService;
import com.etc.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/movie")
public class MovieController {
    @Autowired
    private MovieService movieService;

    @Autowired
    private CommentService commentService;

    @RequestMapping("/detail/{movieId}")
    public ModelAndView movieDetail(@PathVariable Integer movieId, ModelAndView modelAndView){
        MoviesWithBLOBs movieDetail = movieService.selectByPrimaryKey(movieId);
        Integer commentCount = commentService.selectCount(movieId);
        Comments comments = new Comments();
        comments.setMovieId(movieId);
        List<Comments> commentsList = commentService.selectCommentLimit(comments);
        modelAndView.addObject("commentCount",commentCount);
        modelAndView.addObject("movieDetail",movieDetail);
        modelAndView.addObject("commentsList",commentsList);
        modelAndView.setViewName("single");
        return modelAndView;
    }

    @RequestMapping("/tickets/{movieId}")
    public ModelAndView movieTickets(@PathVariable Integer movieId, ModelAndView modelAndView){
        MoviesWithBLOBs movieTickets = movieService.selectByPrimaryKey(movieId);
        modelAndView.addObject("movieTickets",movieTickets);
        modelAndView.setViewName("tickets");
        return modelAndView;
    }
}
