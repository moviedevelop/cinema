package com.etc.controller;

import com.etc.pojo.Regions;
import com.etc.service.RegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/region")
public class RegionController {
    @Autowired
    private RegionService regionService;

    @RequestMapping("all")
    public ModelAndView selectAllCity(ModelAndView modelAndView){
        List<Regions> allCity = regionService.selectAllCity();
        modelAndView.addObject("allCity",allCity);
        modelAndView.setViewName("data");
        return modelAndView;
    }
}
