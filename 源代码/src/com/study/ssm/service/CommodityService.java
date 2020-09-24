package com.study.ssm.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.ssm.dao.ICommodity;
import com.study.ssm.entity.Agent;
import com.study.ssm.entity.Commodity;

@Service
public class CommodityService {
	@Autowired
	private ICommodity userMapper;
	public List<Commodity> getCommodityList(){
		Map params = new HashMap<>();//封装查询信息
		return userMapper.selectAll();//依赖Mapper完成数据查询并返回
	}
	public List<Commodity> selectCommodityById(Integer cid){
		List<Commodity> comm = userMapper.selectCommodityById(cid);
		return comm;
	}
	public boolean deleteCommodity(int cid){
		return userMapper.deleteCommodity(cid);
	}
	public Commodity addCommodity(Commodity comm){
		userMapper.insertCommodity(comm);
		return comm;
	}
	public boolean updateCommodity(Commodity comm){
		return userMapper.updateCommodity(comm);
	}
}
