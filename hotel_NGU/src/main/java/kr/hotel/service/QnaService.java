package kr.hotel.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.QnaCommand;
import kr.hotel.domain.QnareplyCommand;

@Transactional
public interface QnaService {

	//회원 글 등록
	public void insert(QnaCommand qna);
	//회원 글 수정
	public void update(QnaCommand h_qna_seq);
	//회원 글 삭제
	public void delete(Integer h_qna_seq);
	@Transactional(readOnly=true)
	//회원의 접수된 문의 리스트
	public List<QnaCommand> list();
	@Transactional(readOnly=true)
	//회원의 접수된 문의 내용
	public QnaCommand detail(Integer h_qna_seq);
	
	//관리자 댓글
	public List<QnareplyCommand> qna_reply_list(Map<String, Object> map);
	public void insertQnaReply(QnareplyCommand qna_reply);
	public void updateQnaReply(QnareplyCommand qna_reply);
	public void deleteQnaReply(Integer qna_reply_seq);
	
}
