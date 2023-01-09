package kr.go.rda.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.rda.dto.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO{
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<UserDTO> userList() throws Exception {
		return sqlSession.selectList("user.userList");
	}

	@Override
	public UserDTO userDetail(String id) throws Exception {
		return sqlSession.selectOne("user.userDetail", id);
	}

	@Override
	public void joinUser(UserDTO user) throws Exception {
		sqlSession.insert("user.joinUser", user);
	}

	@Override
	public UserDTO login(UserDTO user) throws Exception {
		return sqlSession.selectOne("user.login", user);
	}

	@Override
	public void userUpdate(UserDTO user) throws Exception {
		sqlSession.update("user.userUpdate", user);
		
	}

	@Override
	public void userDelete(String id) throws Exception {
		sqlSession.delete("user.userDelete", id);
		
	}
	
	
}
