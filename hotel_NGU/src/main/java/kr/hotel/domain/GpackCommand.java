package kr.hotel.domain;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class GpackCommand {
	
	private String mem_id;
	private int auth;	
	private int gpa_seq;
	private int norr;
	private String gpa_title;
	private String gpa_term;
	private String gpa_money;
	private String cnt1;
	private String cnt2;
	private String cnt3;
	private String gpa_filename;
	private String gpa_dmname;
	private String gpa_dpname;
	private String gpa_rtname;
	private byte[] gpa_upfile;
	private byte[] gpa_demain;
	private byte[] gpa_depro;
	private byte[] gpa_reterm;
	private MultipartFile gpa_upload;
	private MultipartFile gpa_dmload;
	private MultipartFile gpa_dpload;
	private MultipartFile gpa_rtload;
	
	public void setGpa_upload(MultipartFile gpa_upload) throws IOException{
		this.gpa_upload = gpa_upload;
		
		setGpa_upfile(gpa_upload.getBytes());
		setGpa_filename(gpa_upload.getOriginalFilename());
	}
	public void setGpa_dmload(MultipartFile gpa_dmload) throws IOException{
		this.gpa_dmload = gpa_dmload;
		
		setGpa_demain(gpa_dmload.getBytes());
		setGpa_dmname(gpa_dmload.getOriginalFilename());
	}
	public void setGpa_dpload(MultipartFile gpa_dpload) throws IOException{
		this.gpa_dpload = gpa_dpload;
		
		setGpa_depro(gpa_dpload.getBytes());
		setGpa_dpname(gpa_dpload.getOriginalFilename());
	}
	public void setGpa_rtload(MultipartFile gpa_rtload) throws IOException{
		this.gpa_rtload = gpa_rtload;
		
		setGpa_reterm(gpa_rtload.getBytes());
		setGpa_rtname(gpa_rtload.getOriginalFilename());
	}
	public int getNorr() {
		return norr;
	}
	public void setNorr(int norr) {
		this.norr = norr;
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
	public int getGpa_seq() {
		return gpa_seq;
	}
	public void setGpa_seq(int gpa_seq) {
		this.gpa_seq = gpa_seq;
	}
	public String getGpa_filename() {
		return gpa_filename;
	}
	public void setGpa_filename(String gpa_filename) {
		this.gpa_filename = gpa_filename;
	}
	public String getGpa_dmname() {
		return gpa_dmname;
	}
	public void setGpa_dmname(String gpa_dmname) {
		this.gpa_dmname = gpa_dmname;
	}
	public String getGpa_dpname() {
		return gpa_dpname;
	}
	public void setGpa_dpname(String gpa_dpname) {
		this.gpa_dpname = gpa_dpname;
	}
	public String getGpa_rtname() {
		return gpa_rtname;
	}
	public void setGpa_rtname(String gpa_rtname) {
		this.gpa_rtname = gpa_rtname;
	}
	public byte[] getGpa_upfile() {
		return gpa_upfile;
	}
	public void setGpa_upfile(byte[] gpa_upfile) {
		this.gpa_upfile = gpa_upfile;
	}
	public byte[] getGpa_demain() {
		return gpa_demain;
	}
	public void setGpa_demain(byte[] gpa_demain) {
		this.gpa_demain = gpa_demain;
	}
	public byte[] getGpa_depro() {
		return gpa_depro;
	}
	public void setGpa_depro(byte[] gpa_depro) {
		this.gpa_depro = gpa_depro;
	}
	public byte[] getGpa_reterm() {
		return gpa_reterm;
	}
	public void setGpa_reterm(byte[] gpa_reterm) {
		this.gpa_reterm = gpa_reterm;
	}
	public MultipartFile getGpa_upload() {
		return gpa_upload;
	}
	public MultipartFile getGpa_dmload() {
		return gpa_dmload;
	}
	public MultipartFile getGpa_dpload() {
		return gpa_dpload;
	}
	public MultipartFile getGpa_rtload() {
		return gpa_rtload;
	}
	public String getGpa_title() {
		return gpa_title;
	}
	public void setGpa_title(String gpa_title) {
		this.gpa_title = gpa_title;
	}
	public String getGpa_term() {
		return gpa_term;
	}
	public void setGpa_term(String gpa_term) {
		this.gpa_term = gpa_term;
	}
	public String getGpa_money() {
		return gpa_money;
	}
	public void setGpa_money(String gpa_money) {
		this.gpa_money = gpa_money;
	}
	public String getCnt1() {
		return cnt1;
	}
	public void setCnt1(String cnt1) {
		this.cnt1 = cnt1;
	}
	public String getCnt2() {
		return cnt2;
	}
	public void setCnt2(String cnt2) {
		this.cnt2 = cnt2;
	}
	public String getCnt3() {
		return cnt3;
	}
	public void setCnt3(String cnt3) {
		this.cnt3 = cnt3;
	}
	@Override
	public String toString() {
		return "GpackCommand [mem_id=" + mem_id + ", norr=" + norr + ", auth=" + auth + ", gpa_seq=" + gpa_seq + ", gpa_title=" + gpa_title
				+ ", gpa_term=" + gpa_term + ", gpa_money=" + gpa_money + ", cnt1=" + cnt1 + ", cnt2=" + cnt2
				+ ", cnt3=" + cnt3 + ", gpa_filename=" + gpa_filename + ", gpa_dmname=" + gpa_dmname + ", gpa_dpname="
				+ gpa_dpname + ", gpa_rtname=" + gpa_rtname + ", gpa_upload=" + gpa_upload + ", gpa_dmload="
				+ gpa_dmload + ", gpa_dpload=" + gpa_dpload + ", gpa_rtload=" + gpa_rtload + "]";
	}
	
}




