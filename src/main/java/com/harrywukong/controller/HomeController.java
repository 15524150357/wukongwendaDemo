package com.harrywukong.controller;

import com.harrywukong.service.IQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * Created by ttc on 2018/8/9.
 */
@Controller
public class HomeController {

    @Autowired
    IQuestionService iQuestionService;

    @RequestMapping("/")
    public ModelAndView home()
    {
        ModelAndView modelAndView = new ModelAndView();
        List<Map<String,Object>> questioninfoExtendList = iQuestionService.getAllQuestions();

        modelAndView.addObject("questions",questioninfoExtendList);
        modelAndView.setViewName("index");
        return modelAndView;

    }
}
