package com.study.ssm.dao;

import java.util.List;

import com.study.ssm.entity.Agent;
import com.study.ssm.entity.Commodity;



public interface ICommodity {
	List<Commodity> selectCommodityById(Integer cid);
	List<Commodity> selectAll();
	boolean  deleteCommodity(Integer cid);
	int insertCommodity(Commodity comm);
	boolean updateCommodity(Commodity comm);
}
