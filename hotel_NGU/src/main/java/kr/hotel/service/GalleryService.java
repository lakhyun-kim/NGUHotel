package kr.hotel.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.GalleryCommand;

public interface GalleryService {
	
	public void insert(GalleryCommand gallery);
	public void update(GalleryCommand gallery);
	public void delete(Integer h_gallery_seq);
	@Transactional(readOnly=true)
	public GalleryCommand detail(Integer h_gallery_seq);
	@Transactional(readOnly=true)
	public List<GalleryCommand> list();

}
