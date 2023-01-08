package com.human.service;

import java.util.ArrayList;

import com.human.dao.HumanDao;
import com.human.dto.HumanDto;

//1.Dao작업
//2.비즈니스(business)작업 (핵심 작업)
public class HumanService {
	private HumanDao dao = new HumanDao();
	
	  
	
	  public void Insert(HumanDto dto) { dao.Insert(dto); }
	  
	  public void Update(String name,Double height) { dao.Update(name, height); }
	  
	  public void Delete(String name) { dao.Delete(name); }
	  
	  public void AllSelect() {dao.AllSelect();}
	  public ArrayList<HumanDto> Select(String name) { return dao.Select(name); }
	  
//	  public ArrayList<HumanDto> Select(String name){ return dao.Select(name); }
	 
}
