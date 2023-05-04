package com.kh.tripism.travelPlan.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.tripism.travelPlan.model.vo.Tour;

@Repository
public class PlanDao {
	
	public int insertTour(SqlSessionTemplate sqlSession,Tour t) {
//		System.out.println("이건 다오에서 찍음 : " + t);
		return sqlSession.insert("planMapper.insertTour",t);
	}
	public ArrayList<Tour> selectTourList(SqlSessionTemplate sqlSession,int areaCode,int currentPage,String searchValue){
		HashMap<String, Object> selectList = new HashMap<String, Object>();
		selectList.put("areaCode", areaCode);
		selectList.put("searchValue", "%"+searchValue+"%");
		RowBounds rowBouns = new RowBounds((currentPage-1)*10,10);
		
		
		return (ArrayList)sqlSession.selectList("planMapper.selectTourList", selectList,  rowBouns);
		
	}

}
