package kr.hotel.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.hotel.dao.EventMapper;
import kr.hotel.domain.EventCommand;

@Service("eventService")
public class EventServiceImpl implements EventService{

	@Resource
	private EventMapper eventMapper;
	
	@Override
	public void insert(EventCommand event) {
		eventMapper.insert(event);		
	}

	@Override
	public void update(EventCommand event) {
		eventMapper.update(event);		
	}

	@Override
	public void delete(Integer event_seq) {
		eventMapper.delete(event_seq);
	}

	@Override
	public EventCommand detail(Integer event_seq) {
		return eventMapper.detail(event_seq);
	}

	@Override
	public List<EventCommand> list() {
		return eventMapper.list();
	}

}

