package com.human.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import com.human.dto.HumanDto;
import com.human.util.DBConn;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

public class HumanDao {

//	SELECT
	public ArrayList<HumanDto> AllSelect() {
		ArrayList<HumanDto> resultDtos = new ArrayList<HumanDto>();
		System.out.println("select * from member");
		ResultSet rs = DBConn.statementQuery("select * from member order by no");

		try {
			while (rs.next()) {
				resultDtos.add(new HumanDto( rs.getString("name"),rs.getInt("age"), rs.getDouble("tall"),
						rs.getTimestamp("birthDay").toLocalDateTime()));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultDtos;
	}

	public ArrayList<HumanDto> Select(String name) {
		ResultSet rs = null;
		ArrayList<HumanDto> dtos = new ArrayList<HumanDto>();
		String sql = String.format("select * from member " 
		+ "where name like '%%%s%%' order by no"
					, name);
		DBConn.getInstance();
		rs = DBConn.statementQuery(sql);

		if (rs != null) {
			try {
				while (rs.next()) {
					dtos.add(new HumanDto(
							rs.getInt("no"),
							rs.getString("name"),
							rs.getDouble("height"),
							rs.getTimestamp("birthDay").toLocalDateTime()));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dtos;
	}

//	INSERT
	public int Insert(HumanDto dto) {
		int returnValue=0;
		String sql = String.format("insert into member VALUES" +
		"(%d,'%s',%f,to_date('%s','yyyy-MM-dd HH24:MI:SS'))",
				dto.getName(), dto.getage(), dto.getHeight(),
				dto.getBirthday().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
		returnValue=DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}

//	Update
	public int Update(String name, Double height) {
		
		System.out.println("update ! ");
		int returnValue=0;
		String sql=String.format(
				"update member set height = %f where name ='%s'",
				 height,name
				);
		System.out.println(sql);
		DBConn.getInstance();
		returnValue=DBConn.statementUpdate(sql);
		DBConn.dbClose();

		return returnValue;
	}

// Delete
	public int Delete(String name) {
		int returnValue = 0;
		System.out.println("Delete!");
		String sql=String.format(
				"delete member where name ='%s'",
				 name
				);
		System.out.println(sql);
		DBConn.getInstance();
		returnValue=DBConn.statementUpdate(sql);
		DBConn.dbClose();

		return returnValue;
	}
}
