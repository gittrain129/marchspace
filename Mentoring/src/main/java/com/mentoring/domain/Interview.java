package com.mentoring.domain;

public class Interview {

	
	private int id;
	private String date;
	private String time;
	private String title;
	
	private String name;
	private String party;
	private int press_id;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getParty() {
		return party;
	}
	public void setParty(String party) {
		this.party = party;
	}
	public int getPress_id() {
		return press_id;
	}
	public void setPress_id(int press_id) {
		this.press_id = press_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDate() {
		System.out.println(date);
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getTitle() {
		System.out.println(title);
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
}
