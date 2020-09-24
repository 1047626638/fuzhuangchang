package com.study.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.ssm.dao.IYuanGong;
import com.study.ssm.entity.YuanGong;

@Service
public class YuanGongService {
	@Autowired
	private IYuanGong ygService;
	public List<YuanGong> selectAll(){
		return ygService.selectAll();
	}
	public List<YuanGong> selectYuanGongById(Integer eid){
		List<YuanGong> yg = ygService.selectYuanGongById(eid);
		return yg;
	}
	public boolean deleteYuanGong(Integer eid){
		return ygService.deleteYuanGong(eid);
	}
	public boolean updateYuanGong(YuanGong yg){
		return ygService.updateYuganGong(yg);
	}
}
