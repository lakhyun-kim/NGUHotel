package kr.hotel.domain;

public class QnareplyCommand {

	private int qna_reply_seq;
	private String qna_re_content;
	private String qna_re_date;
	private String mem_id;
	private int h_qna_seq;
	public int getQna_reply_seq() {
		return qna_reply_seq;
	}
	public void setQna_reply_seq(int qna_reply_seq) {
		this.qna_reply_seq = qna_reply_seq;
	}
	public String getQna_re_content() {
		return qna_re_content;
	}
	public void setQna_re_content(String qna_re_content) {
		this.qna_re_content = qna_re_content;
	}
	public String getQna_re_date() {
		return qna_re_date;
	}
	public void setQna_re_date(String qna_re_date) {
		this.qna_re_date = qna_re_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getH_qna_seq() {
		return h_qna_seq;
	}
	public void setH_qna_seq(int h_qna_seq) {
		this.h_qna_seq = h_qna_seq;
	}
	@Override
	public String toString() {
		return "QnareplyCommand [qna_reply_seq=" + qna_reply_seq + ", qna_re_content=" + qna_re_content
				+ ", qna_re_date=" + qna_re_date + ", mem_id=" + mem_id + ", h_qna_seq=" + h_qna_seq + "]";
	}
	
	
}
