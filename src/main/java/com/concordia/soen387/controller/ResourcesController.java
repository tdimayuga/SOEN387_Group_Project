package com.concordia.soen387.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.concordia.soen387.service.ResourcesService;

/**
 * Created by EthanShen on 2016-11-06.
 */
@Controller
public class ResourcesController {
	
	private ResourcesService resourcesService;
	
	@Autowired
	public void setResourceService(ResourcesService resourcesService){
		this.resourcesService = resourcesService;
	}
	
	 //change password
	 @RequestMapping(value="/passForm", method=RequestMethod.POST, params = {"oldPassword", "newPassword", "confirmPassword"})
	    public void passwordForm(@RequestParam String oldPassword, @RequestParam String newPassword, @RequestParam String confirmPassword){
	    	
		 		resourcesService.changePassword(oldPassword, newPassword, confirmPassword);
		 		// redirect to proper jsp
	    }
	
	 //add computer
	 @RequestMapping(value="/compForm", method=RequestMethod.POST, params = {"machineType", "hostName" , "operatingSystem" , "manufactuerer", "model",
			"wirelessnetworking", "wirednetworking" , "speakersincluded", "keyboardincluded", "mouseincluded", "hdmiout" })
	    public void computerForm(@RequestParam String machineType, @RequestParam String hostName, @RequestParam String operatingSystem,
	    		@RequestParam String manufacturer, @RequestParam String model, @RequestParam String wirelessnetworking, @RequestParam String wirednetworking,
	    		@RequestParam String speakersincluded, @RequestParam String keyboardincluded, @RequestParam String mouseincluded, @RequestParam String hdmiout){
	    	
		 		resourcesService.addComputer(machineType, hostName, operatingSystem, manufacturer, model, wirelessnetworking, wirednetworking, speakersincluded, 
	    			keyboardincluded, mouseincluded, hdmiout);
		 		//redirect to proper jsp
	    }
	 
	 //add projector
	 @RequestMapping(value="/projForm", method=RequestMethod.POST, params = {"projectorHeight", "projectorWidth", "projectorRoomNumber", "hdmiin",
			 																"dviin", "vgain" })
	    public void projectorForm(@RequestParam String projectorHeight, @RequestParam String projectorWidth, @RequestParam String projectorRoomNumber, @RequestParam String hdmiin,
	    		@RequestParam String dviin, @RequestParam String vgain){
		 		
		 		resourcesService.addProjector(projectorHeight, projectorWidth, projectorRoomNumber, hdmiin, dviin, vgain);
		 		//redirect to proper jsp
	    }
	 
	 
	 @RequestMapping(value = "/roomform", method=RequestMethod.POST, params = {"roomNumber", "roomBuilding", "roomCapacity"})
		public String roomForm(@RequestParam int roomNumber, @RequestParam String roomBuilding, @RequestParam int roomCapacity){
		 		
		 		resourcesService.addRoom(roomNumber, roomBuilding, roomCapacity);
			
		 		// REDIRECT to output page
		 		return "redirect:/index/";
		}
		
		@RequestMapping(value = "/boardform", method=RequestMethod.POST, params = {"boardWidth", "boardHeight", "boardRoomNumber"})
		public String boardForm(@RequestParam int boardWidth, @RequestParam int boardHeight, @RequestParam int boardRoomNumber){
				
				resourcesService.addBoard(boardWidth, boardHeight, boardRoomNumber);
			
				//REDIRECT to output page
				return "redirect:/index/";
		}
	 
	 
	 
	 //edit item
	 @RequestMapping(value="/editItem", method=RequestMethod.POST, params = {"itemName", "status", "description"})
	    public void itemForm(@RequestParam String itemName, @RequestParam String status, @RequestParam String description){
	    	
		 		resourcesService.editItem(itemName, status, description);
		 		//redirect to proper jsp
	    }

}
