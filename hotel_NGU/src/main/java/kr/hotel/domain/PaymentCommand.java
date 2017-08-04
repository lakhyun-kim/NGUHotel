package kr.hotel.domain;

public class PaymentCommand {

	private String pay_num;
	private String mem_id;
	private String pay_cardtype;
	private String pay_cardnum;
	private String pay_p_cell;
	private String pay_h_cell;
	private String pay_lastname;
	private String pay_firstname;
	private String pay_email;
	private String pay_card_mon;
	private String pay_card_year;
	private int res_num;
	private int res_cancel;
	
	
	public String getPay_num() {
		return pay_num;
	}
	public void setPay_num(String pay_num) {
		this.pay_num = pay_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getPay_cardtype() {
		return pay_cardtype;
	}
	public void setPay_cardtype(String pay_cardtype) {
		this.pay_cardtype = pay_cardtype;
	}
	public String getPay_cardnum() {
		return pay_cardnum;
	}
	public void setPay_cardnum(String pay_cardnum) {
		this.pay_cardnum = pay_cardnum;
	}
	public String getPay_p_cell() {
		return pay_p_cell;
	}
	public void setPay_p_cell(String pay_p_cell) {
		this.pay_p_cell = pay_p_cell;
	}
	public String getPay_h_cell() {
		return pay_h_cell;
	}
	public void setPay_h_cell(String pay_h_cell) {
		this.pay_h_cell = pay_h_cell;
	}
	public String getPay_lastname() {
		return pay_lastname;
	}
	public void setPay_lastname(String pay_lastname) {
		this.pay_lastname = pay_lastname;
	}
	public String getPay_firstname() {
		return pay_firstname;
	}
	public void setPay_firstname(String pay_firstname) {
		this.pay_firstname = pay_firstname;
	}
	public String getPay_email() {
		return pay_email;
	}
	public void setPay_email(String pay_email) {
		this.pay_email = pay_email;
	}
	public String getPay_card_mon() {
		return pay_card_mon;
	}
	public void setPay_card_mon(String pay_card_mon) {
		this.pay_card_mon = pay_card_mon;
	}
	public String getPay_card_year() {
		return pay_card_year;
	}
	public void setPay_card_year(String pay_card_year) {
		this.pay_card_year = pay_card_year;
	}
	public int getRes_num() {
		return res_num;
	}
	public void setRes_num(int res_num) {
		this.res_num = res_num;
	}
	public int getRes_cancel() {
		return res_cancel;
	}
	public void setRes_cancel(int res_cancel) {
		this.res_cancel = res_cancel;
	}
	@Override
	public String toString() {
		return "PaymentCommand [pay_num=" + pay_num + ", mem_id=" + mem_id + ", pay_cardtype=" + pay_cardtype
				+ ", pay_cardnum=" + pay_cardnum + ", pay_p_cell=" + pay_p_cell + ", pay_h_cell=" + pay_h_cell
				+ ", pay_lastname=" + pay_lastname + ", pay_firstname=" + pay_firstname + ", pay_email=" + pay_email
				+ ", pay_card_mon=" + pay_card_mon + ", pay_card_year=" + pay_card_year + ", res_num=" + res_num
				+ ", res_cancel=" + res_cancel + "]";
	}
	
	

}
