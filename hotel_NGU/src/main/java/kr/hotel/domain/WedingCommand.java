package kr.hotel.domain;

import java.io.IOException;


import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class WedingCommand {
	private int wed_seq;
	
	private String wed_realtitle;
	@NotEmpty
	private String wed_title;
	private String wed_retitle;
	private String wed_topname;
	private String wed_midname;
	private String wed_lowname;
	private String wed_extraname;
	private MultipartFile topload;
	private MultipartFile midload;
	private MultipartFile lowload;
	private MultipartFile extraload;
	private byte[] wed_topload;
	private byte[] wed_midload;
	private byte[] wed_lowload;
	private byte[] wed_extraload;
	private int wed_divide;
	private String mem_id;
	
	private String wed_sliname1;
	private String wed_sliname2;
	private String wed_sliname3;
	private String wed_sliname4;
	private String wed_thname1;
	private String wed_thname2;
	private String wed_thname3;
	private String wed_thname4;
	private byte[] wed_sliload1;
	private byte[] wed_sliload2;
	private byte[] wed_sliload3;
	private byte[] wed_sliload4;
	private byte[] wed_thload1;
	private byte[] wed_thload2;
	private byte[] wed_thload3;
	private byte[] wed_thload4;
	private MultipartFile sliload1;
	private MultipartFile sliload2;
	private MultipartFile sliload3;
	private MultipartFile sliload4;
	private MultipartFile thload1;
	private MultipartFile thload2;
	private MultipartFile thload3;
	private MultipartFile thload4;
	
	
	
	public String getWed_realtitle() {
		return wed_realtitle;
	}
	public void setWed_realtitle(String wed_realtitle) {
		this.wed_realtitle = wed_realtitle;
	}
	public int getWed_seq() {
		return wed_seq;
	}
	public void setWed_seq(int wed_seq) {
		this.wed_seq = wed_seq;
	}
	public String getWed_title() {
		return wed_title;
	}
	public void setWed_title(String wed_title) {
		this.wed_title = wed_title;
	}
	public String getWed_retitle() {
		return wed_retitle;
	}
	public void setWed_retitle(String wed_retitle) {
		this.wed_retitle = wed_retitle;
	}
	public String getWed_topname() {
		return wed_topname;
	}
	public void setWed_topname(String wed_topname) {
		this.wed_topname = wed_topname;
	}
	public String getWed_midname() {
		return wed_midname;
	}
	public void setWed_midname(String wed_midname) {
		this.wed_midname = wed_midname;
	}
	public String getWed_lowname() {
		return wed_lowname;
	}
	public void setWed_lowname(String wed_lowname) {
		this.wed_lowname = wed_lowname;
	}
	public String getWed_extraname() {
		return wed_extraname;
	}
	public void setWed_extraname(String wed_extraname) {
		this.wed_extraname = wed_extraname;
	}
	public MultipartFile getTopload() {
		return topload;
	}
	public void setTopload(MultipartFile topload)throws IOException {
		this.topload = topload;
		
		setWed_topload(topload.getBytes());
		setWed_topname(topload.getOriginalFilename());
	}
	public MultipartFile getMidload() {
		return midload;
	}
	public void setMidload(MultipartFile midload)throws IOException {
		this.midload = midload;
		
		setWed_midload(midload.getBytes());
		setWed_midname(midload.getOriginalFilename());
	}
	public MultipartFile getLowload() {
		return lowload;
	}
	public void setLowload(MultipartFile lowload)throws IOException {
		this.lowload = lowload;
		
		setWed_lowload(lowload.getBytes());
		setWed_lowname(lowload.getOriginalFilename());
	}
	public MultipartFile getExtraload() {
		return extraload;
	}
	public void setExtraload(MultipartFile extraload)throws IOException {
		this.extraload = extraload;
		
		setWed_extraload(extraload.getBytes());
		setWed_extraname(extraload.getOriginalFilename());
	}
	public byte[] getWed_topload() {
		return wed_topload;
	}
	public void setWed_topload(byte[] wed_topload) {
		this.wed_topload = wed_topload;
	}
	public byte[] getWed_midload() {
		return wed_midload;
	}
	public void setWed_midload(byte[] wed_midload) {
		this.wed_midload = wed_midload;
	}
	public byte[] getWed_lowload() {
		return wed_lowload;
	}
	public void setWed_lowload(byte[] wed_lowload) {
		this.wed_lowload = wed_lowload;
	}
	public byte[] getWed_extraload() {
		return wed_extraload;
	}
	public void setWed_extraload(byte[] wed_extraload) {
		this.wed_extraload = wed_extraload;
	}
	public int getWed_divide() {
		return wed_divide;
	}
	public void setWed_divide(int wed_divide) {
		this.wed_divide = wed_divide;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
	
	
	
	
	public String getWed_sliname1() {
		return wed_sliname1;
	}
	public void setWed_sliname1(String wed_sliname1) {
		this.wed_sliname1 = wed_sliname1;
	}
	public String getWed_sliname2() {
		return wed_sliname2;
	}
	public void setWed_sliname2(String wed_sliname2) {
		this.wed_sliname2 = wed_sliname2;
	}
	public String getWed_sliname3() {
		return wed_sliname3;
	}
	public void setWed_sliname3(String wed_sliname3) {
		this.wed_sliname3 = wed_sliname3;
	}
	public String getWed_sliname4() {
		return wed_sliname4;
	}
	public void setWed_sliname4(String wed_sliname4) {
		this.wed_sliname4 = wed_sliname4;
	}
	public String getWed_thname1() {
		return wed_thname1;
	}
	public void setWed_thname1(String wed_thname1) {
		this.wed_thname1 = wed_thname1;
	}
	public String getWed_thname2() {
		return wed_thname2;
	}
	public void setWed_thname2(String wed_thname2) {
		this.wed_thname2 = wed_thname2;
	}
	public String getWed_thname3() {
		return wed_thname3;
	}
	public void setWed_thname3(String wed_thname3) {
		this.wed_thname3 = wed_thname3;
	}
	public String getWed_thname4() {
		return wed_thname4;
	}
	public void setWed_thname4(String wed_thname4) {
		this.wed_thname4 = wed_thname4;
	}
	public byte[] getWed_sliload1() {
		return wed_sliload1;
	}
	public void setWed_sliload1(byte[] wed_sliload1) {
		this.wed_sliload1 = wed_sliload1;
	}
	public byte[] getWed_sliload2() {
		return wed_sliload2;
	}
	public void setWed_sliload2(byte[] wed_sliload2) {
		this.wed_sliload2 = wed_sliload2;
	}
	public byte[] getWed_sliload3() {
		return wed_sliload3;
	}
	public void setWed_sliload3(byte[] wed_sliload3) {
		this.wed_sliload3 = wed_sliload3;
	}
	public byte[] getWed_sliload4() {
		return wed_sliload4;
	}
	public void setWed_sliload4(byte[] wed_sliload4) {
		this.wed_sliload4 = wed_sliload4;
	}
	public byte[] getWed_thload1() {
		return wed_thload1;
	}
	public void setWed_thload1(byte[] wed_thload1) {
		this.wed_thload1 = wed_thload1;
	}
	public byte[] getWed_thload2() {
		return wed_thload2;
	}
	public void setWed_thload2(byte[] wed_thload2) {
		this.wed_thload2 = wed_thload2;
	}
	public byte[] getWed_thload3() {
		return wed_thload3;
	}
	public void setWed_thload3(byte[] wed_thload3) {
		this.wed_thload3 = wed_thload3;
	}
	public byte[] getWed_thload4() {
		return wed_thload4;
	}
	public void setWed_thload4(byte[] wed_thload4) {
		this.wed_thload4 = wed_thload4;
	}
	public MultipartFile getSliload1() {
		return sliload1;
	}
	public void setSliload1(MultipartFile sliload1) throws IOException {
		this.sliload1 = sliload1;
		
		setWed_sliload1(sliload1.getBytes());
		setWed_sliname1(sliload1.getOriginalFilename());
	}
	public MultipartFile getSliload2() {
		return sliload2;
	}
	public void setSliload2(MultipartFile sliload2) throws IOException{
		this.sliload2 = sliload2;
		
		setWed_sliload2(sliload2.getBytes());
		setWed_sliname2(sliload2.getOriginalFilename());
	}
	public MultipartFile getSliload3() {
		return sliload3;
	}
	public void setSliload3(MultipartFile sliload3) throws IOException{
		this.sliload3 = sliload3;
		
		setWed_sliload3(sliload3.getBytes());
		setWed_sliname3(sliload3.getOriginalFilename());
	}
	public MultipartFile getSliload4() {
		return sliload4;
	}
	public void setSliload4(MultipartFile sliload4) throws IOException{
		this.sliload4 = sliload4;
		
		setWed_sliload4(sliload4.getBytes());
		setWed_sliname4(sliload4.getOriginalFilename());
	}
	public MultipartFile getThload1() {
		return thload1;
	}
	public void setThload1(MultipartFile thload1) throws IOException{
		this.thload1 = thload1;
		
		setWed_thload1(thload1.getBytes());
		setWed_thname1(thload1.getOriginalFilename());
	}
	public MultipartFile getThload2() {
		return thload2;
	}
	public void setThload2(MultipartFile thload2) throws IOException{
		this.thload2 = thload2;
		
		setWed_thload2(thload2.getBytes());
		setWed_thname2(thload2.getOriginalFilename());
	}
	public MultipartFile getThload3() {
		return thload3;
	}
	public void setThload3(MultipartFile thload3) throws IOException{
		this.thload3 = thload3;
		
		setWed_thload3(thload3.getBytes());
		setWed_thname3(thload3.getOriginalFilename());
	}
	public MultipartFile getThload4() {
		return thload4;
	}
	public void setThload4(MultipartFile thload4) throws IOException{
		this.thload4 = thload4;
		
		setWed_thload4(thload4.getBytes());
		setWed_thname4(thload4.getOriginalFilename());
	}
	@Override
	public String toString() {
		return "WedingCommand [wed_seq=" + wed_seq + ", wed_realtitle=" + wed_realtitle + ", wed_title=" + wed_title
				+ ", wed_retitle=" + wed_retitle + ", wed_topname=" + wed_topname + ", wed_midname=" + wed_midname
				+ ", wed_lowname=" + wed_lowname + ", wed_extraname=" + wed_extraname + ", topload=" + topload
				+ ", midload=" + midload + ", lowload=" + lowload + ", extraload=" + extraload + ", wed_divide="
				+ wed_divide + ", mem_id=" + mem_id + ", wed_sliname1=" + wed_sliname1 + ", wed_sliname2="
				+ wed_sliname2 + ", wed_sliname3=" + wed_sliname3 + ", wed_sliname4=" + wed_sliname4 + ", wed_thname1="
				+ wed_thname1 + ", wed_thname2=" + wed_thname2 + ", wed_thname3=" + wed_thname3 + ", wed_thname4="
				+ wed_thname4 + ", sliload1=" + sliload1 + ", sliload2=" + sliload2 + ", sliload3=" + sliload3
				+ ", sliload4=" + sliload4 + ", thload1=" + thload1 + ", thload2=" + thload2 + ", thload3=" + thload3
				+ ", thload4=" + thload4 + "]";
	}
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
}
