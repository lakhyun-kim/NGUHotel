package kr.hotel.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.MemberCommand;
import kr.hotel.domain.QnaCommand;
import kr.hotel.domain.QnareplyCommand;

public interface QnaMapper {

	//ȸ�� �� ���
	@Insert("INSERT INTO h_qna(h_qna_seq,h_qna_type,h_qna_subject,h_qna_content,h_qna_firstname,h_qna_lastname,h_qna_email,h_qna_phone,h_qna_phone2,h_qna_regdate,mem_id)"
			+ "VALUES (h_qna_seq.nextval,#{h_qna_type},#{h_qna_subject},#{h_qna_content},#{h_qna_firstname},#{h_qna_lastname},#{h_qna_email},#{h_qna_phone},#{h_qna_phone2},sysdate,#{mem_id})")
	public void insert(QnaCommand qna);
	//ȸ�� �� ����
	@Update("UPDATE h_qna SET h_qna_type=#{h_qna_type},h_qna_subject=#{h_qna_subject},h_qna_content=#{h_qna_content},h_qna_firstname=#{h_qna_firstname},h_qna_lastname=#{h_qna_lastname},"
			+ "h_qna_email=#{h_qna_email},h_qna_phone=#{h_qna_phone},h_qna_phone2=#{h_qna_phone2,jdbcType=VARCHAR},mem_id=#{mem_id} WHERE h_qna_seq=#{h_qna_seq}")
	public void update(QnaCommand h_qna_seq);
	//ȸ�� �� ����
	@Delete("DELETE FROM h_qna WHERE h_qna_seq=#{h_qna_seq}")
	public void delete(Integer qna_seq);
	@Transactional(readOnly=true)
	//ȸ���� ������ ���� ����Ʈ
	@Select("SELECT * FROM h_qna")
	public List<QnaCommand> list();
	//ȸ���� ������ ���� ����
	@Select("SELECT * FROM h_qna WHERE h_qna_seq=#{h_qna_seq}")
	public QnaCommand detail(Integer seq);
	
	@Select("SELECT * FROM h_member m LEFT OUTER JOIN h_member_detail d ON m.mem_id=d.mem_id LEFT OUTER JOIN h_level l ON d.mem_lev_num=l.mem_lev_num WHERE m.mem_id=#{mem_id}")
	public MemberCommand selectMember(String mem_id);
	
	
	//������ ���
	@Select("SELECT * FROM qna_reply WHERE h_qna_seq=#{h_qna_seq}")
	public List<QnareplyCommand> qna_reply_list(Map<String, Object> map);
	@Insert("INSERT INTO qna_reply(qna_reply_seq,qna_re_content,qna_re_date,mem_id,h_qna_seq) VALUES(qna_reply_seq.nextval,#{qna_re_content},sysdate,#{mem_id},#{h_qna_seq}) ")
	public void insertQnaReply(QnareplyCommand qna_reply);
	@Update("UPDATE qna_reply SET qna_re_content=#{qna_re_content}, qna_re_date=sysdate, mem_id=#{mem_id} WHERE qna_reply_seq=#{qna_reply_seq}")
	public void updateQnaReply(QnareplyCommand qna_reply);
	@Delete("DELETE FROM qna_reply WHERE qna_reply_seq=#{qna_reply_seq}")
	public void deleteQnaReply(Integer qna_reply_seq);
}


