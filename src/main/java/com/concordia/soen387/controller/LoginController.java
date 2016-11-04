package com.concordia.soen387.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Yang Shen on 2016-11-01.
 */
@Controller
public class LoginController {

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String indexPage(){
        return "index";
    }
}
