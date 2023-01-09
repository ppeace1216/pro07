package kr.go.rda.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.rda.dto.UserDTO;
import kr.go.rda.model.UserDAO;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDAO userDAO;
	
	
	@Override
	public List<UserDTO> userList() throws Exception {
		return userDAO.userList();
	}

	@Override
	public UserDTO userDetail(String id) throws Exception {
		return userDAO.userDetail(id);
	}

	@Override
	public void joinUser(UserDTO user) throws Exception {
		userDAO.joinUser(user);
		
	}

	@Override
	public UserDTO login(UserDTO user) throws Exception {
		return userDAO.login(user);
	}


	@Override
	public void userUpdate(UserDTO user) throws Exception {
		userDAO.userUpdate(user);
		
	}

	@Override
	public void userDelete(String id) throws Exception {
		userDAO.userDelete(id);
		
	}
		
}
