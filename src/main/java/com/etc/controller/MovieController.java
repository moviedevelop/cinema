package com.etc.controller;

import com.etc.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;

public class MovieController {
    @Autowired
    private MovieService movieService;
}
