package kr.ac.sungkyul.gs25.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.sungkyul.gs25.vo.EventVo;;
@Repository
public class EventDao {
	@Autowired
	private SqlSession sqlSession;
	
	public void insertEvent(EventVo eventVo) {
		System.out.println("insertDao들어옴");
		sqlSession.insert("event.insertEvent", eventVo);
	}
	
	public List<EventVo>selectEvent(){
		System.out.println("selectDao들어옴");
		return sqlSession.selectList("event.selectEvent");
	}
}
