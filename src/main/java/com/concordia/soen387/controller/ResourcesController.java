package com.concordia.soen387.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by EthanShen on 2016-11-06.
 */
@Controller
public class ResourcesController {
	
	
	 //change password
	 @RequestMapping(value="/changePw", method=RequestMethod.POST, params = {"oldPassword", "newPassword", "confirmPassword"})
	    public void changePassword(@RequestParam String oldPassword, @RequestParam String newPassword, @RequestParam String confirmPassword){
	    	
		 
	    }
	
	 //add computer
	 @RequestMapping(value="/addComp", method=RequestMethod.POST, params = {"machineType", "hostName" , "operatingSystem" , "manufactuerer", "model",
			"wirelessnetworking", "wirednetworking" , "speakersincluded", "keyboardincluded", "mouseincluded", "hdmiout" })
	    public void addComputer(@RequestParam String machineType, @RequestParam String hostName, @RequestParam String operatingSystem,
	    		@RequestParam String manufacturer, @RequestParam String model, @RequestParam String wirelessnetworking, @RequestParam String wirednetworking,
	    		@RequestParam String speakersincluded, @RequestParam String keyboardincluded, @RequestParam String mouseincluded, @RequestParam String hdmiout){
	    	

	    }
	 
	 //add projector
	 @RequestMapping(value="/addProj", method=RequestMethod.POST, params = {"projectorHeight", "projectorWidth", "projectorRoomNumber", "hdmiin",
			 																"dviin", "vgain" })
	    public void addProjector(@RequestParam String projectorHeight, @RequestParam String projectorWidth, @RequestParam String projectorRoomNumber, @RequestParam String hdmiin,
	    		@RequestParam String dviin, @RequestParam String vgain){
	    	

	    }
	 
	 
	 //add room
	 //jesse's task
	 
	 
	 //add board
	 //jesse's task
	 
	 
	 
	 //edit item
	 @RequestMapping(value="/changeItem", method=RequestMethod.POST, params = {"itemName", "status", "description"})
	    public void editItem(@RequestParam String itemName, @RequestParam String status, @RequestParam String description){
	    	

	    }

}
