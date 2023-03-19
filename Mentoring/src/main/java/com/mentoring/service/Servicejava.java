package com.mentoring.service;

import java.util.List;

import com.mentoring.domain.Interview;

public interface Servicejava {

	public int getListCount(String from_date, String to_date, String name, String party);
	
	public List<Interview> getInterviewList(String from_date, String to_date, String name, String party, int limit);

	

	
}
