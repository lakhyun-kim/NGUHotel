package kr.hotel.domain;

import org.hibernate.validator.constraints.NotEmpty;

public class ReservationCommand {
	
	
	private int res_num;
	
	private int gue_num;
	
	@NotEmpty
	private String res_in;
	@NotEmpty
	private String res_out;
	
	private int res_adult;
	
	private int res_child;
	
	private int res_baby;
	
	@NotEmpty
	private String res_bed_type;
	
	private String res_option_1;
	
	private String res_option_2;
	
	private int res_total;
	
	@NotEmpty
	private String mem_id;
	
	private int res_status;

	private String gue_title;

	private int res_point;
	
	public int getRes_point() {
		return res_point;
	}

	public void setRes_point(int res_point) {
		this.res_point = res_point;
	}

	public String getGue_title() {
		return gue_title;
	}

	public void setGue_title(String gue_title) {
		this.gue_title = gue_title;
	}

	public int getRes_num() {
		return res_num;
	}

	public void setRes_num(int res_num) {
		this.res_num = res_num;
	}

	public int getGue_num() {
		return gue_num;
	}

	public void setGue_num(int gue_num) {
		this.gue_num = gue_num;
	}

	public String getRes_in() {
		return res_in;
	}

	public void setRes_in(String res_in) {
		this.res_in = res_in;
	}

	public String getRes_out() {
		return res_out;
	}

	public void setRes_out(String res_out) {
		this.res_out = res_out;
	}

	public int getRes_adult() {
		return res_adult;
	}

	public void setRes_adult(int res_adult) {
		this.res_adult = res_adult;
	}

	public int getRes_child() {
		return res_child;
	}

	public void setRes_child(int res_child) {
		this.res_child = res_child;
	}

	public int getRes_baby() {
		return res_baby;
	}

	public void setRes_baby(int res_baby) {
		this.res_baby = res_baby;
	}

	public String getRes_bed_type() {
		return res_bed_type;
	}

	public void setRes_bed_type(String res_bed_type) {
		this.res_bed_type = res_bed_type;
	}

	public String getRes_option_1() {
		return res_option_1;
	}

	public void setRes_option_1(String res_option_1) {
		this.res_option_1 = res_option_1;
	}
	
	public String getRes_option_2() {
		return res_option_2;
	}

	public void setRes_option_2(String res_option_2) {
		this.res_option_2 = res_option_2;
	}
	
	public int getRes_total() {
		return res_total;
	}

	public void setRes_total(int res_total) {
		this.res_total = res_total;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public int getRes_status() {
		return res_status;
	}

	public void setRes_status(int res_status) {
		this.res_status = res_status;
	}

	@Override
	public String toString() {
		return "ReservationCommand [res_num=" + res_num + ", gue_num=" + gue_num + ", res_in=" + res_in + ", res_out="
				+ res_out + ", res_adult=" + res_adult + ", res_child=" + res_child + ", res_baby=" + res_baby
				+ ", res_bed_type=" + res_bed_type + ", res_option_1=" + res_option_1 + ", res_option_2=" + res_option_2
				+ ", res_total=" + res_total + ", mem_id=" + mem_id + ", res_status=" + res_status + "]";	
	}
}
	
