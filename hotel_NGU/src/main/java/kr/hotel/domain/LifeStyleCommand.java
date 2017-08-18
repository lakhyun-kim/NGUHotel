package kr.hotel.domain;

import java.io.IOException;


import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class LifeStyleCommand {
	private int lif_seq;
	
	private String lif_realtitle;
	@NotEmpty
	private String lif_title;
	private String lif_retitle;
	private String lif_topname;
	private String lif_midname;
	private String lif_lowname;
	private String lif_extraname;
	private MultipartFile topload;
	private MultipartFile midload;
	private MultipartFile lowload;
	private MultipartFile extraload;
	private byte[] lif_topload;
	private byte[] lif_midload;
	private byte[] lif_lowload;
	private byte[] lif_extraload;
	private int lif_divide;
	private String mem_id;
	
	private String lif_sliname1;
	private String lif_sliname2;
	private String lif_sliname3;
	private String lif_sliname4;
	private String lif_thname1;
	private String lif_thname2;
	private String lif_thname3;
	private String lif_thname4;
	private byte[] lif_sliload1;
	private byte[] lif_sliload2;
	private byte[] lif_sliload3;
	private byte[] lif_sliload4;
	private byte[] lif_thload1;
	private byte[] lif_thload2;
	private byte[] lif_thload3;
	private byte[] lif_thload4;
	private MultipartFile sliload1;
	private MultipartFile sliload2;
	private MultipartFile sliload3;
	private MultipartFile sliload4;
	private MultipartFile thload1;
	private MultipartFile thload2;
	private MultipartFile thload3;
	private MultipartFile thload4;
	
	
	
	public String getLif_realtitle() {
		return lif_realtitle;
	}
	public void setLif_realtitle(String lif_realtitle) {
		this.lif_realtitle = lif_realtitle;
	}
	public int getLif_seq() {
		return lif_seq;
	}
	public void setLif_seq(int lif_seq) {
		this.lif_seq = lif_seq;
	}
	public String getLif_title() {
		return lif_title;
	}
	public void setLif_title(String lif_title) {
		this.lif_title = lif_title;
	}
	public String getLif_retitle() {
		return lif_retitle;
	}
	public void setLif_retitle(String lif_retitle) {
		this.lif_retitle = lif_retitle;
	}
	public String getLif_topname() {
		return lif_topname;
	}
	public void setLif_topname(String lif_topname) {
		this.lif_topname = lif_topname;
	}
	public String getLif_midname() {
		return lif_midname;
	}
	public void setLif_midname(String lif_midname) {
		this.lif_midname = lif_midname;
	}
	public String getLif_lowname() {
		return lif_lowname;
	}
	public void setLif_lowname(String lif_lowname) {
		this.lif_lowname = lif_lowname;
	}
	public String getLif_extraname() {
		return lif_extraname;
	}
	public void setLif_extraname(String lif_extraname) {
		this.lif_extraname = lif_extraname;
	}
	public MultipartFile getTopload() {
		return topload;
	}
	public void setTopload(MultipartFile topload)throws IOException {
		this.topload = topload;
		
		setLif_topload(topload.getBytes());
		setLif_topname(topload.getOriginalFilename());
	}
	public MultipartFile getMidload() {
		return midload;
	}
	public void setMidload(MultipartFile midload)throws IOException {
		this.midload = midload;
		
		setLif_midload(midload.getBytes());
		setLif_midname(midload.getOriginalFilename());
	}
	public MultipartFile getLowload() {
		return lowload;
	}
	public void setLowload(MultipartFile lowload)throws IOException {
		this.lowload = lowload;
		
		setLif_lowload(lowload.getBytes());
		setLif_lowname(lowload.getOriginalFilename());
	}
	public MultipartFile getExtraload() {
		return extraload;
	}
	public void setExtraload(MultipartFile extraload)throws IOException {
		this.extraload = extraload;
		
		setLif_extraload(extraload.getBytes());
		setLif_extraname(extraload.getOriginalFilename());
	}
	public byte[] getLif_topload() {
		return lif_topload;
	}
	public void setLif_topload(byte[] lif_topload) {
		this.lif_topload = lif_topload;
	}
	public byte[] getLif_midload() {
		return lif_midload;
	}
	public void setLif_midload(byte[] lif_midload) {
		this.lif_midload = lif_midload;
	}
	public byte[] getLif_lowload() {
		return lif_lowload;
	}
	public void setLif_lowload(byte[] lif_lowload) {
		this.lif_lowload = lif_lowload;
	}
	public byte[] getLif_extraload() {
		return lif_extraload;
	}
	public void setLif_extraload(byte[] lif_extraload) {
		this.lif_extraload = lif_extraload;
	}
	public int getLif_divide() {
		return lif_divide;
	}
	public void setLif_divide(int lif_divide) {
		this.lif_divide = lif_divide;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
	
	
	
	
	public String getLif_sliname1() {
		return lif_sliname1;
	}
	public void setLif_sliname1(String lif_sliname1) {
		this.lif_sliname1 = lif_sliname1;
	}
	public String getLif_sliname2() {
		return lif_sliname2;
	}
	public void setLif_sliname2(String lif_sliname2) {
		this.lif_sliname2 = lif_sliname2;
	}
	public String getLif_sliname3() {
		return lif_sliname3;
	}
	public void setLif_sliname3(String lif_sliname3) {
		this.lif_sliname3 = lif_sliname3;
	}
	public String getLif_sliname4() {
		return lif_sliname4;
	}
	public void setLif_sliname4(String lif_sliname4) {
		this.lif_sliname4 = lif_sliname4;
	}
	public String getLif_thname1() {
		return lif_thname1;
	}
	public void setLif_thname1(String lif_thname1) {
		this.lif_thname1 = lif_thname1;
	}
	public String getLif_thname2() {
		return lif_thname2;
	}
	public void setLif_thname2(String lif_thname2) {
		this.lif_thname2 = lif_thname2;
	}
	public String getLif_thname3() {
		return lif_thname3;
	}
	public void setLif_thname3(String lif_thname3) {
		this.lif_thname3 = lif_thname3;
	}
	public String getLif_thname4() {
		return lif_thname4;
	}
	public void setLif_thname4(String lif_thname4) {
		this.lif_thname4 = lif_thname4;
	}
	public byte[] getLif_sliload1() {
		return lif_sliload1;
	}
	public void setLif_sliload1(byte[] lif_sliload1) {
		this.lif_sliload1 = lif_sliload1;
	}
	public byte[] getLif_sliload2() {
		return lif_sliload2;
	}
	public void setLif_sliload2(byte[] lif_sliload2) {
		this.lif_sliload2 = lif_sliload2;
	}
	public byte[] getLif_sliload3() {
		return lif_sliload3;
	}
	public void setLif_sliload3(byte[] lif_sliload3) {
		this.lif_sliload3 = lif_sliload3;
	}
	public byte[] getLif_sliload4() {
		return lif_sliload4;
	}
	public void setLif_sliload4(byte[] lif_sliload4) {
		this.lif_sliload4 = lif_sliload4;
	}
	public byte[] getLif_thload1() {
		return lif_thload1;
	}
	public void setLif_thload1(byte[] lif_thload1) {
		this.lif_thload1 = lif_thload1;
	}
	public byte[] getLif_thload2() {
		return lif_thload2;
	}
	public void setLif_thload2(byte[] lif_thload2) {
		this.lif_thload2 = lif_thload2;
	}
	public byte[] getLif_thload3() {
		return lif_thload3;
	}
	public void setLif_thload3(byte[] lif_thload3) {
		this.lif_thload3 = lif_thload3;
	}
	public byte[] getLif_thload4() {
		return lif_thload4;
	}
	public void setLif_thload4(byte[] lif_thload4) {
		this.lif_thload4 = lif_thload4;
	}
	public MultipartFile getSliload1() {
		return sliload1;
	}
	public void setSliload1(MultipartFile sliload1) throws IOException {
		this.sliload1 = sliload1;
		
		setLif_sliload1(sliload1.getBytes());
		setLif_sliname1(sliload1.getOriginalFilename());
	}
	public MultipartFile getSliload2() {
		return sliload2;
	}
	public void setSliload2(MultipartFile sliload2) throws IOException{
		this.sliload2 = sliload2;
		
		setLif_sliload2(sliload2.getBytes());
		setLif_sliname2(sliload2.getOriginalFilename());
	}
	public MultipartFile getSliload3() {
		return sliload3;
	}
	public void setSliload3(MultipartFile sliload3) throws IOException{
		this.sliload3 = sliload3;
		
		setLif_sliload3(sliload3.getBytes());
		setLif_sliname3(sliload3.getOriginalFilename());
	}
	public MultipartFile getSliload4() {
		return sliload4;
	}
	public void setSliload4(MultipartFile sliload4) throws IOException{
		this.sliload4 = sliload4;
		
		setLif_sliload4(sliload4.getBytes());
		setLif_sliname4(sliload4.getOriginalFilename());
	}
	public MultipartFile getThload1() {
		return thload1;
	}
	public void setThload1(MultipartFile thload1) throws IOException{
		this.thload1 = thload1;
		
		setLif_thload1(thload1.getBytes());
		setLif_thname1(thload1.getOriginalFilename());
	}
	public MultipartFile getThload2() {
		return thload2;
	}
	public void setThload2(MultipartFile thload2) throws IOException{
		this.thload2 = thload2;
		
		setLif_thload2(thload2.getBytes());
		setLif_thname2(thload2.getOriginalFilename());
	}
	public MultipartFile getThload3() {
		return thload3;
	}
	public void setThload3(MultipartFile thload3) throws IOException{
		this.thload3 = thload3;
		
		setLif_thload3(thload3.getBytes());
		setLif_thname3(thload3.getOriginalFilename());
	}
	public MultipartFile getThload4() {
		return thload4;
	}
	public void setThload4(MultipartFile thload4) throws IOException{
		this.thload4 = thload4;
		
		setLif_thload4(thload4.getBytes());
		setLif_thname4(thload4.getOriginalFilename());
	}
	@Override
	public String toString() {
		return "LifeStyleCommand [lif_seq=" + lif_seq + ", lif_realtitle=" + lif_realtitle + ", lif_title=" + lif_title
				+ ", lif_retitle=" + lif_retitle + ", lif_topname=" + lif_topname + ", lif_midname=" + lif_midname
				+ ", lif_lowname=" + lif_lowname + ", lif_extraname=" + lif_extraname + ", topload=" + topload
				+ ", midload=" + midload + ", lowload=" + lowload + ", extraload=" + extraload + ", lif_divide="
				+ lif_divide + ", mem_id=" + mem_id + ", lif_sliname1=" + lif_sliname1 + ", lif_sliname2="
				+ lif_sliname2 + ", lif_sliname3=" + lif_sliname3 + ", lif_sliname4=" + lif_sliname4 + ", lif_thname1="
				+ lif_thname1 + ", lif_thname2=" + lif_thname2 + ", lif_thname3=" + lif_thname3 + ", lif_thname4="
				+ lif_thname4 + ", sliload1=" + sliload1 + ", sliload2=" + sliload2 + ", sliload3=" + sliload3
				+ ", sliload4=" + sliload4 + ", thload1=" + thload1 + ", thload2=" + thload2 + ", thload3=" + thload3
				+ ", thload4=" + thload4 + "]";
	}
	
	
	
	
	
	
	

	
	
	
	
	
	
	
}
