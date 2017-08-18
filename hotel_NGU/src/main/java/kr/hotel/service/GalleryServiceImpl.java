package kr.hotel.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.hotel.dao.GalleryMapper;
import kr.hotel.domain.GalleryCommand;

@Service("galleryService")
public class GalleryServiceImpl implements GalleryService{

	@Resource
	private GalleryMapper galleryMapper;
	
	@Override
	public void insert(GalleryCommand gallery) {
		galleryMapper.insert(gallery);
	}
  
	@Override
	public void update(GalleryCommand gallery) {
		galleryMapper.update(gallery);		
	}

	@Override
	public void delete(Integer h_gallery_seq) {
		galleryMapper.delete(h_gallery_seq);		
	}

	@Override
	public GalleryCommand detail(Integer h_gallery_seq) {
		return galleryMapper.detail(h_gallery_seq);
	}

	@Override
	public List<GalleryCommand> list() {
		return galleryMapper.list();
	}

}
