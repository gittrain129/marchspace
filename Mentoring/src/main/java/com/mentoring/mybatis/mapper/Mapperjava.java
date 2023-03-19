package com.mentoring.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mentoring.domain.Interview;

@Mapper
public interface Mapperjava {

	
public int getListCount(String from_date, String to_date, String name, String party);
	

public List<Interview> getInterviewList(HashMap<String, Object> map);






}
