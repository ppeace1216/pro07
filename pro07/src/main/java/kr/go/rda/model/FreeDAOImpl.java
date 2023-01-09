package kr.go.rda.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.rda.dto.FreeDTO;

@Repository
public class FreeDAOImpl implements FreeDAO{

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<FreeDTO> freeList() throws Exception {
		return sqlSession.selectList("free.freeList");
	}

	@Override
	public FreeDTO freeDetail(int fno) throws Exception {
		sqlSession.update("free.countUp", fno);
		return sqlSession.selectOne("free.freeDetail", fno);
	}

	@Override
	public void freeInsert(FreeDTO dto) throws Exception {
		sqlSession.insert("free.freeInsert", dto);
	}

	@Override
	public void freeDelete(int fno) throws Exception {
		sqlSession.delete("free.freeDelete", fno);
	}

	@Override
	public void freeEdit(FreeDTO dto) throws Exception {
		sqlSession.update("free.freeEdit", dto);
	}
	
}
