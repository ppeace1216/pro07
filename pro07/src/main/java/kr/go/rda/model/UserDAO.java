package kr.go.rda.model;

import java.util.List;

import kr.go.rda.dto.UserDTO;

public interface UserDAO {
	public List<UserDTO> userList() throws Exception;
	public UserDTO userDetail(String id) throws Exception;
	public void joinUser(UserDTO user) throws Exception;
	public UserDTO login(UserDTO user) throws Exception;
	public void userUpdate(UserDTO user) throws Exception;
	public void userDelete(String id) throws Exception;
}