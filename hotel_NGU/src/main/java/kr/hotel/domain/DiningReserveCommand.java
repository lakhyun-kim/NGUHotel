package kr.hotel.domain;

import org.hibernate.validator.constraints.NotEmpty;

public class DiningReserveCommand {

	private int seq;
	@NotEmpty
	private String din_res_date;
	@NotEmpty
	private String din_res_time;
	private int din_res_person;
	@NotEmpty
	private String din_res_name;
	@NotEmpty
	private String din_res_phone;
	@NotEmpty
	private String din_res_email;
	
	private String din_res_require;
	
	private int din_res_status;
	
	private int din_seq;
	
	private String din_title;
	
	public int getDin_seq() {
		return din_seq;
	}
	public void setDin_seq(int din_seq) {
		this.din_seq = din_seq;
	}
	public String getDin_res_date() {
		return din_res_date;
	}
	public void setDin_res_date(String din_res_date) {
		this.din_res_date = din_res_date;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getDin_res_time() {
		return din_res_time;
	}
	public void setDin_res_time(String din_res_time) {
		this.din_res_time = din_res_time;
	}
	public int getDin_res_person() {
		return din_res_person;
	}
	public void setDin_res_person(int din_res_person) {
		this.din_res_person = din_res_person;
	}
	public String getDin_res_name() {
		return din_res_name;
	}
	public void setDin_res_name(String din_res_name) {
		this.din_res_name = din_res_name;
	}
	public String getDin_res_phone() {
		return din_res_phone;
	}
	public void setDin_res_phone(String din_res_phone) {
		this.din_res_phone = din_res_phone;
	}
	public String getDin_res_email() {
		return din_res_email;
	}
	public void setDin_res_email(String din_res_email) {
		this.din_res_email = din_res_email;
	}
	public String getDin_res_require() {
		return din_res_require;
	}
	public void setDin_res_require(String din_res_require) {
		this.din_res_require = din_res_require;
	}
	public int getDin_res_status() {
		return din_res_status;
	}
	public void setDin_res_status(int din_res_status) {
		this.din_res_status = din_res_status;
	}
	
	public String getDin_title() {
		return din_title;
	}
	public void setDin_title(String din_title) {
		this.din_title = din_title;
	}
	@Override
	public String toString() {
		return "DiningReserveCommand [seq=" + seq + ", din_res_date=" + din_res_date + ", din_res_time=" + din_res_time
				+ ", din_res_person=" + din_res_person + ", din_res_name=" + din_res_name + ", din_res_phone="
				+ din_res_phone + ", din_res_email=" + din_res_email + ", din_res_require=" + din_res_require
				+ ", din_res_status=" + din_res_status + ", din_seq=" + din_seq + ", din_title=" + din_title + "]";
	}
}
