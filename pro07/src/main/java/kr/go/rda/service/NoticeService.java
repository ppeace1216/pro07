package kr.go.rda.service;

import java.util.List;

import kr.go.rda.dto.NoticeDTO;

public interface NoticeService {
	public List<NoticeDTO> noticeList() throws Exception;
	public NoticeDTO noticeDetail(int no) throws Exception;
	public void noticeInsert(NoticeDTO noti) throws Exception;
	public void noticeDelete(int no) throws Exception;
	public void noticeEdit(NoticeDTO noti) throws Exception;
}
