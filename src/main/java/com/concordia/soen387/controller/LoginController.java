package com.concordia.soen387.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * Created by Yang Shen on 2016-11-01.
 */
@Controller
@SessionAttributes({"username" , "userType"})
public class LoginController {
	
	

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String indexPage(){
        return "index";
    }

    @RequestMapping(value="/invLogin", method=RequestMethod.POST, params = {"username", "password", "userType"})
    public void loginValidation(@RequestParam String username,
                                        @RequestParam String password,
                                        	@RequestParam String userType,
                                        		ModelMap model){
    	// validate user from database
    	
    	//store username and userType in the model to keep track of sessions
    	model.put("username", username);
    	model.put("userType", userType);
    	
    }

}
