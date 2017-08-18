package kr.hotel.domain;

import java.io.IOException;
import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class GuestCommand {
	
	private String mem_id;
	private int auth;	
	private int gue_num;
	private String gue_filename;
	private String gue_ltopfilename;
	private String gue_lbotfilename;
	private String gue_rtopfilename;
	private String gue_rbotfilename;
	private byte[] gue_uploadfile;
	private byte[] gue_ltopfile;
	private byte[] gue_lbotfile;
	private byte[] gue_rtopfile;
	private byte[] gue_rbotfile;
	@NotEmpty
	private String gue_title;
	@NotEmpty
	private String gue_stitle;
	@NotEmpty
	private String gue_type;
	@NotEmpty
	private String gue_size;
	private Date gue_date;
	private int gue_sel;
	private MultipartFile gue_upload;
	private MultipartFile gue_ltop;
	private MultipartFile gue_lbot;
	private MultipartFile gue_rtop;
	private MultipartFile gue_rbot;
	private String sli_fname1;
	private String sli_fname2;
	private String sli_fname3;
	private String sli_fname4;
	private String sli_thname1;
	private String sli_thname2;
	private String sli_thname3;
	private String sli_thname4;
	private byte[] sli_file1;
	private byte[] sli_file2;
	private byte[] sli_file3;
	private byte[] sli_file4;
	private byte[] thum_file1;
	private byte[] thum_file2;
	private byte[] thum_file3;
	private byte[] thum_file4;
	private MultipartFile sli_upfile1;
	private MultipartFile sli_upfile2;
	private MultipartFile sli_upfile3;
	private MultipartFile sli_upfile4;
	private MultipartFile thum_upfile1;
	private MultipartFile thum_upfile2;
	private MultipartFile thum_upfile3;
	private MultipartFile thum_upfile4;
	
	public void setGue_upload(MultipartFile gue_upload) throws IOException{
		this.gue_upload = gue_upload;
		
		setGue_uploadfile(gue_upload.getBytes());
		setGue_filename(gue_upload.getOriginalFilename());
	}
	public void setGue_ltop(MultipartFile gue_ltop) throws IOException{
		this.gue_ltop = gue_ltop;
		
		setGue_ltopfile(gue_ltop.getBytes());
		setGue_ltopfilename(gue_ltop.getOriginalFilename());
	}
	public void setGue_lbot(MultipartFile gue_lbot) throws IOException{
		this.gue_lbot = gue_lbot;
		
		setGue_lbotfile(gue_lbot.getBytes());
		setGue_lbotfilename(gue_lbot.getOriginalFilename());
	}
	public void setGue_rtop(MultipartFile gue_rtop) throws IOException{
		this.gue_rtop = gue_rtop;
		
		setGue_rtopfile(gue_rtop.getBytes());
		setGue_rtopfilename(gue_rtop.getOriginalFilename());
	}
	public void setGue_rbot(MultipartFile gue_rbot) throws IOException{
		this.gue_rbot = gue_rbot;
		
		setGue_rbotfile(gue_rbot.getBytes());
		setGue_rbotfilename(gue_rbot.getOriginalFilename());
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
	public int getGue_num() {
		return gue_num;
	}
	public void setGue_num(int gue_num) {
		this.gue_num = gue_num;
	}
	public String getGue_filename() {
		return gue_filename;
	}
	public void setGue_filename(String gue_filename) {
		this.gue_filename = gue_filename;
	}
	public MultipartFile getGue_upload() {
		return gue_upload;
	}
	public byte[] getGue_uploadfile() {
		return gue_uploadfile;
	}
	public void setGue_uploadfile(byte[] gue_uploadfile) {
		this.gue_uploadfile = gue_uploadfile;
	}
	public String getGue_title() {
		return gue_title;
	}
	public void setGue_title(String gue_title) {
		this.gue_title = gue_title;
	}
	public String getGue_stitle() {
		return gue_stitle;
	}
	public void setGue_stitle(String gue_stitle) {
		this.gue_stitle = gue_stitle;
	}
	public String getGue_type() {
		return gue_type;
	}
	public void setGue_type(String gue_type) {
		this.gue_type = gue_type;
	}
	public String getGue_size() {
		return gue_size;
	}
	public void setGue_size(String gue_size) {
		this.gue_size = gue_size;
	}
	public Date getGue_date() {
		return gue_date;
	}
	public void setGue_date(Date gue_date) {
		this.gue_date = gue_date;
	}
	public int getGue_sel() {
		return gue_sel;
	}
	public void setGue_sel(int gue_sel) {
		this.gue_sel = gue_sel;
	}
	public MultipartFile getGue_ltop() {
		return gue_ltop;
	}
	public MultipartFile getGue_lbot() {
		return gue_lbot;
	}
	public MultipartFile getGue_rtop() {
		return gue_rtop;
	}
	public MultipartFile getGue_rbot() {
		return gue_rbot;
	}
	public String getGue_ltopfilename() {
		return gue_ltopfilename;
	}
	public void setGue_ltopfilename(String gue_ltopfilename) {
		this.gue_ltopfilename = gue_ltopfilename;
	}
	public String getGue_lbotfilename() {
		return gue_lbotfilename;
	}
	public void setGue_lbotfilename(String gue_lbotfilename) {
		this.gue_lbotfilename = gue_lbotfilename;
	}
	public String getGue_rtopfilename() {
		return gue_rtopfilename;
	}
	public void setGue_rtopfilename(String gue_rtopfilename) {
		this.gue_rtopfilename = gue_rtopfilename;
	}
	public String getGue_rbotfilename() {
		return gue_rbotfilename;
	}
	public void setGue_rbotfilename(String gue_rbotfilename) {
		this.gue_rbotfilename = gue_rbotfilename;
	}
	public byte[] getGue_ltopfile() {
		return gue_ltopfile;
	}
	public void setGue_ltopfile(byte[] gue_ltopfile) {
		this.gue_ltopfile = gue_ltopfile;
	}
	public byte[] getGue_lbotfile() {
		return gue_lbotfile;
	}
	public void setGue_lbotfile(byte[] gue_lbotfile) {
		this.gue_lbotfile = gue_lbotfile;
	}
	public byte[] getGue_rtopfile() {
		return gue_rtopfile;
	}
	public void setGue_rtopfile(byte[] gue_rtopfile) {
		this.gue_rtopfile = gue_rtopfile;
	}
	public byte[] getGue_rbotfile() {
		return gue_rbotfile;
	}
	public void setGue_rbotfile(byte[] gue_rbotfile) {
		this.gue_rbotfile = gue_rbotfile;
	}
	public void setSli_upfile1(MultipartFile sli_upfile1) throws IOException {
		this.sli_upfile1 = sli_upfile1;
		
		setSli_file1(sli_upfile1.getBytes());
		setSli_fname1(sli_upfile1.getOriginalFilename());
	}

	public void setSli_upfile2(MultipartFile sli_upfile2) throws IOException {
		this.sli_upfile2 = sli_upfile2;
		
		setSli_file2(sli_upfile2.getBytes());
		setSli_fname2(sli_upfile2.getOriginalFilename());
	}

	public void setSli_upfile3(MultipartFile sli_upfile3) throws IOException {
		this.sli_upfile3 = sli_upfile3;
		
		setSli_file3(sli_upfile3.getBytes());
		setSli_fname3(sli_upfile3.getOriginalFilename());
	}

	public void setSli_upfile4(MultipartFile sli_upfile4) throws IOException {
		this.sli_upfile4 = sli_upfile4;
		
		setSli_file4(sli_upfile4.getBytes());
		setSli_fname4(sli_upfile4.getOriginalFilename());
	}

	public void setThum_upfile1(MultipartFile thum_upfile1) throws IOException {
		this.thum_upfile1 = thum_upfile1;
		
		setThum_file1(thum_upfile1.getBytes());
		setSli_thname1(thum_upfile1.getOriginalFilename());
	}

	public void setThum_upfile2(MultipartFile thum_upfile2) throws IOException {
		this.thum_upfile2 = thum_upfile2;
		
		setThum_file2(thum_upfile2.getBytes());
		setSli_thname2(thum_upfile2.getOriginalFilename());
	}

	public void setThum_upfile3(MultipartFile thum_upfile3) throws IOException {
		this.thum_upfile3 = thum_upfile3;
		
		setThum_file3(thum_upfile3.getBytes());
		setSli_thname3(thum_upfile3.getOriginalFilename());
	}

	public void setThum_upfile4(MultipartFile thum_upfile4) throws IOException {
		this.thum_upfile4 = thum_upfile4;
		
		setThum_file4(thum_upfile4.getBytes());
		setSli_thname4(thum_upfile4.getOriginalFilename());
	}
	
	public String getSli_fname1() {
		return sli_fname1;
	}

	public void setSli_fname1(String sli_fname1) {
		this.sli_fname1 = sli_fname1;
	}

	public String getSli_fname2() {
		return sli_fname2;
	}

	public void setSli_fname2(String sli_fname2) {
		this.sli_fname2 = sli_fname2;
	}

	public String getSli_fname3() {
		return sli_fname3;
	}

	public void setSli_fname3(String sli_fname3) {
		this.sli_fname3 = sli_fname3;
	}

	public String getSli_fname4() {
		return sli_fname4;
	}

	public void setSli_fname4(String sli_fname4) {
		this.sli_fname4 = sli_fname4;
	}

	public String getSli_thname1() {
		return sli_thname1;
	}

	public void setSli_thname1(String sli_thname1) {
		this.sli_thname1 = sli_thname1;
	}

	public String getSli_thname2() {
		return sli_thname2;
	}

	public void setSli_thname2(String sli_thname2) {
		this.sli_thname2 = sli_thname2;
	}

	public String getSli_thname3() {
		return sli_thname3;
	}

	public void setSli_thname3(String sli_thname3) {
		this.sli_thname3 = sli_thname3;
	}

	public String getSli_thname4() {
		return sli_thname4;
	}

	public void setSli_thname4(String sli_thname4) {
		this.sli_thname4 = sli_thname4;
	}

	public byte[] getSli_file1() {
		return sli_file1;
	}

	public void setSli_file1(byte[] sli_file1) {
		this.sli_file1 = sli_file1;
	}

	public byte[] getSli_file2() {
		return sli_file2;
	}

	public void setSli_file2(byte[] sli_file2) {
		this.sli_file2 = sli_file2;
	}

	public byte[] getSli_file3() {
		return sli_file3;
	}

	public void setSli_file3(byte[] sli_file3) {
		this.sli_file3 = sli_file3;
	}

	public byte[] getSli_file4() {
		return sli_file4;
	}

	public void setSli_file4(byte[] sli_file4) {
		this.sli_file4 = sli_file4;
	}

	public byte[] getThum_file1() {
		return thum_file1;
	}

	public void setThum_file1(byte[] thum_file1) {
		this.thum_file1 = thum_file1;
	}

	public byte[] getThum_file2() {
		return thum_file2;
	}

	public void setThum_file2(byte[] thum_file2) {
		this.thum_file2 = thum_file2;
	}

	public byte[] getThum_file3() {
		return thum_file3;
	}

	public void setThum_file3(byte[] thum_file3) {
		this.thum_file3 = thum_file3;
	}

	public byte[] getThum_file4() {
		return thum_file4;
	}

	public void setThum_file4(byte[] thum_file4) {
		this.thum_file4 = thum_file4;
	}

	public MultipartFile getSli_upfile1() {
		return sli_upfile1;
	}

	public MultipartFile getSli_upfile2() {
		return sli_upfile2;
	}

	public MultipartFile getSli_upfile3() {
		return sli_upfile3;
	}

	public MultipartFile getSli_upfile4() {
		return sli_upfile4;
	}

	public MultipartFile getThum_upfile1() {
		return thum_upfile1;
	}

	public MultipartFile getThum_upfile2() {
		return thum_upfile2;
	}

	public MultipartFile getThum_upfile3() {
		return thum_upfile3;
	}

	public MultipartFile getThum_upfile4() {
		return thum_upfile4;
	}
	@Override
	public String toString() {
		return "GuestCommand [mem_id=" + mem_id + ", auth=" + auth + ", gue_num=" + gue_num + ", gue_filename="
				+ gue_filename + ", gue_ltopfilename=" + gue_ltopfilename + ", gue_lbotfilename=" + gue_lbotfilename
				+ ", gue_rtopfilename=" + gue_rtopfilename + ", gue_rbotfilename=" + gue_rbotfilename + ", gue_title="
				+ gue_title + ", gue_stitle=" + gue_stitle + ", gue_type=" + gue_type + ", gue_size=" + gue_size
				+ ", gue_date=" + gue_date + ", gue_sel=" + gue_sel + ", gue_upload=" + gue_upload + ", gue_ltop="
				+ gue_ltop + ", gue_lbot=" + gue_lbot + ", gue_rtop=" + gue_rtop + ", gue_rbot=" + gue_rbot
				+ ", sli_fname1=" + sli_fname1 + ", sli_fname2=" + sli_fname2 + ", sli_fname3=" + sli_fname3
				+ ", sli_fname4=" + sli_fname4 + ", sli_thname1=" + sli_thname1 + ", sli_thname2=" + sli_thname2
				+ ", sli_thname3=" + sli_thname3 + ", sli_thname4=" + sli_thname4 + ", sli_upfile1=" + sli_upfile1
				+ ", sli_upfile2=" + sli_upfile2 + ", sli_upfile3=" + sli_upfile3 + ", sli_upfile4=" + sli_upfile4
				+ ", thum_upfile1=" + thum_upfile1 + ", thum_upfile2=" + thum_upfile2 + ", thum_upfile3=" + thum_upfile3
				+ ", thum_upfile4=" + thum_upfile4 + "]";
	}
}













