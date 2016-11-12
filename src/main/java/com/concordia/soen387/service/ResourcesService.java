package com.concordia.soen387.service;

import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by EthanShen on 2016-11-06.
 */
public class ResourcesService {
	
	
	// require database API to process all of these methods
	
	public void changePassword(String oldPassword, String newPassword, String confirmPassword){
		
	}
	
	
	public void addComputer(String machineType, String hostName, String operatingSystem, String manufacturer, 
			String model, String wirelessnetworking, String wirednetworking, String speakersincluded, String keyboardincluded,
			String mouseincluded, String hdmiout){
		
		
	}
	
	public void addProjector(String projectorHeight, String projectorWidth, String projectorRoomNumber, String hdmiin,
    		String dviin, String vgain){
		
	}
	
	public void addRoom(int roomNum, String building, int roomCap){
		//SQL API here?
	}
	
	public void addBoard(int boaWidth, int boaHeight, int boaRoomNum){
		//SQL API here?
	}
	
	
	public void editItem(String itemName, String status, String description){
		
	}
}
