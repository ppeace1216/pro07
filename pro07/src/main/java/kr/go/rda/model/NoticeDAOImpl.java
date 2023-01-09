package kr.go.rda.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.rda.dto.NoticeDTO;

@Repository
public class NoticeDAOImpl implements NoticeDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<NoticeDTO> noticeList() throws Exception {
		return sqlSession.selectList("notice.noticeList");
	}

	@Override
	public NoticeDTO noticeDetail(int no) throws Exception {
		sqlSession.update("notice.viewUp", no);
		return sqlSession.selectOne("notice.noticeDetail", no);
	}

	@Override
	public void noticeInsert(NoticeDTO noti) throws Exception {
		sqlSession.insert("notice.noticeInsert", noti);
		
	}

	@Override
	public void noticeDelete(int no) throws Exception {
		sqlSession.delete("notice.noticeDelete", no);
		
	}

	@Override
	public void noticeEdit(NoticeDTO noti) throws Exception {
		sqlSession.update("notice.noticeEdit", noti);
		
	}
	
}
