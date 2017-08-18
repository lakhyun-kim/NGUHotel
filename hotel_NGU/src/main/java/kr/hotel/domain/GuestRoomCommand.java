package kr.hotel.domain;

public class GuestRoomCommand {

	private int res_num;
	private String gue_title;
	private String res_in;
	private String res_out;
	private int gue_auth;	/* 1이면 예약이 되어있는 상태, 0이면 예약 가능*/
	
	
	
	public int getRes_num() {
		return res_num;
	}
	public void setRes_num(int res_num) {
		this.res_num = res_num;
	}
	public String getGue_title() {
		return gue_title;
	}
	public void setGue_title(String gue_title) {
		this.gue_title = gue_title;
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
	public int getGue_auth() {
		return gue_auth;
	}
	public void setGue_auth(int gue_auth) {
		this.gue_auth = gue_auth;
	}
	
	@Override
	public String toString() {
		return "GuestRoomCommand [res_num=" + res_num + ", gue_title=" + gue_title 
				+ ", res_in=" + res_in + ", res_out=" + res_out + ", gue_auth=" + gue_auth + "]";
	}
	
	
	
	
	
}
















