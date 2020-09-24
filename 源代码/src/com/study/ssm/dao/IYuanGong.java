package com.study.ssm.dao;

import java.util.List;

import com.study.ssm.entity.YuanGong;

public interface IYuanGong {
	List<YuanGong> selectAll();
	List<YuanGong> selectYuanGongById(Integer eid);
	boolean deleteYuanGong(Integer eid);
	boolean updateYuganGong(YuanGong yg);
}
