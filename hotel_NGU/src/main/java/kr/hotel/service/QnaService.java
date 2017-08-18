package kr.hotel.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.QnaCommand;
import kr.hotel.domain.QnareplyCommand;

@Transactional
public interface QnaService {

	//ȸ�� �� ���
	public void insert(QnaCommand qna);
	//ȸ�� �� ����
	public void update(QnaCommand h_qna_seq);
	//ȸ�� �� ����
	public void delete(Integer h_qna_seq);
	@Transactional(readOnly=true)
	//ȸ���� ������ ���� ����Ʈ
	public List<QnaCommand> list();
	@Transactional(readOnly=true)
	//ȸ���� ������ ���� ����
	public QnaCommand detail(Integer h_qna_seq);
	
	//������ ���
	public List<QnareplyCommand> qna_reply_list(Map<String, Object> map);
	public void insertQnaReply(QnareplyCommand qna_reply);
	public void updateQnaReply(QnareplyCommand qna_reply);
	public void deleteQnaReply(Integer qna_reply_seq);
	
}
