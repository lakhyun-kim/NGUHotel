package kr.hotel.domain;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class GalleryCommand {
	
	private int h_gallery_seq;
	private String h_gallery_type;
	
	private String h_gallery_filename1;
	private String h_gallery_filename2;
	private String h_gallery_filename3;
	private String h_gallery_filename4;
	private String h_gallery_filename5;
	private String h_gallery_filename6;
	private String h_gallery_filename7;
	private String h_gallery_filename8;
	private String h_gallery_filename9;
	private String h_gallery_filename10;
	private String h_gallery_filename11;
	private String h_gallery_filename12;
	
	private MultipartFile upload1;
	private MultipartFile upload2;
	private MultipartFile upload3;
	private MultipartFile upload4;
	private MultipartFile upload5;
	private MultipartFile upload6;
	private MultipartFile upload7;
	private MultipartFile upload8;
	private MultipartFile upload9;
	private MultipartFile upload10;
	private MultipartFile upload11;
	private MultipartFile upload12;
	
	private byte[] h_gallery_upload1;
	private byte[] h_gallery_upload2;
	private byte[] h_gallery_upload3;
	private byte[] h_gallery_upload4;
	private byte[] h_gallery_upload5;
	private byte[] h_gallery_upload6;
	private byte[] h_gallery_upload7;
	private byte[] h_gallery_upload8;
	private byte[] h_gallery_upload9;
	private byte[] h_gallery_upload10;
	private byte[] h_gallery_upload11;
	private byte[] h_gallery_upload12;
	
	
	private String h_gallery_subject;
	private String h_gallery_content;
	private String mem_id;
	
	public int getH_gallery_seq() {
		return h_gallery_seq;
	}
	public void setH_gallery_seq(int h_gallery_seq) {
		this.h_gallery_seq = h_gallery_seq;
	}
	public String getH_gallery_type() {
		return h_gallery_type;
	}
	public void setH_gallery_type(String h_gallery_type) {
		this.h_gallery_type = h_gallery_type;
	}
	public String getH_gallery_filename1() {
		return h_gallery_filename1;
	}
	public void setH_gallery_filename1(String h_gallery_filename1) {
		this.h_gallery_filename1 = h_gallery_filename1;
	}
	public String getH_gallery_filename2() {
		return h_gallery_filename2;
	}
	public void setH_gallery_filename2(String h_gallery_filename2) {
		this.h_gallery_filename2 = h_gallery_filename2;
	}
	public String getH_gallery_filename3() {
		return h_gallery_filename3;
	}
	public void setH_gallery_filename3(String h_gallery_filename3) {
		this.h_gallery_filename3 = h_gallery_filename3;
	}
	public String getH_gallery_filename4() {
		return h_gallery_filename4;
	}
	public void setH_gallery_filename4(String h_gallery_filename4) {
		this.h_gallery_filename4 = h_gallery_filename4;
	}
	public String getH_gallery_filename5() {
		return h_gallery_filename5;
	}
	public void setH_gallery_filename5(String h_gallery_filename5) {
		this.h_gallery_filename5 = h_gallery_filename5;
	}
	public String getH_gallery_filename6() {
		return h_gallery_filename6;
	}
	public void setH_gallery_filename6(String h_gallery_filename6) {
		this.h_gallery_filename6 = h_gallery_filename6;
	}
	public String getH_gallery_filename7() {
		return h_gallery_filename7;
	}
	public void setH_gallery_filename7(String h_gallery_filename7) {
		this.h_gallery_filename7 = h_gallery_filename7;
	}
	public String getH_gallery_filename8() {
		return h_gallery_filename8;
	}
	public void setH_gallery_filename8(String h_gallery_filename8) {
		this.h_gallery_filename8 = h_gallery_filename8;
	}
	public String getH_gallery_filename9() {
		return h_gallery_filename9;
	}
	public void setH_gallery_filename9(String h_gallery_filename9) {
		this.h_gallery_filename9 = h_gallery_filename9;
	}
	public String getH_gallery_filename10() {
		return h_gallery_filename10;
	}
	public void setH_gallery_filename10(String h_gallery_filename10) {
		this.h_gallery_filename10 = h_gallery_filename10;
	}
	public String getH_gallery_filename11() {
		return h_gallery_filename11;
	}
	public void setH_gallery_filename11(String h_gallery_filename11) {
		this.h_gallery_filename11 = h_gallery_filename11;
	}
	public String getH_gallery_filename12() {
		return h_gallery_filename12;
	}
	public void setH_gallery_filename12(String h_gallery_filename12) {
		this.h_gallery_filename12 = h_gallery_filename12;
	}
	public MultipartFile getUpload1() {
		return upload1;
	}
	public void setUpload1(MultipartFile upload1) throws IOException{
		this.upload1 = upload1;
		
		setH_gallery_upload1(upload1.getBytes());
		setH_gallery_filename1(upload1.getOriginalFilename());
	}
	public MultipartFile getUpload2() {
		return upload2;
	}
	public void setUpload2(MultipartFile upload2) throws IOException{
		this.upload2 = upload2;
		
		setH_gallery_upload2(upload2.getBytes());
		setH_gallery_filename2(upload2.getOriginalFilename());
	}
	public MultipartFile getUpload3() {
		return upload3;
	}
	public void setUpload3(MultipartFile upload3) throws IOException{
		this.upload3 = upload3;
		
		setH_gallery_upload3(upload3.getBytes());
		setH_gallery_filename3(upload3.getOriginalFilename());
	}
	public MultipartFile getUpload4() {
		return upload4;
	}
	public void setUpload4(MultipartFile upload4) throws IOException{
		this.upload4 = upload4;
		
		setH_gallery_upload4(upload4.getBytes());
		setH_gallery_filename4(upload4.getOriginalFilename());
	}
	public MultipartFile getUpload5() {
		return upload5;
	}
	public void setUpload5(MultipartFile upload5) throws IOException{
		this.upload5 = upload5;
		
		setH_gallery_upload5(upload5.getBytes());
		setH_gallery_filename5(upload5.getOriginalFilename());
	}
	public MultipartFile getUpload6() {
		return upload6;
	}
	public void setUpload6(MultipartFile upload6) throws IOException{
		this.upload6 = upload6;
		
		setH_gallery_upload6(upload6.getBytes());
		setH_gallery_filename6(upload6.getOriginalFilename());
	}
	public MultipartFile getUpload7() {
		return upload7;
	}
	public void setUpload7(MultipartFile upload7) throws IOException{
		this.upload7 = upload7;
		
		setH_gallery_upload7(upload7.getBytes());
		setH_gallery_filename7(upload7.getOriginalFilename());
	}
	public MultipartFile getUpload8() {
		return upload8;
	}
	public void setUpload8(MultipartFile upload8) throws IOException{
		this.upload8 = upload8;
		
		setH_gallery_upload8(upload8.getBytes());
		setH_gallery_filename8(upload8.getOriginalFilename());
	}
	public MultipartFile getUpload9() {
		return upload9;
	}
	public void setUpload9(MultipartFile upload9) throws IOException{
		this.upload9 = upload9;
		
		setH_gallery_upload9(upload9.getBytes());
		setH_gallery_filename9(upload9.getOriginalFilename());
	}
	public MultipartFile getUpload10() {
		return upload10;
	}
	public void setUpload10(MultipartFile upload10) throws IOException{
		this.upload10 = upload10;
		
		setH_gallery_upload10(upload10.getBytes());
		setH_gallery_filename10(upload10.getOriginalFilename());
	}
	public MultipartFile getUpload11() {
		return upload11;
	}
	public void setUpload11(MultipartFile upload11) throws IOException{
		this.upload11 = upload11;
		
		setH_gallery_upload11(upload11.getBytes());
		setH_gallery_filename11(upload11.getOriginalFilename());
	}
	public MultipartFile getUpload12() {
		return upload12;
	}
	public void setUpload12(MultipartFile upload12) throws IOException{
		this.upload12 = upload12;
		
		setH_gallery_upload12(upload12.getBytes());
		setH_gallery_filename12(upload12.getOriginalFilename());
	}
	public byte[] getH_gallery_upload1() {
		return h_gallery_upload1;
	}
	public void setH_gallery_upload1(byte[] h_gallery_upload1) {
		this.h_gallery_upload1 = h_gallery_upload1;
	}
	public byte[] getH_gallery_upload2() {
		return h_gallery_upload2;
	}
	public void setH_gallery_upload2(byte[] h_gallery_upload2) {
		this.h_gallery_upload2 = h_gallery_upload2;
	}
	public byte[] getH_gallery_upload3() {
		return h_gallery_upload3;
	}
	public void setH_gallery_upload3(byte[] h_gallery_upload3) {
		this.h_gallery_upload3 = h_gallery_upload3;
	}
	public byte[] getH_gallery_upload4() {
		return h_gallery_upload4;
	}
	public void setH_gallery_upload4(byte[] h_gallery_upload4) {
		this.h_gallery_upload4 = h_gallery_upload4;
	}
	public byte[] getH_gallery_upload5() {
		return h_gallery_upload5;
	}
	public void setH_gallery_upload5(byte[] h_gallery_upload5) {
		this.h_gallery_upload5 = h_gallery_upload5;
	}
	public byte[] getH_gallery_upload6() {
		return h_gallery_upload6;
	}
	public void setH_gallery_upload6(byte[] h_gallery_upload6) {
		this.h_gallery_upload6 = h_gallery_upload6;
	}
	public byte[] getH_gallery_upload7() {
		return h_gallery_upload7;
	}
	public void setH_gallery_upload7(byte[] h_gallery_upload7) {
		this.h_gallery_upload7 = h_gallery_upload7;
	}
	public byte[] getH_gallery_upload8() {
		return h_gallery_upload8;
	}
	public void setH_gallery_upload8(byte[] h_gallery_upload8) {
		this.h_gallery_upload8 = h_gallery_upload8;
	}
	public byte[] getH_gallery_upload9() {
		return h_gallery_upload9;
	}
	public void setH_gallery_upload9(byte[] h_gallery_upload9) {
		this.h_gallery_upload9 = h_gallery_upload9;
	}
	public byte[] getH_gallery_upload10() {
		return h_gallery_upload10;
	}
	public void setH_gallery_upload10(byte[] h_gallery_upload10) {
		this.h_gallery_upload10 = h_gallery_upload10;
	}
	public byte[] getH_gallery_upload11() {
		return h_gallery_upload11;
	}
	public void setH_gallery_upload11(byte[] h_gallery_upload11) {
		this.h_gallery_upload11 = h_gallery_upload11;
	}
	public byte[] getH_gallery_upload12() {
		return h_gallery_upload12;
	}
	public void setH_gallery_upload12(byte[] h_gallery_upload12) {
		this.h_gallery_upload12 = h_gallery_upload12;
	}
	public String getH_gallery_subject() {
		return h_gallery_subject;
	}
	public void setH_gallery_subject(String h_gallery_subject) {
		this.h_gallery_subject = h_gallery_subject;
	}
	public String getH_gallery_content() {
		return h_gallery_content;
	}
	public void setH_gallery_content(String h_gallery_content) {
		this.h_gallery_content = h_gallery_content;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	@Override
	public String toString() {
		return "GalleryCommand [h_gallery_seq=" + h_gallery_seq + ", h_gallery_type=" + h_gallery_type
				+ ", h_gallery_filename1=" + h_gallery_filename1 + ", h_gallery_filename2=" + h_gallery_filename2
				+ ", h_gallery_filename3=" + h_gallery_filename3 + ", h_gallery_filename4=" + h_gallery_filename4
				+ ", h_gallery_filename5=" + h_gallery_filename5 + ", h_gallery_filename6=" + h_gallery_filename6
				+ ", h_gallery_filename7=" + h_gallery_filename7 + ", h_gallery_filename8=" + h_gallery_filename8
				+ ", h_gallery_filename9=" + h_gallery_filename9 + ", h_gallery_filename10=" + h_gallery_filename10
				+ ", h_gallery_filename11=" + h_gallery_filename11 + ", h_gallery_filename12=" + h_gallery_filename12
				+ ", upload1=" + upload1 + ", upload2=" + upload2 + ", upload3=" + upload3 + ", upload4=" + upload4
				+ ", upload5=" + upload5 + ", upload6=" + upload6 + ", upload7=" + upload7 + ", upload8=" + upload8
				+ ", upload9=" + upload9 + ", upload10=" + upload10 + ", upload11=" + upload11 + ", upload12="
				+ upload12 + ", h_gallery_subject=" + h_gallery_subject + ", h_gallery_content=" + h_gallery_content
				+ ", mem_id=" + mem_id + "]";
	}
	
	
}
