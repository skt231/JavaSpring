package com.human.dto;
import java.util.*;
import java.text.ParseException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
public class HumanDto {
	private Integer no;
	private String name;
	private Double height;
	private LocalDateTime birthday;
	
	public HumanDto(String string, int i, double d, LocalDateTime localDateTime) {}
	
	public HumanDto(Integer no, String name, Double height, LocalDateTime birthday) {
		super();
		this.no = no;
		this.name = name;
		this.height = height;
		this.birthday = birthday;
	}
	public HumanDto(HumanDto dto) {
		super();
		this.no = dto.no;
		this.name = dto.name;
		this.height = dto.height;
		this.birthday = dto.birthday;
	}
	
	public String toString() {
		return "HumanDto [no=" + no + ", name=" + name + ", height=" + 
				height + ", birtday=" + birthday + "]";
	}
	public int hashCode() {
		return Objects.hash(name);
	}
	
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		HumanDto other = (HumanDto) obj;
		return Objects.equals(name, other.name);
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public Double getHeight() {
		return height;
	}

	public void setHeight(Double height) {
		this.height = height;
	}

	public LocalDateTime getBirthday() {
		return birthday;
	}

	public void setBirthday(LocalDateTime birthday) {
		this.birthday = birthday;
	}
	public void setBirtString(String time) {
		time += "T00:00:00";
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		this.birthday = LocalDateTime.parse(time);
		System.out.println("지금 값 : " + this.birthday);
	}

	public Object getage() {
		// TODO Auto-generated method stub
		return null;
	}
}
