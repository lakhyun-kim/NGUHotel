package kr.hotel.domain;

import java.io.IOException;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class DiningCommand {

	
	private int seq;
	@NotEmpty
	private String din_title;
	@NotEmpty
	private String din_subtitle;
	private int din_class;
	@NotEmpty
	private String din_loc;
	@NotEmpty
	private String din_phone;
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
	
	private byte[] din_uf1;
	@NotEmpty
	private String din_fn1;
	@NotEmpty
	private String din_time1;
	@NotEmpty
	private String din_time2;
	
	private int din_seat;
	
	private byte[] din_uf2;
	@NotEmpty
	private String din_fn2;
	
	private byte[] din_uf3;
	@NotEmpty
	private String din_fn3;
	@NotEmpty
	private String mem_id;
	
	private byte[] din_uf4;
	@NotEmpty
	private String din_fn4;
	
	private byte[] din_uf5;
	@NotEmpty
	private String din_fn5;
	
	private byte[] din_uf6;
	@NotEmpty
	private String din_fn6;
	
	private byte[] din_uf7;
	@NotEmpty
	private String din_fn7;
	
	private byte[] din_uf8;
	@NotEmpty
	private String din_fn8;
	
	private byte[] din_uf9;
	@NotEmpty
	private String din_fn9;
	
	private byte[] din_uf10;
	@NotEmpty
	private String din_fn10;
	
	private byte[] din_uf11;
	@NotEmpty
	private String din_fn11;
	
	public void setUpload1(MultipartFile upload1) throws IOException {
		this.upload1 = upload1;
		
		setDin_uf1(upload1.getBytes());
		setDin_fn1(upload1.getOriginalFilename());
		
	}
	
	public void setUpload2(MultipartFile upload2) throws IOException {
		this.upload2 = upload2;
		
		setDin_uf2(upload2.getBytes());
		setDin_fn2(upload2.getOriginalFilename());
		
	}
	
	public void setUpload3(MultipartFile upload3) throws IOException {
		this.upload3 = upload3;
		
		setDin_uf3(upload3.getBytes());
		setDin_fn3(upload3.getOriginalFilename());
		
	}
	
	public void setUpload4(MultipartFile upload4) throws IOException {
		this.upload4 = upload4;
		
		setDin_uf4(upload4.getBytes());
		setDin_fn4(upload4.getOriginalFilename());
		
	}
	
	public void setUpload5(MultipartFile upload5) throws IOException {
		this.upload5 = upload5;
		
		setDin_uf5(upload5.getBytes());
		setDin_fn5(upload5.getOriginalFilename());
		
	}
	
	public void setUpload6(MultipartFile upload6) throws IOException {
		this.upload6 = upload6;
		
		setDin_uf6(upload6.getBytes());
		setDin_fn6(upload6.getOriginalFilename());
		
	}
	
	public void setUpload7(MultipartFile upload7) throws IOException {
		this.upload7 = upload7;
		
		setDin_uf7(upload7.getBytes());
		setDin_fn7(upload7.getOriginalFilename());
		
	}
	
	public void setUpload8(MultipartFile upload8) throws IOException {
		this.upload8 = upload8;
		
		setDin_uf8(upload8.getBytes());
		setDin_fn8(upload8.getOriginalFilename());
		
	}
	
	public void setUpload9(MultipartFile upload9) throws IOException {
		this.upload9 = upload9;
		
		setDin_uf9(upload9.getBytes());
		setDin_fn9(upload9.getOriginalFilename());
		
	}
	
	public void setUpload10(MultipartFile upload10) throws IOException {
		this.upload10 = upload10;
		
		setDin_uf10(upload10.getBytes());
		setDin_fn10(upload10.getOriginalFilename());
		
	}
	
	public void setUpload11(MultipartFile upload11) throws IOException {
		this.upload11 = upload11;
		
		setDin_uf11(upload11.getBytes());
		setDin_fn11(upload11.getOriginalFilename());
		
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getDin_title() {
		return din_title;
	}

	public void setDin_title(String din_title) {
		this.din_title = din_title;
	}

	public String getDin_subtitle() {
		return din_subtitle;
	}

	public void setDin_subtitle(String din_subtitle) {
		this.din_subtitle = din_subtitle;
	}

	public int getDin_class() {
		return din_class;
	}

	public void setDin_class(int din_class) {
		this.din_class = din_class;
	}

	public String getDin_loc() {
		return din_loc;
	}

	public void setDin_loc(String din_loc) {
		this.din_loc = din_loc;
	}

	public String getDin_phone() {
		return din_phone;
	}

	public void setDin_phone(String din_phone) {
		this.din_phone = din_phone;
	}

	public byte[] getDin_uf1() {
		return din_uf1;
	}

	public void setDin_uf1(byte[] din_uf1) {
		this.din_uf1 = din_uf1;
	}

	public String getDin_fn1() {
		return din_fn1;
	}

	public void setDin_fn1(String din_fn1) {
		this.din_fn1 = din_fn1;
	}

	public String getDin_time1() {
		return din_time1;
	}

	public void setDin_time1(String din_time1) {
		this.din_time1 = din_time1;
	}

	public String getDin_time2() {
		return din_time2;
	}

	public void setDin_time2(String din_time2) {
		this.din_time2 = din_time2;
	}

	public int getDin_seat() {
		return din_seat;
	}

	public void setDin_seat(int din_seat) {
		this.din_seat = din_seat;
	}

	public byte[] getDin_uf2() {
		return din_uf2;
	}

	public void setDin_uf2(byte[] din_uf2) {
		this.din_uf2 = din_uf2;
	}

	public String getDin_fn2() {
		return din_fn2;
	}

	public void setDin_fn2(String din_fn2) {
		this.din_fn2 = din_fn2;
	}

	public byte[] getDin_uf3() {
		return din_uf3;
	}

	public void setDin_uf3(byte[] din_uf3) {
		this.din_uf3 = din_uf3;
	}

	public byte[] getDin_uf4() {
		return din_uf4;
	}

	public void setDin_uf4(byte[] din_uf4) {
		this.din_uf4 = din_uf4;
	}

	public String getDin_fn4() {
		return din_fn4;
	}

	public void setDin_fn4(String din_fn4) {
		this.din_fn4 = din_fn4;
	}

	public byte[] getDin_uf5() {
		return din_uf5;
	}

	public void setDin_uf5(byte[] din_uf5) {
		this.din_uf5 = din_uf5;
	}

	public String getDin_fn5() {
		return din_fn5;
	}

	public void setDin_fn5(String din_fn5) {
		this.din_fn5 = din_fn5;
	}

	public byte[] getDin_uf6() {
		return din_uf6;
	}

	public void setDin_uf6(byte[] din_uf6) {
		this.din_uf6 = din_uf6;
	}

	public String getDin_fn6() {
		return din_fn6;
	}

	public void setDin_fn6(String din_fn6) {
		this.din_fn6 = din_fn6;
	}

	public byte[] getDin_uf7() {
		return din_uf7;
	}

	public void setDin_uf7(byte[] din_uf7) {
		this.din_uf7 = din_uf7;
	}

	public String getDin_fn7() {
		return din_fn7;
	}

	public void setDin_fn7(String din_fn7) {
		this.din_fn7 = din_fn7;
	}

	public byte[] getDin_uf8() {
		return din_uf8;
	}

	public void setDin_uf8(byte[] din_uf8) {
		this.din_uf8 = din_uf8;
	}

	public String getDin_fn8() {
		return din_fn8;
	}

	public void setDin_fn8(String din_fn8) {
		this.din_fn8 = din_fn8;
	}

	public byte[] getDin_uf9() {
		return din_uf9;
	}

	public void setDin_uf9(byte[] din_uf9) {
		this.din_uf9 = din_uf9;
	}

	public String getDin_fn9() {
		return din_fn9;
	}

	public void setDin_fn9(String din_fn9) {
		this.din_fn9 = din_fn9;
	}

	public byte[] getDin_uf10() {
		return din_uf10;
	}

	public void setDin_uf10(byte[] din_uf10) {
		this.din_uf10 = din_uf10;
	}

	public String getDin_fn10() {
		return din_fn10;
	}

	public void setDin_fn10(String din_fn10) {
		this.din_fn10 = din_fn10;
	}

	public byte[] getDin_uf11() {
		return din_uf11;
	}

	public void setDin_uf11(byte[] din_uf11) {
		this.din_uf11 = din_uf11;
	}

	public String getDin_fn11() {
		return din_fn11;
	}

	public void setDin_fn11(String din_fn11) {
		this.din_fn11 = din_fn11;
	}

	public String getDin_fn3() {
		return din_fn3;
	}

	public void setDin_fn3(String din_fn3) {
		this.din_fn3 = din_fn3;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public MultipartFile getUpload1() {
		return upload1;
	}

	public MultipartFile getUpload2() {
		return upload2;
	}

	public MultipartFile getUpload3() {
		return upload3;
	}

	public MultipartFile getUpload4() {
		return upload4;
	}

	public MultipartFile getUpload5() {
		return upload5;
	}

	public MultipartFile getUpload6() {
		return upload6;
	}

	public MultipartFile getUpload7() {
		return upload7;
	}

	public MultipartFile getUpload8() {
		return upload8;
	}

	public MultipartFile getUpload9() {
		return upload9;
	}

	public MultipartFile getUpload10() {
		return upload10;
	}

	public MultipartFile getUpload11() {
		return upload11;
	}

	
	

	

	
}
