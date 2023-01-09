package kr.go.rda.dto;

import lombok.Data;

@Data
public class UserDTO {
	private String id;
	private String pw;
	private String name;
	private int birth;
	private String tel;
	private String email;
	private String regdate;
}
