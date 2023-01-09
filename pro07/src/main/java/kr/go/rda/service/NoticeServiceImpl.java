package kr.go.rda.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.rda.dto.NoticeDTO;
import kr.go.rda.model.NoticeDAO;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	NoticeDAO noticeDAO;

	@Override
	public List<NoticeDTO> noticeList() throws Exception {
		return noticeDAO.noticeList();
	}

	@Override
	public NoticeDTO noticeDetail(int no) throws Exception {
		return noticeDAO.noticeDetail(no);
	}

	@Override
	public void noticeInsert(NoticeDTO noti) throws Exception {
		noticeDAO.noticeInsert(noti);
	}

	@Override
	public void noticeDelete(int no) throws Exception {
		noticeDAO.noticeDelete(no);
	}

	@Override
	public void noticeEdit(NoticeDTO noti) throws Exception {
		noticeDAO.noticeEdit(noti);
	}
	
}
