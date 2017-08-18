package kr.hotel.domain;

public class GueststoreCommand {
	
	private int gue_num;
	private String gue_title;
	private String gue_type;
	private String gue_size;
	private int gue_sel;
	
	public int getGue_num() {
		return gue_num;
	}
	public void setGue_num(int gue_num) {
		this.gue_num = gue_num;
	}
	public String getGue_title() {
		return gue_title;
	}
	public void setGue_title(String gue_title) {
		this.gue_title = gue_title;
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
	public int getGue_sel() {
		return gue_sel;
	}
	public void setGue_sel(int gue_sel) {
		this.gue_sel = gue_sel;
	}
	
	@Override
	public String toString() {
		return "GueststoreCommand [gue_num=" + gue_num + ", gue_title=" + gue_title + ", gue_type=" + gue_type + ", gue_size="
				+ gue_size + ", gue_sel=" + gue_sel + "]";
	}
	

	
}
