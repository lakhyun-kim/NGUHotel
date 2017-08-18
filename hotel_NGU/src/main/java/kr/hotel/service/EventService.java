package kr.hotel.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.EventCommand;

public interface EventService {

	public void insert(EventCommand event);
	public void update(EventCommand event);
	public void delete(Integer event_seq);
	@Transactional(readOnly=true)
	public EventCommand detail(Integer event_seq);
	@Transactional(readOnly=true)
	public List<EventCommand> list();
}
