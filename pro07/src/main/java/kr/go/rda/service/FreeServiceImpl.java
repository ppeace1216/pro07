package kr.go.rda.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.rda.dto.FreeDTO;
import kr.go.rda.model.FreeDAO;

@Service
public class FreeServiceImpl implements FreeService{
	@Autowired
	FreeDAO freeDao;

	@Override
	public List<FreeDTO> freeList() throws Exception {
		return freeDao.freeList();
	}

	@Override
	public FreeDTO freeDetail(int fno) throws Exception {
		return freeDao.freeDetail(fno);
	}

	@Override
	public void freeInsert(FreeDTO dto) throws Exception {
		freeDao.freeInsert(dto);
		
	}

	@Override
	public void freeDelete(int fno) throws Exception {
		freeDao.freeDelete(fno);
		
	}

	@Override
	public void freeEdit(FreeDTO dto) throws Exception {
		freeDao.freeEdit(dto);
		
	}
	
}
