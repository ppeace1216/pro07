package kr.go.rda.dto;

import lombok.Data;

@Data
public class NoticeDTO {
	private int no;
	private String title;
	private String content;
	private String postdate;
	private int view;
}
