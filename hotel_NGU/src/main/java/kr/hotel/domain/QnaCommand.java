package kr.hotel.domain;

public class QnaCommand {

	private int h_qna_seq;
	private String h_qna_type;
	private String h_qna_subject;
	private String h_qna_content;
	private String h_qna_email;
	private String h_qna_phone;
	private String h_qna_phone2;
	private String h_qna_firstname;
	private String h_qna_lastname;
	private String mem_id;
	public int getH_qna_seq() {
		return h_qna_seq;
	}
	public void setH_qna_seq(int h_qna_seq) {
		this.h_qna_seq = h_qna_seq;
	}
	public String getH_qna_type() {
		return h_qna_type;
	}
	public void setH_qna_type(String h_qna_type) {
		this.h_qna_type = h_qna_type;
	}
	public String getH_qna_subject() {
		return h_qna_subject;
	}
	public void setH_qna_subject(String h_qna_subject) {
		this.h_qna_subject = h_qna_subject;
	}
	public String getH_qna_content() {
		return h_qna_content;
	}
	public void setH_qna_content(String h_qna_content) {
		this.h_qna_content = h_qna_content;
	}
	public String getH_qna_email() {
		return h_qna_email;
	}
	public void setH_qna_email(String h_qna_email) {
		this.h_qna_email = h_qna_email;
	}
	public String getH_qna_phone() {
		return h_qna_phone;
	}
	public void setH_qna_phone(String h_qna_phone) {
		this.h_qna_phone = h_qna_phone;
	}
	public String getH_qna_phone2() {
		return h_qna_phone2;
	}
	public void setH_qna_phone2(String h_qna_phone2) {
		this.h_qna_phone2 = h_qna_phone2;
	}
	public String getH_qna_firstname() {
		return h_qna_firstname;
	}
	public void setH_qna_firstname(String h_qna_firstname) {
		this.h_qna_firstname = h_qna_firstname;
	}
	public String getH_qna_lastname() {
		return h_qna_lastname;
	}
	public void setH_qna_lastname(String h_qna_lastname) {
		this.h_qna_lastname = h_qna_lastname;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	@Override
	public String toString() {
		return "QnaCommand [h_qna_seq=" + h_qna_seq + ", h_qna_type=" + h_qna_type +", h_qna_subject=" + h_qna_subject + ", h_qna_content=" + h_qna_content + ", h_qna_email="
				+ h_qna_email + ", h_qna_phone=" + h_qna_phone + ", h_qna_phone2=" + h_qna_phone2 + ", h_qna_firstname="
				+ h_qna_firstname + ", h_qna_lastname=" + h_qna_lastname + ", mem_id=" + mem_id + "]";
	}
	
}
