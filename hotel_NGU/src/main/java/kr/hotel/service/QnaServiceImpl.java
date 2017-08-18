package kr.hotel.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.hotel.dao.QnaMapper;
import kr.hotel.domain.QnaCommand;
import kr.hotel.domain.QnareplyCommand;

@Service("QnaService")
public class QnaServiceImpl implements QnaService{

	@Resource
	private QnaMapper qnaMapper;
	
	@Override
	public void insert(QnaCommand qna) {
		qnaMapper.insert(qna);
	}

	@Override
	public void update(QnaCommand qna) {
		qnaMapper.update(qna);
	}

	@Override
	public void delete(Integer h_qna_seq) {
		qnaMapper.delete(h_qna_seq);
	}

	@Override
	public List<QnaCommand> list() {
		return qnaMapper.list();
	}

	@Override
	public QnaCommand detail(Integer h_qna_seq) {
		return qnaMapper.detail(h_qna_seq);
	}

	@Override
	public void insertQnaReply(QnareplyCommand qna_reply) {
		qnaMapper.insertQnaReply(qna_reply);
		
	}

	@Override
	public void updateQnaReply(QnareplyCommand qna_reply) {
		qnaMapper.updateQnaReply(qna_reply);
	}

	@Override
	public void deleteQnaReply(Integer qna_reply_seq) {
		qnaMapper.deleteQnaReply(qna_reply_seq);
	}

	@Override
	public List<QnareplyCommand> qna_reply_list(Map<String, Object> map) {
		return qnaMapper.qna_reply_list(map);
	}

}
