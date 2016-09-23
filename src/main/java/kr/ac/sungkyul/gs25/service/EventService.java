package kr.ac.sungkyul.gs25.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.sungkyul.gs25.dao.EventDao;
import kr.ac.sungkyul.gs25.vo.EventVo;;

@Service
public class EventService {
	@Autowired
	private EventDao eventdao;
	private EventVo eventvo;
	public void insertEvent(){

		eventdao.insertEvent(eventvo);
	}
	
	public List<EventVo>selectEvent(){
		return eventdao.selectEvent();
	}
}
