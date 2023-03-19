package com.mentoring.service;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mentoring.domain.Interview;
import com.mentoring.mybatis.mapper.Mapperjava;


@Service
public class ServiceImpl implements Servicejava {

	private Mapperjava dao;
	
	@Autowired
	public ServiceImpl(Mapperjava dao) {
		this.dao = dao;
 
	}
	
	@Override
	public int getListCount(String from_date, String to_date, String name, String party) {

		return dao.getListCount(from_date, to_date, name, party);
	}



	@Override
	public List<Interview> getInterviewList(String from_date, String to_date, String name, String party, int limit) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		//int endrow = limit;
		map.put("from_date", from_date);
		map.put("to_date", to_date);
		map.put("name", name);
		map.put("party", party);
		map.put("endrow", limit);
		
		//주석
		map.forEach((key, value) -> {
            System.out.println("serviceImpl "+ key + " : " + value);
        });
		
		
		return dao.getInterviewList(map);
		
	}

	
}
