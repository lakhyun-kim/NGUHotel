package kr.hotel.domain;

import java.sql.Date;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class MemberCommand {
	@NotEmpty
	private String mem_id;
	private int auth;

	private int mem_num;
	@Size(min=4,max=10)
	private String mem_pw;
	private String mem_lastname;
	private String mem_firstname;
	private String mem_birth;
	private String mem_email;
	private String mem_p_cell;
	private String mem_h_cell;
	private String mem_zipcode;
	private String mem_addr1;
	private String mem_addr2;
	private Date reg_date;
	private int mem_point;
	private int mem_lev_num;
	private String mem_lev_name;

	// 비밀번호 일치 여부 체크
	// auth가 0이면 탈퇴회원이므로 로그인, 탈퇴가 불가능
	public boolean isCheckedPasswd(String userPasswd){
		if(auth > 0 && mem_pw.equals(userPasswd)){
			return true;
		}
		return false;
	}

	public String getMem_lev_name() {
		return mem_lev_name;
	}
	public void setMem_lev_name(String mem_lev_name) {
		this.mem_lev_name = mem_lev_name;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getAuth() {
		return auth;
	}
	public void setAuth(int auth) {
		this.auth = auth;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_lastname() {
		return mem_lastname;
	}
	public void setMem_lastname(String mem_lastname) {
		this.mem_lastname = mem_lastname;
	}
	public String getMem_firstname() {
		return mem_firstname;
	}
	public void setMem_firstname(String mem_firstname) {
		this.mem_firstname = mem_firstname;
	}
	public String getMem_birth() {
		return mem_birth;
	}
	public void setMem_birth(String mem_birth) {
		this.mem_birth = mem_birth;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_p_cell() {
		return mem_p_cell;
	}
	public void setMem_p_cell(String mem_p_cell) {
		this.mem_p_cell = mem_p_cell;
	}
	public String getMem_h_cell() {
		return mem_h_cell;
	}
	public void setMem_h_cell(String mem_h_cell) {
		this.mem_h_cell = mem_h_cell;
	}
	public String getMem_zipcode() {
		return mem_zipcode;
	}
	public void setMem_zipcode(String mem_zipcode) {
		this.mem_zipcode = mem_zipcode;
	}
	public String getMem_addr1() {
		return mem_addr1;
	}
	public void setMem_addr1(String mem_addr1) {
		this.mem_addr1 = mem_addr1;
	}
	public String getMem_addr2() {
		return mem_addr2;
	}
	public void setMem_addr2(String mem_addr2) {
		this.mem_addr2 = mem_addr2;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public int getMem_point() {
		return mem_point;
	}
	public void setMem_point(int mem_point) {
		this.mem_point = mem_point;
	}
	public int getMem_lev_num() {
		return mem_lev_num;
	}
	public void setMem_lev_num(int mem_lev_num) {
		this.mem_lev_num = mem_lev_num;
	}
	@Override
	public String toString() {
		return "MemberCommand [mem_id=" + mem_id + ", auth=" + auth + ", mem_num=" + mem_num + ", mem_pw=" + mem_pw
				+ ", mem_lastname=" + mem_lastname + ", mem_firstname=" + mem_firstname + ", mem_birth=" + mem_birth
				+ ", mem_email=" + mem_email + ", mem_p_cell=" + mem_p_cell + ", mem_h_cell=" + mem_h_cell
				+ ", mem_zipcode=" + mem_zipcode + ", mem_addr1=" + mem_addr1 + ", mem_addr2=" + mem_addr2
				+ ", reg_date=" + reg_date + ", mem_point=" + mem_point + ", mem_lev_num=" + mem_lev_num + "]";
	}
	
}
