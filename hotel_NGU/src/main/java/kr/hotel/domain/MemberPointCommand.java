package kr.hotel.domain;

import java.sql.Date;

public class MemberPointCommand {

	private int mem_poi_num;
	private String mem_poi_usesave;
	private String mem_poi_history;
	private int mem_poi_price;
	private int mem_poi_usepoint;
	private int mem_poi_savepoint;
	private Date mem_poi_regdate;
	private String mem_id;
	
	public int getMem_poi_num() {
		return mem_poi_num;
	}
	public void setMem_poi_num(int mem_poi_num) {
		this.mem_poi_num = mem_poi_num;
	}
	public String getMem_poi_usesave() {
		return mem_poi_usesave;
	}
	public void setMem_poi_usesave(String mem_poi_usesave) {
		this.mem_poi_usesave = mem_poi_usesave;
	}
	public String getMem_poi_history() {
		return mem_poi_history;
	}
	public void setMem_poi_history(String mem_poi_history) {
		this.mem_poi_history = mem_poi_history;
	}
	public int getMem_poi_price() {
		return mem_poi_price;
	}
	public void setMem_poi_price(int mem_poi_price) {
		this.mem_poi_price = mem_poi_price;
	}
	public int getMem_poi_usepoint() {
		return mem_poi_usepoint;
	}
	public void setMem_poi_usepoint(int mem_poi_usepoint) {
		this.mem_poi_usepoint = mem_poi_usepoint;
	}
	public int getMem_poi_savepoint() {
		return mem_poi_savepoint;
	}
	public void setMem_poi_savepoint(int mem_poi_savepoint) {
		this.mem_poi_savepoint = mem_poi_savepoint;
	}
	public Date getMem_poi_regdate() {
		return mem_poi_regdate;
	}
	public void setMem_poi_regdate(Date mem_poi_regdate) {
		this.mem_poi_regdate = mem_poi_regdate;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	@Override
	public String toString() {
		return "MemberPointCommand [mem_poi_num=" + mem_poi_num + ", mem_poi_usesave=" + mem_poi_usesave
				+ ", mem_poi_history=" + mem_poi_history + ", mem_poi_price=" + mem_poi_price + ", mem_poi_usepoint="
				+ mem_poi_usepoint + ", mem_poi_savepoint=" + mem_poi_savepoint + ", mem_poi_regdate=" + mem_poi_regdate
				+ ", mem_id=" + mem_id + "]";
	}
}
