package com.kh.dok.board.model.vo;

import org.springframework.stereotype.Repository;

@Repository
public class BoardFile implements java.io.Serializable{
	private String file_id;
	private String board_id;
	private String origin_name;
	private String edit_name;
	private String file_src;
	private String file_date;
	private String file_level;
	  
	public BoardFile(){}

	public BoardFile(String file_id, String board_id, String origin_name, String edit_name, String file_src,
			String file_date, String file_level) {
		super();
		this.file_id = file_id;
		this.board_id = board_id;
		this.origin_name = origin_name;
		this.edit_name = edit_name;
		this.file_src = file_src;
		this.file_date = file_date;
		this.file_level = file_level;
	}

	public BoardFile(String board_id, String origin_name, String edit_name, String file_src, String file_level) {
		super();
		this.board_id = board_id;
		this.origin_name = origin_name;
		this.edit_name = edit_name;
		this.file_src = file_src;
		this.file_level = file_level;
	}

	public String getFile_id() {
		return file_id;
	}

	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}

	public String getBoard_id() {
		return board_id;
	}

	public void setBoard_id(String board_id) {
		this.board_id = board_id;
	}

	public String getOrigin_name() {
		return origin_name;
	}

	public void setOrigin_name(String origin_name) {
		this.origin_name = origin_name;
	}

	public String getEdit_name() {
		return edit_name;
	}

	public void setEdit_name(String edit_name) {
		this.edit_name = edit_name;
	}

	public String getFile_src() {
		return file_src;
	}

	public void setFile_src(String file_src) {
		this.file_src = file_src;
	}

	public String getFile_date() {
		return file_date;
	}

	public void setFile_date(String file_date) {
		this.file_date = file_date;
	}

	public String getFile_level() {
		return file_level;
	}

	public void setFile_level(String file_level) {
		this.file_level = file_level;
	}

	@Override
	public String toString() {
		return "BoardFile [file_id=" + file_id + ", board_id=" + board_id + ", origin_name=" + origin_name
				+ ", edit_name=" + edit_name + ", file_src=" + file_src + ", file_date=" + file_date + ", file_level="
				+ file_level + "]";
	}
	
	
}
