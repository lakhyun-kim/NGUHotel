package kr.hotel.domain;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class EventCommand {

	private int event_seq;
	private String event_price1;
	private String event_price2;
	private String event_date1;
	private String event_date2;
	private String event_division;
	private String event_subject;
	private String event_content1;
	private String event_content2;
	private String event_content3;
	private String event_content4;
	private String event_content5;
	
	private String event_filename1;
	private String event_filename2;
	private String event_filename3;
	private String event_filename4;
	private String event_filename5;

	private MultipartFile event_uploadfile1;
	private MultipartFile event_uploadfile2;
	private MultipartFile event_uploadfile3;
	private MultipartFile event_uploadfile4;
	private MultipartFile event_uploadfile5;
	
	private byte[] event_upload1;
	private byte[] event_upload2;
	private byte[] event_upload3;
	private byte[] event_upload4;
	private byte[] event_upload5;
	
	private String mem_id;

	public int getEvent_seq() {
		return event_seq;
	}

	public void setEvent_seq(int event_seq) {
		this.event_seq = event_seq;
	}

	public String getEvent_price1() {
		return event_price1;
	}

	public void setEvent_price1(String event_price1) {
		this.event_price1 = event_price1;
	}

	public String getEvent_price2() {
		return event_price2;
	}

	public void setEvent_price2(String event_price2) {
		this.event_price2 = event_price2;
	}

	public String getEvent_date1() {
		return event_date1;
	}

	public void setEvent_date1(String event_date1) {
		this.event_date1 = event_date1;
	}

	public String getEvent_date2() {
		return event_date2;
	}

	public void setEvent_date2(String event_date2) {
		this.event_date2 = event_date2;
	}

	public String getEvent_division() {
		return event_division;
	}

	public void setEvent_division(String event_division) {
		this.event_division = event_division;
	}

	public String getEvent_subject() {
		return event_subject;
	}

	public void setEvent_subject(String event_subject) {
		this.event_subject = event_subject;
	}

	public String getEvent_content1() {
		return event_content1;
	}

	public void setEvent_content1(String event_content1) {
		this.event_content1 = event_content1;
	}

	public String getEvent_content2() {
		return event_content2;
	}

	public void setEvent_content2(String event_content2) {
		this.event_content2 = event_content2;
	}

	public String getEvent_content3() {
		return event_content3;
	}

	public void setEvent_content3(String event_content3) {
		this.event_content3 = event_content3;
	}

	public String getEvent_content4() {
		return event_content4;
	}

	public void setEvent_content4(String event_content4) {
		this.event_content4 = event_content4;
	}

	public String getEvent_content5() {
		return event_content5;
	}

	public void setEvent_content5(String event_content5) {
		this.event_content5 = event_content5;
	}

	public String getEvent_filename1() {
		return event_filename1;
	}

	public void setEvent_filename1(String event_filename1) {
		this.event_filename1 = event_filename1;
	}

	public String getEvent_filename2() {
		return event_filename2;
	}

	public void setEvent_filename2(String event_filename2) {
		this.event_filename2 = event_filename2;
	}

	public String getEvent_filename3() {
		return event_filename3;
	}

	public void setEvent_filename3(String event_filename3) {
		this.event_filename3 = event_filename3;
	}

	public String getEvent_filename4() {
		return event_filename4;
	}

	public void setEvent_filename4(String event_filename4) {
		this.event_filename4 = event_filename4;
	}

	public String getEvent_filename5() {
		return event_filename5;
	}

	public void setEvent_filename5(String event_filename5) {
		this.event_filename5 = event_filename5;
	}

	public MultipartFile getEvent_uploadfile1() {
		return event_uploadfile1;
	}

	public void setEvent_uploadfile1(MultipartFile event_uploadfile1) throws IOException{
		this.event_uploadfile1 = event_uploadfile1;
		
		setEvent_upload1(event_uploadfile1.getBytes());
		setEvent_filename1(event_uploadfile1.getOriginalFilename());
	}

	public MultipartFile getEvent_uploadfile2() {
		return event_uploadfile2;
	}

	public void setEvent_uploadfile2(MultipartFile event_uploadfile2) throws IOException{
		this.event_uploadfile2 = event_uploadfile2;
		
		setEvent_upload2(event_uploadfile2.getBytes());
		setEvent_filename2(event_uploadfile2.getOriginalFilename());
	}

	public MultipartFile getEvent_uploadfile3() {
		return event_uploadfile3;
	}

	public void setEvent_uploadfile3(MultipartFile event_uploadfile3) throws IOException{
		this.event_uploadfile3 = event_uploadfile3;
		
		setEvent_upload3(event_uploadfile3.getBytes());
		setEvent_filename3(event_uploadfile3.getOriginalFilename());
	}

	public MultipartFile getEvent_uploadfile4() {
		return event_uploadfile4;
	}

	public void setEvent_uploadfile4(MultipartFile event_uploadfile4) throws IOException{
		this.event_uploadfile4 = event_uploadfile4;
		
		setEvent_upload4(event_uploadfile4.getBytes());
		setEvent_filename4(event_uploadfile4.getOriginalFilename());
	}

	public MultipartFile getEvent_uploadfile5() {
		return event_uploadfile5;
	}

	public void setEvent_uploadfile5(MultipartFile event_uploadfile5) throws IOException {
		this.event_uploadfile5 = event_uploadfile5;
		
		setEvent_upload5(event_uploadfile5.getBytes());
		setEvent_filename5(event_uploadfile5.getOriginalFilename());
	}

	public byte[] getEvent_upload1() {
		return event_upload1;
	}

	public void setEvent_upload1(byte[] event_upload1) {
		this.event_upload1 = event_upload1;
	}

	public byte[] getEvent_upload2() {
		return event_upload2;
	}

	public void setEvent_upload2(byte[] event_upload2) {
		this.event_upload2 = event_upload2;
	}

	public byte[] getEvent_upload3() {
		return event_upload3;
	}

	public void setEvent_upload3(byte[] event_upload3) {
		this.event_upload3 = event_upload3;
	}

	public byte[] getEvent_upload4() {
		return event_upload4;
	}

	public void setEvent_upload4(byte[] event_upload4) {
		this.event_upload4 = event_upload4;
	}

	public byte[] getEvent_upload5() {
		return event_upload5;
	}

	public void setEvent_upload5(byte[] event_upload5) {
		this.event_upload5 = event_upload5;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	@Override
	public String toString() {
		return "EventCommand [event_seq=" + event_seq + ", event_price1=" + event_price1 + ", event_price2="
				+ event_price2 + ", event_date1=" + event_date1 + ", event_date2=" + event_date2 + ", event_division="
				+ event_division + ", event_subject=" + event_subject + ", event_content1=" + event_content1
				+ ", event_content2=" + event_content2 + ", event_content3=" + event_content3 + ", event_content4="
				+ event_content4 + ", event_content5=" + event_content5 + ", event_filename1=" + event_filename1
				+ ", event_filename2=" + event_filename2 + ", event_filename3=" + event_filename3 + ", event_filename4="
				+ event_filename4 + ", event_filename5=" + event_filename5 + ", event_uploadfile1=" + event_uploadfile1
				+ ", event_uploadfile2=" + event_uploadfile2 + ", event_uploadfile3=" + event_uploadfile3
				+ ", event_uploadfile4=" + event_uploadfile4 + ", event_uploadfile5=" + event_uploadfile5 + ", mem_id="
				+ mem_id + "]";
	}
	
	
}
