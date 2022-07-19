package com.arun.busbooking.model;

public class Ticket {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public Ticket(int id, String name, String phone, String source, String destination, String date, int adults,
			int kids, int fare) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.source = source;
		this.destination = destination;
		this.date = date;
		this.adults = adults;
		this.kids = kids;
		this.fare = fare;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getAdults() {
		return adults;
	}
	public void setAdults(int adults) {
		this.adults = adults;
	}
	public int getKids() {
		return kids;
	}
	public void setKids(int kids) {
		this.kids = kids;
	}
	public int getFare() {
		return fare;
	}
	public void setFare(int fare) {
		this.fare = fare;
	}
	
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	
	private String name;
	private String phone;
	private String source;
	public Ticket(String name, String phone, String source, String destination, String date, int adults, int kids,int fare, int totalfare) {
		super();
		this.name = name;
		this.phone = phone;
		this.source = source;
		this.destination = destination;
		this.date = date;
		this.adults = adults;
		this.kids = kids;
		this.fare = fare;
		this.totalfare=totalfare;
	}
	
	public Ticket(String name,String source, String destination, int adults, int fare, int duration, String shortSource, String shortDestination, int totalfare, String busType) {
		super();
		this.name = name;
		this.source = source;
		this.destination = destination;
		this.adults = adults;
		this.kids = kids;
		this.fare = fare;
		this.duration = duration;
		this.shortSource= shortSource;
		this.shortDestination = shortDestination;
		this.totalfare=totalfare;
		this.busType = busType;
	}
	
	
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public int getTotalfare() {
		return totalfare;
	}
	public void setTotalfare(int totalfare) {
		this.totalfare = totalfare;
	}
	public String getShortSource() {
		return shortSource;
	}
	public void setShortSource(String shortSource) {
		this.shortSource = shortSource;
	}
	public String getShortDestination() {
		return shortDestination;
	}
	public void setShortDestination(String shortDestination) {
		this.shortDestination = shortDestination;
	}

	private String destination;
	private String date;
	private int adults;
	private int kids;
	private int fare;
	private int time;
	private String shortSource;
	private String shortDestination;
	private int totalfare;
	private int duration;
	private String busType;
	public String getBusType() {
		return busType;
	}
	public void setBusType(String busType) {
		this.busType = busType;
	}
}
